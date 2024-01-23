// 영어 끝말잇기

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
  
  var tempWords = [words[0]]
  var beforeWord = words[0]
  
  for i in 1..<words.count {
    let firstIndex = (i % n) + 1
    let secondIndex = i / n + 1
    
    if words[i].count == 1 {
      return [firstIndex, secondIndex]
    }
    
    if beforeWord.last != words[i].first {
      return [firstIndex, secondIndex]
    }
    
    
    if tempWords.contains(words[i]) {
      return [firstIndex, secondIndex]
    }

    
    beforeWord = words[i]
    tempWords.append(words[i])
  }
  
  return [0, 0]
}


//print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))
//print(solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]))
print(solution(3, ["qws", "sqwes", "sqwe"]))
