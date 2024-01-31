// [1차] 캐시

import UIKit

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
  var cities = cities.map {$0.lowercased()}
  var queue = [String]()
  var time = 0
  
  for city in cities {
    
    if queue.contains(city) {
      if let index = queue.firstIndex {$0 == city} {
        queue.remove(at: index)
      }
      time += 1
      queue.append(city)
    } else {
      if queue.count >= cacheSize && cacheSize != 0 {
        queue.removeFirst()
      }
      time += 5
      queue.append(city)
    }
    
    print("\(queue) \(time)")
  }
  
  
  return 0
}


//solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"])

//solution(3, ["Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul"])

//solution(2, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"])

//solution(5, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "SanFrancisco", "Seoul", "Rome", "Paris", "Jeju", "NewYork", "Rome"])

//solution(2, ["Jeju", "Pangyo", "NewYork", "newyork"])

//solution(0, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA"])
