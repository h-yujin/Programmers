// 뒤에 있는 큰 수 찾기

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
  var result = [Int].init(repeating: -1, count: numbers.count)
  
  var index = 0
  
//  var num = numbers[index]
//  var compare = numbers[index + 1]
  
  for i in 0..<numbers.count - 1 {
    var num = numbers[i]
    
    var compare = numbers[i + 1]
    var index = i
    
    while num > compare {
      
      if index > numbers.count - 1 {
        result[i] = -1
        break
      }
      compare = numbers[index + 1]
    }
    
    result[i] = compare
    
    
//    while num < compare {
//      if index > numbers.count {
//        break
//      }
//      index += 1
//      
//      num = numbers[index]
//      compare = numbers[index + 1]
//    }
//    
//    result[index - 1] = compare
    
    
  }
  
  
  
  return result
}

//print(solution([2, 3, 3, 5]))
print(solution([9, 1, 5, 3, 6, 2]))
