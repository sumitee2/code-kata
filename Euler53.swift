import Foundation

    let start = NSDate()
    var millCount = 0
    var mc = 0

    for k in 22...100 {
        mc += 1
        let rem = 1 + (k%2)
        var prev = 1
        let mid = k/2
        
        for i in 1...mid {
            mc += 1
            let x = (prev*(k-i+1))/(i)
            prev = x
            
            if x > 1000000 {
                millCount += 2*(Int(mid)-i) + rem
                break
            }
        }
    }
    
    print(millCount)
    let end = NSDate();
    let timeInterval: Double = end.timeIntervalSinceDate(start); // <<<<< Difference in seconds (double)

    print("Time: \(timeInterval) seconds, loops: \(mc)");
