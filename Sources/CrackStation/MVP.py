import json
import string
import hashlib

lowercase = string.ascii_lowercase
uppercase = string.ascii_uppercase
digits    = string.digits

dict = {}

def expression():
    encrypt_password = lowercase + uppercase + digits + "!" + "?"
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



for l in range(0, len(expression())):
    thr = expression()[l]
    
    for m in range(0, len(expression())):
        fourChar = expression()[m]
        
        for n in range(0, len(expression())):
            fiveChar = expression()[n]
            
            v3Final = thr + fourChar + fiveChar
            
            v3 = hashlib.sha1(v3Final.encode())
            result_3 = v3.hexdigest()
            
            dict[result_3] = v3Final



for o in range(0, len(expression())):
    singleChar = expression()[o]
    
    r = hashlib.sha256(singleChar.encode())
    result = r.hexdigest()
    
    dict[result] = singleChar


for p in range(0, len(expression())):
    fstChar = expression()[p]
    
    for q in range(0,len(expression())):
        secChar = expression()[q]
        
        final = fstChar + secChar
        
        r2 = hashlib.sha256(final.encode())
        result_2 = r2.hexdigest()
        
        dict[result_2] = final



for r in range(0, len(expression())):
    thr = expression()[r]
    
    for s in range(0, len(expression())):
        fourChar = expression()[s]
        
        for t in range(0, len(expression())):
            fiveChar = expression()[t]
            
            v3Final = thr + fourChar + fiveChar
            
            v3 = hashlib.sha256(v3Final.encode())
            result_3 = v3.hexdigest()
            
            dict[result_3] = v3Final

with open('data.json', 'w') as POCv1v2file:
    json.dump(dict, POCv1v2file)
