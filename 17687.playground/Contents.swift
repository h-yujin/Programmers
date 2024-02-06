// [3차] n진수 게임

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
  
  var currentNum = 0 // 현재 불러야하는 숫자 (10진수)
  var radixArray = String(currentNum, radix: n).map {String($0)} // 현재 불러야하는 숫자 (n진수)
  
  var index = 0 // 사람 순서
  
  var roopCount = m * (t - 1) + p // 미리 구해야할 루프 횟수
  var result = [String]()
  
  for i in 0..<roopCount {
    let remove = radixArray.removeFirst()
    if i % m == p - 1 { // 튜브순서
      result.append(remove.uppercased())
    }
    
    // 게임 참가 순서 변경
    index += 1
    if index > m {
      index = 0
    }
    
  
    if radixArray.isEmpty {
      // 현재 불러야 하는 숫자 변경
      currentNum += 1
      radixArray = String(currentNum, radix: n).map {String($0)}
    }
  }
  
  
  return result.joined()
}

//solution(10, 2, 12, 4)
//solution(2, 4, 2, 1)
solution(16, 16, 2, 1)
//solution(16, 16, 2, 2)
