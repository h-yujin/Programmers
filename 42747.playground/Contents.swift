// H-Index

import Foundation

func solution(_ citations:[Int]) -> Int {
  let n = citations.count
  
  let max = citations.max() ?? 0
  var result = 0
  
  for i in 0..<max {
    let h = citations.filter {$0 >= i}
    print("\(i) \(h)")
    if i <= h.count {
      result = i
    }
  }
  
  return result
}

//solution([6, 5, 3, 3, 0])
solution([3, 0, 6, 1, 5])
