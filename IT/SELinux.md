**SELinux** is a free open source software project that was developed by the **US National Security Agency**.  

While it can theoretically be installed on any Linux distro, **Red Hat-type** distros are the only ones that  come with it already set up and enabled. It uses code in Linux kernel modules, along with extended  filesystem attributes, to help ensure that only authorized users and processes can access either sensitive files or system resources. There are three ways in which SELinux can be used:  

- It can help prevent intruders from **exploiting** a system.  
- It can be used to ensure that only users with the proper **security clearance** can access files that are labeled with a security classification. For example, it would prevent someone with only  a SECRET clearance from accessing **TOP SECRET** documents. It would also prevent someone  with a TOP SECRET clearance from storing TOP SECRET documents in an area where people  with lower clearance levels could access them.  
- In addition to MAC, SELinux can also be used as a type of role-based access control. An SELinux  role would allow a person or a set of people to perform a certain assigned set of tasks, such as  administering a specific type of server

SELinux is also yet another mechanism that can help protect data in users’ home directories. 

If you  have a machine that’s set up as a Network File System server, a Samba server, or a web server, SELinux  will prevent those daemons from accessing users’ home directories, unless you explicitly configure  
SELinux to allow that behavior.