// 가장 큰 수

import Foundation

func solution(_ numbers:[Int]) -> String {
  var nums = numbers.map{String($0)}
  nums.sort { $0 + $1 > $1 + $0 }
  let result = nums.joined()
  if let num = Int(result) { return String(num) }
  return result
}

print(solution([6, 10, 2]))
print(solution([3, 30, 34, 5, 9]))
print(solution([0, 0, 0]))






























func solution(_ numbers:[Int]) -> String {
    return ""
}
