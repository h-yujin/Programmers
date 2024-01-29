// 괄호 회전하기

import Foundation

func solution(_ s:String) -> Int {
  
  var result = 0
  var sList = s.map{ String($0) }
  // 괄호는 하나씩 앞으로 미루기
  for i in 0..<sList.count {
    //  var newSList = Array(sList[0..<sList.count])
    var newSList = Array(sList[i..<sList.count])
    let firstS = newSList.first ?? ""
    sList.append(firstS)
    
  
    // 올바른 괄호 문자열인지 확인
    if checkRightString(newSList) {
      result += 1
    }
  }
  
  return result
}

private func checkRightString(_ sList: [String]) -> Bool {
  var isCheckFlag = true
  var stack = [String]()
  var sList = sList
  
  while !sList.isEmpty {
    let firstS = sList[0]
    
    if firstS == "[" || firstS == "(" || firstS == "{" {
      isCheckFlag = false
      stack.append(firstS)
    } else {
      if let lastS = stack.last {
        if firstS == "]" && lastS == "["
            || firstS == ")" && lastS == "("
            || firstS == "}" && lastS == "{" {
          stack.removeLast()
        }
      }
    }
    
    sList.removeFirst()
  }
  
  return !isCheckFlag && stack.isEmpty
}


print(solution("[](){}"))
