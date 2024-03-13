
| Function             | Description                                |
| -------------------- | ------------------------------------------ |
| **fork()**           | Clone the current process                  |
| **pthread_atfork()** | Register **atfork()** handlers             |
| **exec*()**          | Execute a new image inside a process       |
| **posix_spawn()**    | Create a new process executing a new image |
| **wait()**           | Wait for termination of a process          |
| **waitpid()**        | Wait for termination of a process          |
| **_exit()**          | Terminate the current process              |
| **getpid()**         | Get process identifier                     |
| **getppid()**        | Get parent process identifier              |
| **getpgid()**        | Get process group identifier               |
| **setpgid()**        | Set process group identifier               |
| **getuid()**         | Get real user identifier                   |
| **geteuid()**        | Get effective user identifier              |
| **getgid()**         | Get user's real group identifier           |
| **getegid()**        | Get user's effective group identifier      |
| **getgroups()**      | Get additional group identifiers           |
| **setuid()**         | Set real user identifier                   |
| **setgid()**         | Set real group identifier                  |
| **seteuid()**        | Set effective user identifier              |
| **setegid()**        | Set effective group identifier             |
| **ptrace()**         | Tracing and debugging a process            |