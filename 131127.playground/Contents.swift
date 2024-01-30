// 할인 행사


import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
  let count = number.reduce(0, +)
  var result = 0
  
  var dic: [String: Int] = [:]
  for i in 0..<want.count {
    dic.updateValue(number[i], forKey: want[i])
  }
  
  for i in 0...discount.count - count {
    if compareProduct(productList: Array(discount[i..<i+count]), wantList: dic) {
      result += 1
    }
  }
  return result
}

// 원하는 리스트에서 해당하는 마트 리스트 빼기, 원하는 리스트이 개수가 0이면 그 i를 리턴
private func compareProduct(productList: [String], wantList: [String: Int]) -> Bool {
  var wantList = wantList
  for product in productList {
    if let value = wantList["\(product)"], value > 0 {
      wantList["\(product)"] = value - 1
    }
  }
  if wantList.values.reduce(0, +) == 0 {
    return true
  } else {
    return false
  }
}


//solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"])
//print(solution(["banana", "apple", "rice", "pork", "pot"], [3, 2, 2, 2, 1], ["chicken", "apple", "apple", "banana", "rice", "apple", "pork", "banana", "pork", "rice", "pot", "banana", "apple", "banana"]))
print(solution(["apple"], [10], ["banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana", "banana"]))


