import UIKit

// 항상 ICN 에서 출발.
// 항공권 정보가 담긴 2차원 배열 tickets 가 매개변수로 주어짐
// 방문하는 공항경로를 배열에 담아서 리턴함.

// 모든 공항은 알파벳 대문자 3글자
// a -> b 로 가는 공항권

// 공항권은 모두 사용해야 함
// 가능한 경로가 2개 이상일 경우 알파벳 순서가 앞서는거임.

//

var answer = [String]()

func solution(_ tickets:[[String]]) -> [String] {
    
    var arr = [String]()
    var visited: [Bool] = Array(repeating: false, count: tickets.count)
    
    for i in 0...tickets.count-1 {
        for j in 0...tickets[i].count {
            if tickets[i][j] == "ICN" {
                print(tickets[i][j+1])
            }
        }
    }
    
    arr.append(tickets[0][0])
    arr.append(tickets[0][1])
    DFS(tickets: tickets, arr: arr, visited: visited, start: tickets[0][0])
    
    return answer
}

func DFS(tickets: [[String]], arr: [String], visited: [Bool], start: String) {
    
    //종료
    
    
    //계속
    for i in 0...tickets.count-1 {
        for j in 0...tickets[i].count {
            
        }
    }
    
    
}
