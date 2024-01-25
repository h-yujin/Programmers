// 귤 고르기


import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
  
  var dic = [Int: Int]()
  for i in tangerine {
    if dic[i] == nil {
      dic[i] = 1
    } else {
      dic[i]! += 1
    }
  }
  
  var sortDic = dic.sorted { $0.value > $1.value }
  
  var count = 0
  var result = 0
  for i in sortDic {
    result += 1
    
    count += i.value
    if count >= k {
      return result
    }
  }
  return 0
}


print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]  ))
