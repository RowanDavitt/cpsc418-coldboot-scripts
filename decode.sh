#!/user/bin/bash

python3 parsingfiles.py
echo "made base64"

# sort the file before droping duplicates
# uniq only drops duplicates that are adjacent
sort base64_values.bin >sort_b64.bin
echo "sorted base64"

# drops and counts duplicates 
uniq -cd sort_b64.bin >uniq_b64.bin
echo "dropped duplicates"

# sort by count
sort -bhr --key=1 uniq_b64.bin > sort_uniq_b64.bin
echo "sorted unique values"

# xor each chunk by the most frequent chunk
python3 xorkey.py
echo "sorted unique values"
# done