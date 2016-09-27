# remove_disk: spin down unneeded disk
# ---------------------------------------
# diskutil eject /dev/disk1s3

# to change the password on an encrypted disk image:
# ---------------------------------------
# hdiutil chpass /path/to/the/diskimage

# to mount a read-only disk image as read-write:
# ---------------------------------------
# hdiutil attach example.dmg -shadow /tmp/example.shadow -noverify

# mounting a removable drive (of type msdos or hfs)
# ---------------------------------------
# mkdir /Volumes/Foo
# ls /dev/disk*   to find out the device to use in the mount command)
# mount -t msdos /dev/disk1s1 /Volumes/Foo
# mount -t hfs /dev/disk1s1 /Volumes/Foo

# to create a file of a given size: /usr/sbin/mkfile or /usr/bin/hdiutil
# ---------------------------------------
# e.g.: mkfile 10m 10MB.dat
# e.g.: hdiutil create -size 10m 10MB.dmg
# the above create files that are almost all zeros - if random bytes are desired
# then use: ~/Dev/Perl/randBytes 1048576 > 10MB.dat

# Debug a command
# ---------------------------------------
# Add the following lines to the head of the command
# N=`gdate +%s%N`;
# export PS4='+[$(((`gdate +%s%N`-$N)/1000000))ms][${BASH_SOURCE}:${LINENO}]: ${FUNCNAME[0]:+${FUNCNAME[0]}(): }';
# set -x;
# ...code to profile
# set +x