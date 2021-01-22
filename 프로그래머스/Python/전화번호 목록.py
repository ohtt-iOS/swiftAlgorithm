def solution(phone_book):
    phone_book.sort(key=len)
    
    for i in range(0,len(phone_book)):
        for k in range(i+1,len(phone_book)):
            if phone_book[k].startswith(phone_book[i]):
                return False
    return True