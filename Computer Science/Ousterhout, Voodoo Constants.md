The term “*voodoo constants*” was coined by Prof. *John Ousterhout* during his lectures at the University of California, Berkeley.

The design of computer systems is often viewed very much as an art rather than a science. 

Decisions about which scheduling policy to use, how many servers to run, what speed to operate each server at, and the like are often based on intuitions rather than mathematically derived formulas. 

Specific policies built into kernels are often riddled with secret “**voodoo constants**,” which have no explanation but seem to “work well” under some benchmarked workloads. 

Computer systems students are often told to first build the system and then make changes to the policies to improve system performance, rather than first creating a formal model and design of the system on paper to ensure the system meets performance goals.