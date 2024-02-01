// 기능개발

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
  var progresses = progresses
  var days = [Int]()
  
  
  for (index, progress) in progresses.enumerated() {
    var day = (100 - progress) / speeds[index]
    if (100 - progress) % speeds[index] != 0 {
      day = day + 1
    }
    
    days.append(day)
  }
  
 
  guard days.count > 0 else { return [] }
  var result = [Int]()
  
  var temp = Int()
  for day in days {
    if result.isEmpty {
      result.append(1)
      temp = day
    } else {
      if temp >= day {
        if let last = result.popLast() {
          result.append((last) + 1)
        }
      } else {
        result.append(1)
        temp = day
      }
    }
  }
  
  return result
}

//solution([93, 30, 55], [1, 30, 5])

solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1])
