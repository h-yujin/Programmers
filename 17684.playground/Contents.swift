// [3차] 압축


//
//func solution(_ msg:String) -> [Int] {
//  
//  var startIndex = 0
//  var msgArr = msg.map {String($0)}
//  let arr = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ").map { String($0) }
//  var dic = [Int: String]()
//  var result = [Int]()
//  var dicCount = arr.count + 1
//  
//  for (i, value) in arr.enumerated() {
//    dic.updateValue(value, forKey: i + 1)
//  }
//  
//  
//  while startIndex < msgArr.count - 1 {
//    print("startIndex \(startIndex)")
//    
//    var endIndex = startIndex + 1
//    var w = msgArr[startIndex]
//    var newW = ""
//    // 현재 입력 글자 업데이트
//    while true {
//      let c = msgArr[(startIndex + 1)...endIndex].joined()
//      newW = w + c
//      print(newW)
//      
//      // dic에 포함되어 있는지 체크
//      if dic.contains(where: {$0.value == newW}) {
//        print("포함!")
//        w = newW
//        endIndex += 1
//      } else {
//        print("----dic.count :: \(dicCount)")
//        dic.updateValue(newW, forKey: dicCount)
//        dicCount += 1
//        break
//      }
//    }
//    
//    if let index = dic.filter({ $0.value == w }).first?.key {
//      result.append(index)
//      print("_____________________________________________")
//      print("index \(index)")
//      print("_____________________________________________")
//    }
//    
//    
//    print(dic.sorted {$0.key < $1.key})
//    
//    
//    startIndex = endIndex
//  }
//  
//  return []
//}

//func solution(_ msg:String) -> [Int] {
//  var result: [Int] = []
//  
//  let alphabets: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
//  var dict: [String: Int] = [:]
//  for (i, ch) in alphabets.enumerated() {
//    dict[String(ch)] = i+1
//  }
//  var msg: [String] = Array(msg).map { String($0) }
//  
//  var count = 0
//  var str: String = ""
//  while count < msg.count {
//    let ch = msg[count] //다음 글자
//    var tmpString = str + ch //현재 입력
//    print("ch \(ch)  tmpString \(tmpString)")
//    
//    guard let _ = dict[tmpString] else { //존재하지 않으면 사전 추가
//      dict[tmpString] = dict.count+1
//      result.append(dict[str]!) //출력
//      
//      str = ""
//      continue
//    }
//    
//    //존재하면 계속 탐색
//    str += ch
//    count += 1
//  }
//  
//  result.append(dict[str]!) //출력
//  
//  return result
//}



//solution("KAKAO")























//func solution(_ msg:String) -> [Int] {
//    return []
//}

