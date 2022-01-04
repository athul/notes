---
title: "Open URL from Terminal"
tags: ["terminal", "go"]
summary: "Opening a URL in Browser from Terminal"
---

For Opening URLs from Terminal in Mac, Linux and Windows. Got it from [This File](https://github.com/hookdeck/hookdeck-cli/blob/master/pkg/open/open.go).

```shell
# Mac
$ open <url>

#Linux
$ xdg-open <url>

# Windows
$ rundll32 url.dll,FileProtocolHandler <url>
```

In [[golang]] this is

```go
switch runtime.GOOS {
	case "linux":
		err = execCommand("xdg-open", url).Start()
	case "windows":
		err = execCommand("rundll32", "url.dll,FileProtocolHandler", url).Start()
	case "darwin":
		err = execCommand("open", url).Start()
	default:
		err = fmt.Errorf("unsupported platform")
}
```
