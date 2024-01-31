// 튜플

import Foundation

//func solution(_ s:String) -> [Int] {
//  var result = [Int]()
////  var sets = s.split(omittingEmptySubsequences: true, whereSeparator: "}")
////  var sets = s.split(omittingEmptySubsequences: true, whereSeparator: { "}".contains($0) }).map {
////          $0.split(omittingEmptySubsequences: true, whereSeparator: { "{,".contains($0) }).map { Int($0)! }
////      }
////  
////  var sets = s.split(omittingEmptySubsequences: true, whereSeparator: { "}".contains($0) }).map {
////          $0.split(omittingEmptySubsequences: true, whereSeparator: { "{,".contains($0) }).map { Int($0)! }
////      }
//  
////  var sets4 = s.split(omittingEmptySubsequences: true, whereSeparator: { "}".contains($0) })
////  var sets5 = sets4.map {
////          $0.split(whereSeparator: { "{,".contains($0) })
////      }
////  print(sets4)
////  print(sets5)
//  
////  var sets2 = s.split(separator: "}").map {
////    $0.split(whereSeparator: "{,").map{$0}
////  }
//  var sets2 = s.split(separator: "}")
//  var sets3 = sets2.map { $0.split(whereSeparator: { $0 == "{" || $0 == "," } ).map{String($0)} }
//  var sets4 =  sets3.map{ $0.compactMap { Int($0) } }
//  
//
//  sets4.sort { lhs, rhs in
//    lhs.count < rhs.count
//  }
//  
//  sets4.forEach {
//    result.append(Array(Set($0)).first!)
//  }
//  
//  print(sets4)
//  print(result)
//  return []
//}


//solution("{{2},{2,1},{2,1,3},{2,1,3,4}}")
//solution("{{20,111},{111}}")
//solution("{{1,2,3},{2,1},{1,2,4,3},{2}}")




























//func solution(_ s:String) -> [Int] {
//    return []
//}
