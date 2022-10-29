import json
import string
import hashlib

lowercase = string.ascii_lowercase
uppercase = string.ascii_uppercase
digits    = string.digits

dict = {}

def expression():
    encrypt_password = lowercase + uppercase + digits
    return encrypt_password


for i in range(0, len(expression())):
    singleChar = expression()[i]
    
    r = hashlib.sha1(singleChar.encode())
    result = r.hexdigest()
    
    dict[result] = singleChar
    

for j in range(0, len(expression())):
    fstChar = expression()[j]
    
    for k in range(0,len(expression())):
        secChar = expression()[k]
        
        final = fstChar + secChar
        
        r2 = hashlib.sha1(final.encode())
        result_2 = r2.hexdigest()
        
        dict[result_2] = final
     
with open('data.json', 'w') as POCv1v2file:
    json.dump(dict, POCv1v2file)
