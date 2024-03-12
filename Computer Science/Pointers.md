A **pointer** stores a reference to something. Unfortunately there is no fixed term for the thing that the pointer points to, and across different computer languages there is a wide variety of things that pointers point to. We use the term **pointee** for the thing that the pointer points to, and we stick to the basic properties of the pointer/pointee relationship which are true in all languages. The term "reference" means pretty much the same thing as "pointer" -- "reference" implies a more high-level discussion, while "pointer" implies the traditional compiled language implementation of pointers as addresses. For the basic pointer/pointee rules covered here, the terms are effectively equivalent.

The **dereference** operation starts at the pointer and follows its arrow over to access its pointee. The goal may be to look at the pointee state or to change the pointee state.

The dereference operation on a pointer only works if the pointer has a pointee -- the pointee must be allocated and the pointer must be set to point to it. The most common error in pointer code is forgetting to set up the pointee. The most common runtime crash because of that error in the code is a failed dereference operation. In Java the incorrect dereference will be flagged politely by the runtime system. In compiled languages such as C, C++, and Pascal, the incorrect dereference will sometimes crash, and other times corrupt memory in some subtle, random way. Pointer bugs in compiled languages can be difficult to track down for this reason.