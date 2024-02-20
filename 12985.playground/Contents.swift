// 예상 대진표
import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
  var answer = 0
  var a = a
  var b = b
  
  while a != b {
    a = calculateNum(a)
    b = calculateNum(b)
    answer += 1
  }
  
  return answer
}

func calculateNum(_ num: Int) -> Int {
  if num % 2 == 0 {
     return num / 2
  } else {
    return (num + 1) / 2
  }
}


print(solution(8, 4, 7))






















func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
}
