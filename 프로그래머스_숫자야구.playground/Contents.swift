import Foundation

func solution(_ baseball:[[Int]]) -> Int {

    var arr = Set<Int>()
    
    for i in 1...9 {
        for j in 1...9 {
            for k in 1...9 {
                if (i != j) && (i != k) && (j != k) {
                    arr.insert(i*100+j*10+k)
                }
            }
        }
    }
    
    var strike = 0
    var ball = 0
    
    for i in 0...baseball.count-1 {

        let tempNum = "\(baseball[i][0])"
        var tempArrNum = ""
        
        for s in arr {
            tempArrNum = "\(s)"
            for j in 0...2 {
                let a = tempArrNum[tempArrNum.index(tempArrNum.startIndex, offsetBy: j)]
                let b = tempNum[tempNum.index(tempNum.startIndex, offsetBy: j)]
                if a == b {
                    strike = strike + 1
                }
                else {
                    if tempNum.contains(a) {
                        ball = ball + 1
                    }
                }
            }
            if baseball[i][1] == strike && baseball[i][2] == ball {
                
            }
            else {
                arr.remove(s)
            }
            strike = 0
            ball = 0
        }
        print(arr)
    }
    return arr.count
}

solution([[123, 1, 1], [356, 1, 0], [327, 2, 0], [489, 0, 1]])
