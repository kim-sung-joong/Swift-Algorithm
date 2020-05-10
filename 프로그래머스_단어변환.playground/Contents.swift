import UIKit

var answer = 1000000

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    //배열안에 target값이 없으면 0을 리턴한다.
    if !words.contains(target) {
        return 0
    }
    
    var visited: [Bool] = Array(repeating: false, count: words.count)
    
    DFS(begin: begin, target: target, words: words, visited: visited, count: 0)
    
    return answer
}

func DFS(begin: String, target:String, words:[String], visited: [Bool], count: Int) {
    if begin == target {
        if answer > count {
            answer = count
        }
        return
    }
    var counting = 0
    var visitedTemp = visited
    print(visitedTemp)
    for i in 0...words.count-1 {
        counting = 0
        for j in 0...words[i].count-1 {
            if !visitedTemp[i] && begin[begin.index(begin.startIndex, offsetBy: j)] != words[i][words[i].index(words[i].startIndex, offsetBy: j)] {
                counting = counting + 1
            }
        }
        if counting == 1 {
            visitedTemp[i] = true
            DFS(begin: words[i], target: target, words: words, visited: visitedTemp, count: count+1)
            visitedTemp[i] = false
            DFS(begin: begin, target: target, words: words, visited: visitedTemp, count: count)
        }
    }
}
