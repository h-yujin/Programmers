// 주차 요금 계산

import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
  var time = fees[0]
  var fee = fees[1]
  var unitTime = fees[2]
  var unitFee = fees[3]
  
  var dic = [String: (time : String, status: String)]() // '차량번호 : 주차시간, 주차상태'
  var resultDic = [String: Int]() // '차량번호, 총 주차시간'
  var feeDic = [String: Int]() // 차량번호, 금액
  
  func updateResultDic(_ carNumber: String, outMinute: Int, inMinute: Int) {
    let parkingMinute = outMinute - inMinute
    if let result = resultDic[carNumber] { // 기존 입출차 이력 있으면 업데이트
      resultDic.updateValue(result + parkingMinute, forKey: carNumber)
    } else {
      resultDic.updateValue(parkingMinute, forKey: carNumber)
    }
    dic.removeValue(forKey: carNumber)
  }
  
  
  for record in records {
    let data = record.split(separator: " ").map {String($0)}
    
    let time = data[0]
    let carNumber = data[1]
    let status = data[2]
    
    
    if let info = dic[carNumber] { // 출차
      
      let inTime = info.time.changeTime()
      let inMinute = inTime[0] * 60 + inTime[1] // 분으로 변환
      let outTime = time.changeTime()
      let outMinute = outTime[0] * 60 + outTime[1] // 분으로 변환
      
      updateResultDic(carNumber, outMinute: outMinute, inMinute: inMinute)
    } else {
      dic.updateValue((time: time, status: status), forKey: carNumber)
    }
  }
  

  
  // 출차 내역이 없는 나머지 것들 23:59에 출차된 것으로 간주
  for info in dic {
    let inTime = info.value.time.changeTime()
    let inMinute = inTime[0] * 60 + inTime[1] // 분으로 변환
    let outTime = "23:59".changeTime()
    let outMinute = outTime[0] * 60 + outTime[1] // 분으로 변환
    
    updateResultDic(info.key, outMinute: outMinute, inMinute: inMinute)
  }
  
  for result in resultDic {
    var parkingTime = result.value
    var parkingFee = 0
    if parkingTime > time {
      // 초과한 시간이 단위 시간으로 나누어 떨어지지 않으면, 올림합니다
      parkingFee = fee + (Int(ceil(Double(parkingTime - time) / Double(unitTime)))) * unitFee
    } else {
      parkingFee = fee
    }
    
    feeDic.updateValue(parkingFee, forKey: result.key)
  }
  
  return feeDic.sorted {$0.key < $1.key}.map {$0.value}
}

extension String {
  func changeTime() -> [Int] { // 시각을 시간으로 변경
    return self.split(separator: ":").map {Int(String($0))!}
  }
  
}



//solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"])

//solution([120, 0, 60, 591], ["16:00 3961 IN","16:00 0202 IN","18:00 3961 OUT","18:00 0202 OUT","23:58 3961 IN"])
solution([1, 461, 1, 10], ["00:00 1234 IN"])
