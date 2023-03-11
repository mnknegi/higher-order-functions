import Foundation

/*
let sorted = Sorted()
sorted.printDescendingOrder()
*/

//------------------------<Map>-----------------------//
/*
 Without using higher order function

let coins = [1, 2, 5, 10, 20, 50, 100, 200, 500, 2000]

var indianRupee = [String]()

for coinValue in coins {
    let inr = "\u{20B9} \(coinValue)"
    indianRupee.append(inr)
}

debugPrint("Indian Rupee coins: ", indianRupee)
 */

/// Array

let coins = [1, 2, 5, 10, 20, 50, 100, 200, 500, 2000]

let indianRupee = coins.map({ "\u{20B9} \($0)" })

debugPrint("Indian Rupee coins: ", indianRupee)

/// Dictionary
let info = ["name": "foo",
            "city": "new delhi",
            "job": "developer",
            "contact": "1234567890"
            ]

//let updatedInfo = info.map { ($0.key.uppercased(), $0.value.capitalized) }
let updatedInfo = info.map { ($0.uppercased(), $1.capitalized) }

print("Employee info: ", updatedInfo)

//------------------------</Map>-----------------------//
