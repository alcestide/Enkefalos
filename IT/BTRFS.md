BTRFS is a modern copy on write (COW) filesystem for Linux aimed at implementing advanced features while also focusing on fault tolerance, repair and easy administration.

## Subvolumes
"A btrfs subvolume is not a block device (and cannot be treated as one) instead, a btrfs subvolume can be thought of as a POSIX file namespace. This namespace can be accessed via the top-level subvolume of the filesystem, or it can be mounted in its own right." Each Btrfs file system has a top-level subvolume with ID 5. It can be mounted as `/` (by default), or another subvolume can be [mounted](https://wiki.archlinux.org/title/Btrfs#Mounting_subvolumes) instead. Subvolumes can be moved around in the filesystem and are rather identified by their id than their path.

To create a subvolume, the btrfs filesystem must be mounted. The subvolume's name is set using the last argument.

```bash
# btrfs subvolume create _/path/to/subvolume_
```

To see a list of current subvolumes and their ids under `_path_`:

```bash
# btrfs subvolume list -p _path_
```

To delete a subvolume:

```bash
# btrfs subvolume delete _/path/to/subvolume_
```

### Mounting Subvolumes
Subvolumes can be mounted like file system partitions using the `subvol=_/path/to/subvolume_` or `subvolid=_objectid_` mount flags. For example, you could have a subvolume named `subvol_root` and mount it as `/`. One can mimic traditional file system partitions by creating various subvolumes under the top level of the file system and then mounting them at the appropriate mount points.

## Snapshots
"A snapshot is simply a subvolume that shares its data (and metadata) with some other subvolume, using btrfs's COW capabilities."

To create a snapshot:

```bash
# btrfs subvolume snapshot _source_ [_dest_/]_name_
```

The Btrfs filesystem supports 2 types of snapshots.

1.  **Writable snapshots:** If you take a writable snapshot, you can modify that snapshot’s files/directories later. This is the default snapshot type of the Btrfs filesystem.
2.  **Read-only snapshots:** If you take a read-only snapshot, you can’t modify that snapshot’s files/directories later.
