// 소수 찾기

import Foundation

//func solution(_ numbers:String) -> Int {
//  
//  let nums = numbers.map {String($0)}
//  var visited = Array(repeating: false, count: nums.count)
//  
//  var numList = [Int]()
//  
//  
//  func dfs(_ num: [String], count: Int, rCount: Int) {
//    for (i, value) in nums.enumerated() {
//      print("num:\(num) i:\(i) value:\(value) count:\(count) rCount:\(rCount)")
//      
//      if count == rCount {
//        numList.append(Int(num.joined())!)
//        print(numList)
//        return
//      }
//      
//      if visited[i] {
//        continue
//      }
//      
////      print("\(value) \(num)")
//      var newNum = num
//      newNum.append(value)
//      
//      visited[i] = true
//      dfs(newNum, count: count + 1, rCount: rCount)
//      visited[i] = false
//    }
//  }
//  
////  for i in 1...nums.count {
//    visited = Array(repeating: false, count: nums.count)
//    dfs([], count: 0, rCount: i)
////  }
//  
//  return 0
//}
//
//
//solution("123")




func solution(_ numbers:String) -> Int {
  let nums = numbers.map {String($0)}
  var visited = Array(repeating: false, count: nums.count)
  
  var numList = [Int]()
  
  func dfs(num: [String], count: Int, rCount: Int) {
    for (i, value) in nums.enumerated() {
      if count == rCount {
        numList.append(Int(num.joined())!)
        return
      }

      if visited[i] {
        continue
      }
     
      var newNum = num
      newNum.append(value)
      
      visited[i] = true
      dfs(num: newNum, count: count + 1, rCount: rCount)
      visited[i] = false
      
    }
  }
  
  for i in 1...nums.count {
    visited = Array(repeating: false, count: nums.count)
    dfs(num: [], count: 0, rCount: i)
  }
  
  print(numList)
  
  return 0
}

solution("123")
