// 점프와 순간 이동
import Foundation

func solution(_ n:Int) -> Int {
  var ans:Int = 0
  
  var n = n
  while n > 0 {
    if n % 2 == 1 {
      ans = ans + 1
    }
    
    n = n / 2
  }
  
  return ans
}


print(solution(5000))






















func solution(_ n:Int) -> Int {
    var ans:Int = 0
    
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return ans
}
