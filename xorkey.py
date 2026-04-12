import binascii

with open("sorteduniq_b64.bin", "rb") as f:
    c,k = f.readline().split()
    key = binascii.a2b_base64(k)

with open("try_dec.bin", "wb") as dec_file:
    with open("data/mar30_data1.bin", "rb") as bin_data:
        while len(line := bin_data.read(64)) != 0:
            dec_value = bytes([x^y for (x,y) in zip(line,key)])
            dec_file.write(dec_value)

    with open("data/mar30_data2.bin", "rb") as bin_data:
        while len(line := bin_data.read(64)) != 0:
            dec_value = bytes([x^y for (x,y) in zip(line,key)])
            dec_file.write(dec_value)
