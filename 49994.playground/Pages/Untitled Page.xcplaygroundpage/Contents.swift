// 방문 길이


import Foundation

func solution(_ dirs:String) -> Int {
  
  
  var dirArr = dirs.map {String($0)}
  
  
  var history = [(start: (Int, Int), end: (Int, Int))]()
  var count = 0 // 움직인 길 횟수
  var current = (0, 0) // 현재 위치
  
  for dic in dirArr {
    var newPosition = (0, 0)
    
    var x = current.0
    var y = current.1
    switch dic {
    case "U":
      y = y + 1 >= 5 ? 5 : y + 1
    case "D":
      y = y - 1 <= -5 ? -5 : y - 1
    case "R":
      x = x + 1 >= 5 ? 5 : x + 1
    case "L":
      x = x - 1 <= -5 ? -5 : x - 1
    default:
      break
    }
    
    newPosition = (x, y)
    let isContain = history.contains { element in
      if element.start == current && element.end == newPosition
      || element.start == newPosition && element.end == current {
        return true
      } else {
        return false
      }
    }
    
    if !isContain && current != newPosition {
      count += 1
      history.append((start: current, end: newPosition))
    }
    current = newPosition
  }
  
  return count
}

//solution("ULURRDLLU")
//solution("LULLLLLLU")

solution("UDLRDURL")
