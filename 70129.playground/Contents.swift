// 이진 변환 반복하기

import UIKit

import Foundation

func solution(_ s:String) -> [Int] {
  var count = 0
  var result = 0
  
  var x = s
  
  while x != "1" {
    let zeroCount = x.filter {$0 == "0"}.count // 0 개수 세기
    let removeZeroS = String(repeating: "1", count: x.count - zeroCount)
    x = String(removeZeroS.count, radix: 2)
    result += zeroCount
    count += 1
  }
  
  return [count, result]
}

print(solution("110010101001"))
