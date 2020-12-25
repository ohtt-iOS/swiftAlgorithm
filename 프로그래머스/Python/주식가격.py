def solution(prices):
    answer = []
    for i in range(len(prices)):
        know = False
        for j in range(i, len(prices)):
            if prices[i] > prices[j]:
                num = j - i
                answer.append(num)
                know = True
                break

        if know == False:
            answer.append(len(prices) - i - 1)

    return answer


print(solution([1, 2, 3, 2, 3]))
