---
date: "2020-10-08T20:40:38+05:30"
title: "Go"
tags: ["go"]
summary: "Basic Go Programming details. With a notch of Running and Stuff"
---

- Building `go build <file>.go`
- Running `go run <filename>`

---
Now that we understand how to compile and run Go programs, let’s take a detailed look at the structure of Go’s program, specifically its pac``kages:

```go
package main

import "fmt"

func main () {
  fmt.Println("Hello World")
}
````

Go programs are read from top to down, left to right, so let’s focus on the first line `package main`. This line is called a *package declaration* and every Go program starts with one. The package declaration informs the compiler whether to create an executable or *library*.

---

```go

func main () {
    fmt.Println("Hello World")
}
```

There are a few things happening in our `main` function. We’re introduced to how *functions* (reusable blocks of code) are defined/created in Go. The basic syntax being:

- The `func` keyword denotes the start of a function declaration.
- `func` is followed by the name of the function.
- After name is a pair of parentheses `()` and a set of curly braces `{}`.

Inside the function block `{}`, we indent the code inside using a tab. Then we access the `fmt` package and call its `Println` (stands for print line) function to print the message `"Hello World"` to the terminal.

Now let’s take a second and realize that while we defined our `main` function, we never explicitly told `main` to run its block of code. In other programming languages, functions have to be called, i.e. told to run its code. However, a `main` function is special, a file that has a `package main` declaration will automatically run the `main` function!

This nuance becomes more important as we build more complex programs. In the meanwhile, let’s finish up our program!

---

To import multiple packages we can add multiple `import` statements, like so:

```go
import "package1"
import "package2"
```

Or we can use a single `import` with a pair of parentheses that contain our packages:

```go
import (
  "package1"
  "package2"
)
```

Notice, when using an `import` with parentheses, we’re not separating each package with a comma. Instead, each package is on a different line.

We can also provide an *alias* to a package by including the alias name before the file. Including an alias will make it easier to refer to the package without typing out the full package name:

```go
import (
  p1 "package1"
  "package2"
)
```

In the example above we’ve aliased `package1` as `p1` and now we can call functions from `package1` by using `p1` like:

`$ p1.SampleFunc()`

Instead of:

`$ package1.SampleFunc()`

---

![Data Types](https://file.coffee/u/qGDrrMS6kv.png)

---

There is a way to declare a variable without explicitly stating its type using the short declaration `:=` operator. We might use the `:=` operator if we know what value we want our variable to store when creating it. For instance:

```go
nuclearMeltdownOccurring := true
radiumInGroundWater := 4.521
daysSinceLastWorkplaceCatastrophe := 0
externalMessage := "Everything is normal. Keep calm and carry on."
```

Above, we were able to define a `bool`, a `float`, an `int`, and a `string` without specifying the type. We used the `:=` to create a variable and infer its type based on the value provided. Floats created in this way are of type `float64`. Integers created in this way are either `int32` or `int64`
