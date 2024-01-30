// n^2 배열 자르기

import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
  let n = Int64(n)
  var array = [Int]()
  
  for i in left...right {
    array.append(max(Int(i / n) + 1, Int(i % n + 1)))
  }
  
  
  return array
}

private func calculateValue(_ n:Int, _ i:Int) -> Int {
  if i % n == 0 {
    return (i % n) + 1
  } else {
    return (i / n) + 1
  }
}

//func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//    let result: [Int] = (Int(left)...Int(right)).map {
//        max($0 / n + 1, $0 % n + 1)
//    }
//    // print("result: \(result)")
//    
//    return result
//}

////print(solution(3, Int64(2), Int64(5)))
print(solution(10000000, Int64(99999999999), Int64(99999999999)))

















func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    return []
}
