---
date: "2020-10-08T20:19:52+05:30"
title: "Goroutines"
tags: ["code","go"]
---
[[golang]]

Main Things

> Goroutines doesn't wait for execution like functions do

When a new Goroutine is started, the goroutine call **returns immediately**. Unlike functions !!


**The control does not wait for the Goroutine to finish executing. The control _returns immediately_ to the next line of code after the Goroutine call and any return values from the Goroutine are ignored.**

The `main` fucntion is a **goroutine 😵**
