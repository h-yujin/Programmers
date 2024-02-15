// 오픈채팅방

import Foundation

func solution(_ record:[String]) -> [String] {
//  var userDic = [String: String]()
//  var result = [String]()
//
//  for value in record {
//    let record = value.split(separator: " ")
//    if String(record[0]) != "Leave" {
//      let id = String(record[1])
//      let name = String(record[2])
//      userDic[id] = name
//    }
//  }
//  
//  for value in record {
//    let info = value.split(separator: " ")
//    
//    if String(info[0]) != "Change" {
//      let userId = String(info[1])
//      var message = ""
//      
//      if String(info[0]) == "Enter" {
//        message = "\(userDic[userId]!)님이 들어왔습니다."
//      } else if String(info[0]) == "Leave" {
//        message = "\(userDic[userId]!)님이 나갔습니다."
//      }
//      
//      result.append(message)
//    }
//  }
//  
//  return result
  
  var userDic = [String: String]()
  var result = [String]()
  
  for value in record {
    let info = value.split(separator: " ")
    let userId = String(info[1])
    
    if String(info[0]) != "Leave" {
      userDic[userId] = String(info[2])
    }
    
    if String(info[0]) == "Enter" {
      if userDic[userId] == nil {
        userDic[userId] = String(info[2])
      }
    } else if String(info[0]) == "Leave" {
      userDic.removeValue(forKey: userId)
    } else if String(info[0]) == "Change" {
      
    }
  }
  
  for value in record {
    let info = value.split(separator: " ")
    let userId = String(info[1])
    var message = ""
    
    if String(info[0]) == "Enter" {
      message = "\(userDic[userId]!)님이 들어왔습니다."
    } else if String(info[0]) == "Leave" {
      message = "\(userDic[userId]!)님이 나갔습니다."
    }
    
    if message != "" {
      result.append(message)
    }
    
  }
  
  return result
}


print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))
