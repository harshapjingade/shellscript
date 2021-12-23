```
How to check the kernel version of a Linux system?
      uname -a // full information
      uname -r // print the operating system release.
      uname -v // print the operating system version.
```
```
How to see the current IP address on Linux?
      ifconfig 
      ip addr show eth0
```
```
How to check for free disk space in Linux?
      df -h
```
```
How to see if a Linux service is running?
      systemctl status <service name>
```
```
How to check the size of a directory in Linux?
      du -skh <directory name>
```
```
How to check for open ports in Linux?
      netstat -tuplan
```
```
How to check Linux process information (CPU usage, memory, user information, etc.)?
      top 
      htop
```
```
How to deal with mounts in Linux?
      Adding new one:
      fdisk /dev/sdb
      n (new partition)
      p (primary patition)
      w (write)
      
      fdisk -l
      mkfs ext4 /dev/sdb1
      mkdir /test
      mount /dev/sdb1 /test
      
      vi /etc/fstab
```
```
How will you change the default user id value in Linux?
    useradd tom //creating new user
    id tom // checking id information
    vi /etc/login.defs // modify the uid
    useradd jerry // uid will be different
```
```
root# rm -rf /tmp/test gives error operation not permitted. Reason?
    File might have created using chattr command [chattr is used to secure the files]
    touch /tmp/test
    chattr +i /tmp/test //i set : File cannot be modified (immutable), the only superuser can unset the attribute.
    chattr -i /tmp/test //i unset
```
```
/etc/hosts (Which RPM is responsible for creating this file).
    rpm -qf /etc/hosts
```
```
How will you check open ports on remote servers (without login)
    nmap -A <ipaddress>
```

