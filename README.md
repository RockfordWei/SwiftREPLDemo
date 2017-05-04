# Swift REPL Demo with SPM Module

This project demonstrates how to load & run a Swift module dynamically.

## Quick Start

Clone this project and run the `run.sh` to see the result, as commands below:

```
$ git clone https://github.com/RockfordWei/Swift-REPL-Demo
$ cd Swift-REPL-Demo
$ swift build -Xswiftc -emit-library -Xswiftc -L=./.build/debug
$ swift -I=./.build/debug -L=./ -lmylines < main.swift.script
```

It will compile the "mylines" project (which has only one function to extend the String class with a demo property as splitting the source string into an array of lines - `String.asLines`) and export it into a dynamical library.

The last line of the commands will try to load a Swift source named main.swift.script like this:

```
import mylines

let content = "Hello\nWorld\n\n🇨🇳\n🇨🇦\n\n"

print(content.asLines)
```

If success, you can use the Swift playground to try this library whatever you want.
