// 짝지어 제거하기


import Foundation

func solution(_ s:String) -> Int{
  var arr = s.map{String($0)}
  var result = [String]()
  
  for value in arr {
    if !result.isEmpty && result.last == value {
      result.removeLast()
    } else {
      result.append(value)
    }
  }
  
  return result.isEmpty ? 1 : 0
}

print(solution("cdcd"))




















func solution(_ s:String) -> Int{
    var answer:Int = -1

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer
}
