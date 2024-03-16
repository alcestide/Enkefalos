**Semaphores** are kind of generalized lock, first defined by *Dijkstra* in late 60s. A semaphore has a *non-negative integer value* and supports the following two operations:

- **P()** or **down()**: atomic operation that waits for semaphore to become positive, then decrements it by 1
- **V()** or **up()**: an atomic operation that incrmeents the semaphore by 1, waking up a waiting P, if any

**P()** stands for *proberen* (*to test*) and **V()** stands for *"verhogen"* (to increment) in Dutch.

Mutual Exclusion (like lock):
- Called a binary semaphore or mutex. Initial value of semaphore =1;

```
semaphore.down();
semaphore.up();
```

Signaling other threads e.g ThreadJoin

- Initial value of semaphore = 0
```
ThreadJoin{
    semaphore.down();
}
ThreadFinish{
    semaphore.up();
}
```
