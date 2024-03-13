The Fork-Join pattern is a parallel programming design pattern that involves breaking a problem into smaller sub-problems, solving them concurrently, and then combining their results to produce the final solution. It typically consists of two main steps: “forking,” where the original task is divided into subtasks, and “joining,” where the results of the subtasks are combined to obtain the overall result.

<code>**solve(problem)**:
    **if** problem is small enough:
        solve problem directly (sequential algorithm)
    **else**:
        **for** part **in** subdivide(problem)
            **fork** subtask to **solve(part)**
        **join** all subtasks spawned in previous loop
        **return** combined results
</code>

Implementations of the fork–join model will typically fork _tasks_, _fibers_ or _lightweight threads_, not operating-system-level "heavyweight" [threads](https://en.wikipedia.org/wiki/Thread_(computing) "Thread (computing)") or processes, and use a [thread pool](https://en.wikipedia.org/wiki/Thread_pool "Thread pool") to execute these tasks: the fork primitive allows the programmer to specify _potential_ parallelism, which the implementation then maps onto actual parallel execution.[[1]](https://en.wikipedia.org/wiki/Fork%E2%80%93join_model#cite_note-spp-1) The reason for this design is that creating new threads tends to result in too much overhead