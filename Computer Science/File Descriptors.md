One of the first things a UNIX programmer learns is that every running program starts with three files already opened:

|Descriptive Name|Short Name|File Number|Description|
|---|---|---|---|
|Standard In|stdin|0|Input from the keyboard|
|Standard Out|stdout|1|Output to the console|
|Standard Error|stderr|2|Error output to the console|
This raises the question of what an _open file_ represents. The value returned by an `open` call is termed a _file descriptor_ and is essentially an index into an array of open files kept by the kernel. In short, the file descriptor is the gateway into the kernel's abstractions of underlying hardware.

The shell is the gateway to interacting with the operating system. Be it `bash`, `zsh`, `csh` or any of the many other shells, they all fundamentally have only one major task — to allow you to execute programs (you will begin to understand how the shell actually does this when we talk about some of the internals of the operating system later).

But shells do much more than allow you to simply execute a program. They have powerful abilities to redirect files, allow you to execute multiple programs simultaneously and script complete programs. These all come back to the _everything is a file_ idiom.