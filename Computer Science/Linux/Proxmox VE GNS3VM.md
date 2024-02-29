# Set your GNS3 VM ID from Proxmox
gns3_vm_id=105

# Set your guest disk storage volume/partition
# Default is "local-lvm", mine is "Guest_Disks"
guest_disk_storage='Guest_Disks'

cd /tmp
wget https://github.com/GNS3/gns3-gui/releases/download/v2.2.35.1/GNS3.VM.VMware.ESXI.2.2.35.1.zip
unzip GNS3.VM.VMware.ESXI.2.2.35.1.zip
mkdir GNS3_OVA_Files
tar -xvf 'GNS3 VM.ova' -C GNS3_OVA_Files/
cd GNS3_OVA_Files/

# The qemu-img commands don't produce output, so be patient
qemu-img convert -f vmdk -O qcow2 ./GNS3_VM-disk1.vmdk ./GNS3_VM-disk1.qcow2
qemu-img convert -f vmdk -O qcow2 ./GNS3_VM-disk2.vmdk ./GNS3_VM-disk2.qcow2
qm importdisk $gns3_vm_id ./GNS3_VM-disk1.qcow2 $guest_disk_storage --format qcow2
qm importdisk $gns3_vm_id ./GNS3_VM-disk2.qcow2 $guest_disk_storage --format qcow2

# Clean up files
cd /tmp
rm -rf GNS3*
