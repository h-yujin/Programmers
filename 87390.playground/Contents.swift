// n^2 배열 자르기

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
  var array = [Int]()
  
  for i in left...right {
    array.append(Int(calculateValue(n, Int(i + 1))))
  }
  
  
  return array
}

private func calculateValue(_ n:Int, _ i:Int) -> Int64 {
  if i % n == 0 {
    return Int64(n)
  } else {
    return Int64(i / n + 1)
  }
}


////print(solution(3, Int64(2), Int64(5)))
print(solution(10000000, Int64(99999999999), Int64(99999999999)))
