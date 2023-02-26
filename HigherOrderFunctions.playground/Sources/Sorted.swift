import Foundation

/*
let descendingNumbers = numbers.sorted { val1, val2 in
    val1 > val2
}
*/

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

let descendingNumbers = numbers.sorted(by: >)

public final class Sorted {
    
    public init() {
        
    }
    
    public func printDescendingOrder() {
        debugPrint("descending order of array:", descendingNumbers)
    }
}
