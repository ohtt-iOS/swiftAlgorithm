import heapq

def solution(scoville, K):
    answer = 0
    newHeap = []
    
    for i in scoville:
        heapq.heappush(newHeap,i)
    
    while newHeap[0] < K:
        if len(newHeap) == 1 and newHeap[0] < K:
            return -1
        else:
            heapq.heappush(newHeap,heapq.heappop(newHeap)+heapq.heappop(newHeap)*2)
            answer += 1
        
    return answer