// JadenCase 문자열 만들기

import UIKit

func solution(_ s:String) -> String {
  let slist = s.lowercased().map { String($0) }
  var result = slist[0].uppercased()
  
  
  for i in 1..<slist.count {
    if slist[i - 1] == " " {
      result += slist[i].uppercased()
    } else {
      result += slist[i]
    }
  }
  
  return result
}

print(solution("for the last week"))
