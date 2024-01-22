// 피보나치 수

import Foundation

func solution(_ n:Int) -> Int {
  var fibArr = [1, 1]
  
  for i in 2..<n {
    fibArr.append((fibArr[i - 2] + fibArr[i - 1]) % 1234567)
    
  }
  return fibArr[n - 1]
}

print(solution(3))
