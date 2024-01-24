// 짝지어 제거하기


import Foundation
//
//func solution(_ s:String) -> Int{
//  var arr = s.map{String($0)}
//  var result = [String]()
//  
//  for value in arr {
//    if !result.isEmpty && result.last == value {
//      result.removeLast()
//    } else {
//      result.append(value)
//    }
//  }
//  
//  return result.isEmpty ? 1 : 0
//}
//
//print(solution("cdcd"))




















func solution(_ s:String) -> Int{
  var sList = s.map{ String($0) }
  var stack = [String]()
  
  
  for i in 1..<sList.count {
    if !stack.isEmpty || stack.last == sList[i] {
      stack.removeLast()
    } else {
      stack.append(sList[i])
    }
  }
  
  return stack.isEmpty ? 1 : 0
}

print("\(solution("cdcd"))")
