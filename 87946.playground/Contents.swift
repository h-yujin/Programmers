// 피로도

import Foundation
//
//func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
//  
//  var ans = 0
//  explore(dungeons: dungeons, ans: &ans, k: k, count: 0)
//  
//  return ans
//}
//
//func explore(dungeons: [[Int]], ans: inout Int, k: Int, count: Int) {
//  ans = max(ans, count)
//  print("dungeons : \(dungeons)")
//  for (i, dungeon) in dungeons.enumerated() {
//    var newDungens = dungeons
//    
////    print("newDungens \(newDungens)")
//    
//    if dungeon[0] <= k && dungeon[1] <= k {
//      let newK = k - dungeon[1]
//      newDungens.remove(at: i)
//      explore(dungeons: newDungens, ans: &ans, k: newK, count: count + 1)
//    }
//  }
//  
//}


func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
  var visited = Array.init(repeating: false, count: dungeons.count)
  var ans = 0
  
  func dfs(_ now: Int, depth: Int) {
    print("depth :\(depth), ans :\(ans) now \(now)")
    ans = max(depth, ans)
    
    
    for i in 0..<dungeons.count {
      if !visited[i] && now >= dungeons[i][0] {
        visited[i] = true
        dfs(now - dungeons[i][1], depth: depth + 1)
        visited[i] = false
      }
    }
  }
  
  dfs(k, depth: 0)
  
  return ans
}
  


solution(80, [[80,20],[50,40],[30,10]])
