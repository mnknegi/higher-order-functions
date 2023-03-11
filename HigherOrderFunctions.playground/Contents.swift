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

debugPrint("Indian Rupee coins: \(indianRupee)")

/// Dictionary
let info = ["name": "foo",
            "city": "new delhi",
            "job": "developer",
            "contact": "1234567890"
            ]

//let updatedInfo = info.map { ($0.key.uppercased(), $0.value.capitalized) }
let updatedInfo = info.map { ($0.uppercased(), $1.capitalized) }

debugPrint("Employee info: \(updatedInfo)")


// MARK: - CompactMap

let numbers = [2,6,10, nil, 49, 28, nil, 15, nil, 60]

let nonNilNumbers = numbers.compactMap { $0 != nil ? $0! * 2 : nil }

debugPrint("Collection with non nil elements: \(nonNilNumbers)")

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


// flatMap with nil values in inner collection
let valuesWithNil = [[2, nil, 5], [4, 3, nil], [nil, nil, 1]]

let flatMapResult = valuesWithNil.flatMap { $0 }

debugPrint("non nil values: ", flatMapResult)

// Dictionary

let dict: [[String: Any]] = [["name": "Mayank", "age": 30],
            ["job": "iOS Developer", "title": "Tech Lead"],
            ["location": "Kotdwara", "state": "Uttarakhand", "zip": "246149"]]

let updatedDict = dict.flatMap { $0 }

debugPrint("Employee Info: ", updatedDict)
