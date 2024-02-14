// 땅따먹기

import Foundation

//func solution(_ land:[[Int]]) -> Int {
//  var answer = 0
//  
//  var flag = [Bool].init(repeating: false, count: land[0].count)
//  
//  
//  for (i, row) in land.enumerated() {
//    var max = 0
//    var index: Int?
//    
//    for (j, r) in row.enumerated() {
//      if max < r && !flag[j] {
//        max = r
//        index = j
//      }
//    }
//    if let index = index {
//      flag[index] = true
//    }
//    
//    answer += max
//  }
//  
//  return answer
//}
//
//
//solution([[1,1,1,1],[2,2,2,2],[3,3,3,6],[4,4,4,7]])


//func solution(_ land:[[Int]]) -> Int{
//  var land = land
//  var maxIndex = -1
//  
//  for i in 1..<land.count {
//    land[i][0] += max(land[i - 1][1], max(land[i - 1][2], land[i - 1][3]))
//    land[i][1] += max(land[i - 1][0], max(land[i - 1][2], land[i - 1][3]))
//    land[i][2] += max(land[i - 1][0], max(land[i - 1][1], land[i - 1][3]))
//    land[i][3] += max(land[i - 1][0], max(land[i - 1][1], land[i - 1][2]))
//    print("\(i) \(land)")
//  }
//  
////  print(land)
//  return land.last!.max() ?? 0
//}
//
//solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]])
















func solution(_ land:[[Int]]) -> Int{
    var answer = 0
    
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer
}
