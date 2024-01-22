import UIKit

func solution(_ s:String) -> String {
    let sArr: [Int] = s.split(separator: " ").map{Int($0)!}
    return "\(sArr.min()!) \(sArr.max()!)"
}

print(solution("1 2 3 4"))
