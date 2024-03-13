****Concurrency**** is the execution of multiple instruction sequences at the same time. It happens in the operating system when there are several process threads running in parallel. The running process threads always communicate with each other through shared memory or message passing. Concurrency results in the sharing of resources resulting in problems like deadlocks and resource starvation. 

It helps in techniques like coordinating the execution of processes, memory allocation, and execution scheduling for maximizing throughput. 

There are several motivations for allowing concurrent execution

- ****Physical resource Sharing:**** Multiuser environment since hardware resources are limited
- ****Logical resource Sharing:****  Shared file (same piece of information)
- ****Computation Speedup:**** Parallel execution
- ****Modularity:**** Divide system functions into separation processes

Concurrency is not parallelism! The former is about doing many things all at once, while the latter is about doing multiple things simultaneously.