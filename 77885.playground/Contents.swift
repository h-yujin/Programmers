// 2개 이하로 다른 비트


import Foundation

//func solution(_ numbers:[Int64]) -> [Int64] {
//  var result = [Int64]()
//  
//  for number in numbers {
//    if number % 2 == 0 {
//      result.append(number + 1)
//    } else {
//      var binary = Array(String(number, radix: 2))
//      
//      if binary[0] == Character("1") {
//        binary.insert(Character("0"), at: 0)
//      }
//      
//      for index in (0..<binary.count).reversed() {
//        if binary[index] == Character("0") {
//          binary[index] = Character("1")
//          binary[index + 1] = Character("0")
//          break
//        }
//      }
//      
//      result.append(Int64(String(binary), radix: 2)!)
//    }
//  }
// 
//  
//  
//  return result
//}
//
//print(solution([2, 7]))




























func solution(_ numbers:[Int64]) -> [Int64] {
    return []
}
