// 흩어진 종이 조각을 붙여 소수를 몇 개 만들 수 있는지 ?

import Foundation

var set = Set<Int>()
var arr = [String]()
var tr = [String]()
var visited = [Bool]()
var answer = 0

func solution(_ numbers:String) -> Int {
    var temp: Int = 0
    var tempString = ""
    for c in numbers {
        arr.append(String(c))
    }
    visited = Array(repeating: false, count: arr.count)
    for i in 1...arr.count {
        tr = Array(repeating: "", count: i)
//        perm(n: arr.count, k: 0)
        comb(n: 0)
    }
    return answer
}

func comb(n: Int) {
    if n == tr.count {
        var string = ""
        var temp: Int = 0
        for i in 0...tr.count-1 {
            string = string+tr[i]
        }
        
        temp = Int(string) ?? 0
        
        if temp>1 && isPrime(num: temp) && !set.contains(temp) {
            answer = answer + 1
            set.insert(temp)
        }
        return
    }
    else {
        for i in 0...arr.count-1 {
            if !visited[i] {
                visited[i] = true
                tr[n] = arr[i]
                comb(n: n+1)
                visited[i] = false
            }
        }
    }
}


func isPrime(num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}
print(solution("17"))
