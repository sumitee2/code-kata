import Foundation

func populatePascal(n: Int) -> Int {
    
    var millCount = 0
    var mc = 0
    
    for k in 22...n {
        
        let rem = 1 + (k%2)
        var rowArray = [1]
        let mid = k/2
        
        for i in 1...mid {
            let x = (rowArray[i-1]*(k-i+1))/(i)
            rowArray.insert(x, atIndex: i)
            
            if x > 1000000 {
                millCount += 2*(Int(mid)-i) + rem
                break
            }
        }
    }
    
    return millCount
}

let v = populatePascal(100)