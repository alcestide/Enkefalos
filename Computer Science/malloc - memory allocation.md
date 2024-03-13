
Allocates `size` bytes of uninitialized storage.

If allocation succeeds, returns a pointer that is suitably aligned for any object type with [fundamental alignment](https://en.cppreference.com/w/c/language/object#Alignment "c/language/object").

If `size` is zero, the behavior of `malloc` is implementation-defined. For example, a null pointer may be returned. Alternatively, a non-null pointer may be returned; but such a pointer should not be [dereferenced](https://en.cppreference.com/w/c/language/operator_member_access "c/language/operator member access"), and should be passed to [free](https://en.cppreference.com/w/c/memory/free "c/memory/free") to avoid memory leaks.

|   |
|---|
|`malloc` is thread-safe: it behaves as though only accessing the memory locations visible through its argument, and not any static storage.<br><br>A previous call to [free](https://en.cppreference.com/w/c/memory/free "c/memory/free") or [realloc](https://en.cppreference.com/w/c/memory/realloc "c/memory/realloc") that deallocates a region of memory _synchronizes-with_ a call to `malloc` that allocates the same or a part of the same region of memory. This synchronization occurs after any access to the memory by the deallocating function and before any access to the memory by `malloc`. There is a single total order of all allocation and deallocation functions operating on each particular region of memory.|