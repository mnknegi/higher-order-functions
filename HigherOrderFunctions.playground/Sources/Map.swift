import Foundation

let coins = [1, 2, 5, 10, 20, 100, 1000]

let americanDollar = coins.map { coinValue in
    return "\u{0024} \(coinValue)"
}

let indianRupee = coins.map( {"\u{20B9} \($0)" } )

public final class CurrencyConverter {
    
    public init() {}
    
    public func convert() {
        debugPrint("American Dollar coins: ", americanDollar)
        debugPrint("Indian Rupee coins: ", indianRupee)
    }
}

