swift build -Xswiftc -emit-library -Xswiftc -L=./.build/debug
swift -I=./.build/debug -L=./ -lmylines < main.swift.script
