// 최솟값 만들기

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
  var sortA = A.sorted(by: <)
  var sortB = B.sorted(by: >)
  var ans = 0
  
  for value in zip(sortA, sortB) {
    ans += value.0 * value.1
  }
  
  return ans
}

print(solution([1, 2], [3, 4]))
