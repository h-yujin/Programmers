// 의상

import Foundation

func solution(_ clothes:[[String]]) -> Int {
  var dictionary = [String: [String]]()
  
  for value in clothes {
    let type = value[1]
    let name = value[0]
    if dictionary[type] == nil {
      dictionary[type] = [name]
    } else {
      dictionary[type]?.append(name)
    }
  }
  
  var count = 1
  for dic in dictionary {
    count *= (dic.value.count) + 1
  }
  return count - 1
}


//print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))
//
//print(solution([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]]))






















func solution(_ clothes:[[String]]) -> Int {
    return 0
}
