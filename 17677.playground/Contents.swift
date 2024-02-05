//func solution(_ str1:String, _ str2:String) -> Int {
//  var str1 = str1.lowercased().map{ String($0) }
//  var str2 = str2.lowercased().map{ String($0) }
//  
//  var arr1 = makeArr(str: str1)
//  var arr2 = makeArr(str: str2)
//  
//  var setArr1 = Set(arr1)
//  var setArr2 = Set(arr2)
//
//  
//  //교집합 구하기
//  var intersection = 0
//  let inter = arr1.filter{ arr2.contains($0) }
//  
//  for i in Set(inter) {
//    let count1 = arr1.filter{ $0 == i }.count
//    let count2 = arr2.filter{ $0 == i }.count
//    intersection += min(count1, count2)
//  }
//  
//  // 합집합 구하기
//  let unionCount =  arr1.count + arr2.count - intersection
//  
//  if unionCount == 0 {
//    return 65536
//  } else {
//    return Int((Double(intersection) / Double(unionCount)) * 65536)
//  }
//}
//
//func makeArr(str: [String]) -> [String] {
//  var arr = [String]()
//  
//  for i in 1..<str.count {
//    if Character(str[i - 1]).isLetter && Character(str[i]).isLetter {
//      let newS = str[i - 1] + str[i]
//      arr.append(newS)
//    }
//  }
//  return arr
//}
//
//
//solution("FRANCE", "french")
//solution("handshake", "shake hands")
//solution("aa1+aa2", "AAAA12")
//solution("E=M*C^2", "e=m*c^2")
//solution("abab", "baba")
//





















func solution(_ str1:String, _ str2:String) -> Int {
    return 0
}
