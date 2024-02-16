// [3차] 파일명 정렬

func solution(_ files:[String]) -> [String] {
  
  var list = [(Int ,String, String, String)]()
  
  for (index, file) in files.enumerated() {
    let charList = file.map{String($0)}
    var head = ""
    var number = ""
    var tail = ""
    var numberFlag = true
    for i in 0..<charList.count {
      if let c = Int(charList[i]), numberFlag {
        number.append("\(c)")
      } else {
        if number == "" {
          head.append(charList[i])
        } else if head != "" && number != "" {
          numberFlag = false
          tail.append(charList[i])
        }
      }
    }
    list.append((index, head, number, tail))
  }
  
  list.sort {
    if $0.1.lowercased() == $1.1.lowercased() {
      if Int($0.2)! == Int($1.2)! {
        // HEAD, NUMBER 가 같으면 원래 입력 들어온 순으로
        return $0.0 < $1.0
      } else {
        // NUMBER 숫자순으로 정렬
        return Int($0.2)! < Int($1.2)!
      }
    } else {
      // HEAD 사전순으로 정렬
      return $0.1.lowercased() < $1.1.lowercased()
    }
  }
  
  var result = [String]()
  for l in list {
    result.append("\(l.1)\(l.2)\(l.3)")
  }
  
  print(result)
  return result
}

//solution( ["img12.png", "img10.png", "img02.png", "img1.png", "IMG01.GIF", "img2.JPG", "img3"])

//solution( ["F-5", "F-555555 Freedom Fighter", "B-50 Superfortress", "A-10 Thunderbolt II", "F-14 Tomcat"])

solution(["O00321", "O49qcGPHuRLR5FEfoO00321"])
