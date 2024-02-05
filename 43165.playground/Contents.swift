// 타겟 넘버

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
  var answer = 0
  
  dfs(0, 0, &answer, numbers, target)
  
  return answer
}

func dfs(_ index: Int, _ sum: Int, _ answer: inout Int, _ numbers:[Int], _ target:Int) {
  if index == numbers.count {
    
    if sum == target {
      answer += 1
    }
    return
  }
  
  
  dfs(index + 1, sum + numbers[index], &answer, numbers, target)
  dfs(index + 1, sum - numbers[index], &answer, numbers, target)
  
}

//solution([1, 1, 1, 1, 1], 3)
solution([4, 1, 2, 1], 4)

















func solution(_ numbers:[Int], _ target:Int) -> Int {
    return 0
}
