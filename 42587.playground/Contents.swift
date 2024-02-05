// 프로세스


import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
  var processes = [(index: Int, value: Int)]()
  for i in 0..<priorities.count {
    processes.append((i, priorities[i]))
  }
  
  var waitQueue = [Int]()
  var result = 0
  
  while !processes.isEmpty {
    let queue = processes.removeFirst()
    if processes.filter { $0.value > queue.value }.count > 0 { // 우선순위가 더 높은 프로세스가 있음
      processes.append(queue)
    } else {
      result += 1
      if queue.index == location {
        return result
      }
    }
    
  }
  
  return result
}

//solution([2, 1, 3, 2], 2)
//solution([1, 1, 9, 1, 1, 1], 0)
solution([0, 2, 3, 1], 3)
