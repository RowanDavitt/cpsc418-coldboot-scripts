import base64
import binascii




def get_values(in_file,out_file,chunk=64):
    with open(in_file,"rb") as in_f:
        with open(out_file,"w") as out_f:
            while (len(data := in_f.read(chunk)) == chunk):
                out_f.write(binascii.b2a_base64(data).decode("ascii"))

def main():
    get_values("data/mar30_data1.bin","base64_values.bin")
    

main()
