/// N개의 최소공배수

import UIKit

func solution(_ arr:[Int]) -> Int {
  
  
  return arr.reduce(1) {lcm($0, $1)}
}


func gcd(_ a: Int, _ b: Int) -> Int {
  if b == 0 {
    return a
  } else {
    return gcd(b, a % b)
  }
}

func lcm(_ a: Int, _ b: Int) -> Int {
  return a * b / gcd(a, b)
}

print(solution([2,6,8,14]))

print(lcm(24, 14))


































func solution(_ arr:[Int]) -> Int {
  return 0
}
