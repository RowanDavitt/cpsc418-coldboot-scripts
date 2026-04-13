This is a repo for scripts we used for a project in a cryptography class (cpsc 418).

These scripts are very basic and aren't very well written (they use hard coded paths)

There are four scripts here:
1. `418program.sh` - we used this to place some known text in memory
2. `decode.sh` - handles calling the scripts functions to perform the descrambling.
3. `parsingfiles.py` - turns the input file into a list series of base64 strings, each representing 64 bytes. Its easier to work with base64 instead of binary.
4. `xorkey.py` - takes a sorted and deduplicated list of base64 strings, takes the first line, converts it to binary and xors that with the entire memory dump file


The process is:
1. we take a scrambled the memory dump
2. extract a subsection of it (we used 500MiB)
3. convert that subsection into 64-byte base64 strings
4. sort the file using `sort` (because `uniq` requires a sorted input)
5. use `uniq` to count and remove duplicate strings
6. use `sort` again to get the most frequently string
7. convert that string back into binary
8. xor that binary value with the entire memory dump

This was based on a process used in paper "Cold Boot Attacks are Still Hot: Security Analysis of Memory Scramblers in Modern Processors" by Yitbarek Et.Al.
https://ieeexplore.ieee.org/document/7920835
