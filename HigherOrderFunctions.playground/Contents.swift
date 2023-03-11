import Foundation

// MARK: - Map

/*
 Without using Map function

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
/// Output: "Indian Rupee coins: " ["₹ 1", "₹ 2", "₹ 5", "₹ 10", "₹ 20", "₹ 50", "₹ 100", "₹ 200", "₹ 500", "₹ 2000"]

/// Dictionary
let info = ["name": "foo",
            "city": "new delhi",
            "job": "developer",
            "contact": "1234567890"
            ]

//let updatedInfo = info.map { ($0.key.uppercased(), $0.value.capitalized) }
let updatedInfo = info.map { ($0.uppercased(), $1.capitalized) }

debugPrint("Employee info: ", updatedInfo)
/// Output: "Employee info: " [("JOB", "Developer"), ("CITY", "New Delhi"), ("NAME", "Foo"), ("CONTACT", "1234567890")]

// MARK: - CompactMap

let numbers = [2,6,10, nil, 49, 28, nil, 15, nil, 60]

let nonNilNumbers = numbers.compactMap { $0 != nil ? $0! * 2 : nil }

debugPrint("Collection with non nil elements: ", nonNilNumbers)
/// Output: "Collection with non nil elements: " [4, 12, 20, 98, 56, 30, 120]

// MARK: - FlatMap
 
let sectionAStudents = ["Mayank", "Mahima", "Ashish"]
let sectionBStudents = ["Ved", "Vaasu"]
let sectionCStudents = ["Mahendra", "Laxmi"]

let class10Students = [sectionAStudents, sectionBStudents, sectionCStudents]

/*
 Without using Map function

var allStudents = [String]()
for students in class10Students {
    allStudents.append(contentsOf: students)
}
*/

var allStudents = class10Students.flatMap { $0 }

debugPrint("All class 10th students: ", allStudents)
/// Output: "All class 10th students: " ["Mayank", "Mahima", "Ashish", "Ved", "Vaasu", "Mahendra", "Laxmi"]

// flatMap with nil values in inner collection
let valuesWithNil = [[2, nil, 5], [4, 3, nil], [nil, nil, 1]]

let flatMapResult = valuesWithNil.flatMap { $0 }

debugPrint("flatMap with nil values: ", flatMapResult)
/// Output: "flatMap with nil values:  [Optional(2), nil, Optional(5), Optional(4), Optional(3), nil, nil, nil, Optional(1)]

// Dictionary

let dict: [[String: Any]] = [["name": "Mayank", "age": 30],
            ["job": "iOS Developer", "title": "Tech Lead"],
            ["location": "Kotdwara", "state": "Uttarakhand", "zip": "246149"]]

let updatedDict = dict.flatMap { $0 }

debugPrint("Employee Info: ", updatedDict)
/// Output: "Employee Info: " [(key: "age", value: 30), (key: "name", value: "Mayank"), (key: "title", value: "Tech Lead"), (key: "job", value: "iOS Developer"), (key: "location", value: "Kotdwara"), (key: "state", value: "Uttarakhand"), (key: "zip", value: "246149")]
