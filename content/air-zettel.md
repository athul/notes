---
date: "2020-10-12T10:52:17+05:30"
title: "Config for Zettel local dev with Air"
tags: ["code"]
---

[Air](https://github.com/cosmtrek/air) is a **live reloading** solution for [[golang]] applications. It is easy to set up and configure. Here is my config for running zettel for writing notes and developing them.

---

Air requires a `.go` file for running. I run an HTTP server with `net/http` package of Go.

```go

// run.go
package main

import (
	"log"
	"net/http"
)

func main() {
	fs := http.FileServer(http.Dir("./dist"))
	http.Handle("/notes/", http.StripPrefix("/notes/", fs))

	log.Println("Listening on http://localhost:8080/notes ...")
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		log.Fatal(err)
	}
}

```

Here I'm appending the a `notes` to the URL since it's my sitePrefix in `zettel.toml` file. This becomes easier for me to build and check on the Go. Air also need a `config` file to be used in full potential. It's named `.air.toml`.

```toml
root = "."
tmp_dir = "tmp"

[build]
cmd = "zettel build&&go build -o ./tmp/main ."
bin = "tmp/main"
include_ext = ["go", "tpl", "tmpl", "md", "toml"]
exclude_dir = ["assets", "tmp", "vendor", "frontend/node_modules"]
include_dir = ["content"]
```

You need to pass this config file to air before executing air and you can do that with a `-c` flag.

```shell
$ air -c .air.toml

  __    _   ___  
 / /\  | | | |_) 
/_/--\ |_| |_| \_ v1.12.1 // live reload for Go apps, with Go1.14.0

watching content
!exclude dist
!exclude tags
!exclude tmp
building...
DEBU[2020-10-12T11:30:06+05:30] verbose logging enabled
INFO[2020-10-12T11:30:06+05:30] Starting zettel...🚀
2020/10/12 11:30:06 reading config: zettel.toml
running...
2020/10/12 11:30:07 Listening on http://localhost:8080/notes ...
```

I place both the files in the root of my directory. Like this

```text
.
├── "tags"
├── ".gitignore"
├── "zettel.toml"
├── "README.md"
├── "run.go"
├── "content"
│   ├── "1.md"
│   ├── "2.md"
│   └── "3.md"
└── ".air.toml"

```
