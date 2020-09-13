import UIKit

var str = ["1","2","three","four","5"]

//print(str.sorted())
//let result = str.sorted { (x, y) -> Bool in
//    return x > y
//}
//print(result)

//let mapResult = str.map { (x) -> Int? in
//    return Int(x)
//}
//print(mapResult)

//let filterResult = str.filter { $0 > 5}
//
//print(filterResult)

//let reduceResult = str.reduce(0) { (result, x) -> Int in
//    return result + x
//}
//
//print(reduceResult)

//let compactMapResult = str.compactMap { Int($0) }
//print(compactMapResult)
//
//func lenth(value1: String, value2: String) -> Bool {
//    return value1.count < value2.count
//}
//
//str.sort(by: lenth)
//print(str)

//let result = str.filter {$0.count > 1}.map {$0.uppercased()}
//print(result)

//let result = str.contains {$0.first == "t"}
//print(result)


extension Array {
    /// Returns an array containing the results of mapping the given closure
    /// over the sequence's elements.
    ///
    /// In this example, `map` is used first to convert the names in the array
    /// to lowercase strings and then to count their characters.
    ///
    ///     let cast = ["Vivien", "Marlon", "Kim", "Karl"]
    ///     let lowercaseNames = cast.map { $0.lowercased() }
    ///     // 'lowercaseNames' == ["vivien", "marlon", "kim", "karl"]
    ///     let letterCounts = cast.map { $0.count }
    ///     // 'letterCounts' == [6, 6, 3, 4]
    ///
    /// - Parameter transform: A mapping closure. `transform` accepts an
    ///   element of this sequence as its parameter and returns a transformed
    ///   value of the same or of a different type.
    /// - Returns: An array containing the transformed elements of this
    ///   sequence.
    public func customMap<T>(_ transform: (Element) -> T) -> [T] {
        var result = [T]()
        for item in self {
            result.append(transform(item))
        }
        return result
    }
}


let result = str.customMap { (item) -> String in
    item.uppercased()
}

print(result)
