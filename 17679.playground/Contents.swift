// [1차] 프렌즈4블록

//func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
//  
//  var newBoard = board.map{Array($0)}
//  var count = 0
//  var removePoint = Set<[Int]>()
//  
//  while true {
//    for i in 0..<m-1 {
//      for j in 0..<n-1 {
//        let point = newBoard[i][j]
//        
//        if point == "-" {
//          continue
//        }
//        
//        if newBoard[i][j + 1] == point,
//            newBoard[i + 1][j] == point,
//           newBoard[i + 1][j + 1] == point {
//          removePoint.insert([i, j])
//          removePoint.insert([i, j + 1])
//          removePoint.insert([i + 1, j])
//          removePoint.insert([i + 1, j + 1])
//        }
//      }
//    }
//    
//    if !removePoint.isEmpty {
//      count += removePoint.count
//      
//      for point in removePoint {
//        newBoard[point[0]][point[1]] = "-"
//      }
//      
//      removePoint = Set<[Int]>()
//    } else {
//      break
//    }
//    
//    for j in stride(from: 0, to: n, by: 1) {
//      var first = 0
//      if newBoard[m-1][j] == "-" {
//        first = m - 1
//      }
//      
//      for i in stride(from: m - 2, through: 0, by: -1) {
//        if newBoard[i][j] == "-" {
//          if i > first {
//            first = i
//          }
//        } else if newBoard[i+1][j] == "-" {
//          newBoard[first][j] = newBoard[i][j]
//          newBoard[i][j] = "-"
//          first -= 1
//        }
//      }
//    }
//    
//    print(newBoard)
//  }
//  
//  return count
//}
//
//
//solution(4, 5, ["CCBDE", "AAADE", "AAABF", "CCBBF"])

























func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    return 0
}

solution(4, 5, ["CCBDE", "AAADE", "AAABF", "CCBBF"])
