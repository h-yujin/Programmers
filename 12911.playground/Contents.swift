// 다음 큰 숫자

import Foundation

func solution(_ n:Int) -> Int {
  let nCount = String(n, radix: 2).filter{ $0 == "1" }.count
  var answer:Int = n + 1
  var answerCount = String(answer, radix: 2).filter{ $0 == "1" }.count
  
  
  while nCount != answerCount {
    answer += 1
    answerCount = String(answer, radix: 2).filter{ $0 == "1" }.count
    
  }
  
  
  return answer
}

print(solution(78))
