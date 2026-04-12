#Advanced users can try to observe memory remanence effects on their own systems by performing this simple experiment. (These instructions are written for Linux machines, but they can be adapted for other operating systems.)

#Create a Python program with the following code:
#!/usr/bin/env python


# a pirate's favorite chemical element

#a = ""

#while 1: a += "ARGON"

#This program will fill memory with copies of the word “ARGON”.

#Run the sync command to flush any cached data to the hard disk.
#Start the Python program, and allow it to run for several minutes. It won’t display anything on the screen, but after a while you should see hard drive activity as the memory fills and data gets swapped to disk.
#Deliberately crash the system by turning the power off and on again or briefly removing the battery and power cord.
#After the system reboots, look for the “ARGON” pattern in memory. You can use the following command to print strings of text contained in RAM:
sudo strings /dev/mem | less

#If you see copies of the string “ARGON”, some of the contents of memory survived the reboot. You’ll see many other strings that were loaded into memory when the system restarted, and possibly other data left over from before it rebooted.

#If you don’t see any copies of the pattern, possible explanations include (1) you have ECC (error-correcting) RAM, which the BIOS clears at boot; (2) your BIOS clears RAM at boot for another reason (try disabling the memory test or enabling “Quick Boot” mode); (3) your RAM’s retention time is too short to be noticeable at normal temperatures. In any case, your computer might still be vulnerable — an attacker could cool the RAM so that the data takes longer to decay and/or transfer the memory modules to a computer that doesn’t clear RAM at boot and read them there.

#Princeton
#https://web.archive.org/web/20130816065246/https://citp.princeton.edu/research/memory/exp/
