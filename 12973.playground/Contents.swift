// 짝지어 제거하기


import Foundation
//
//func solution(_ s:String) -> Int{
////  var arr = s.map{String($0)}
//  var result = [Character]()
//  
//  for c in s {
//    if !result.isEmpty && result.last! == c {
//      result.removeLast()
//    } else {
//      result.append(c)
//    }
//  }
//  
//  return result.isEmpty ? 1 : 0
//}
////
//print(solution("cdcd"))



















//
//func solution(_ s:String) -> Int{
//  var sList = s.map{ String($0) }
//  var stack = [String]()
//  
//  
//  for i in 1..<sList.count {
//    if !stack.isEmpty || stack.last == sList[i] {
//      stack.removeLast()
//    } else {
//      stack.append(sList[i])
//    }
//  }
//  
//  return stack.isEmpty ? 1 : 0
//}
//
//print("\(solution("cdcd"))")























//func solution(_ s:String) -> Int{
//  
//  var sList = s.map{String($0)}
//  var stack = [String]()
//  
//  for s in sList {
//    if stack.isEmpty || stack.last != s {
//      stack.append(s)
//    } else {
//      stack.removeLast()
//    }
//  }
//
//  return stack.isEmpty ? 1 : 0
//}
//
//solution("baabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaa")
//solution("baabaa")


















func solution(_ s:String) -> Int{
    var answer:Int = -1

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer
}
