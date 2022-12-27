import Foundation
func pascalTriangle(_ numrows : Int) -> [[Int]]{
    var result = [[Int]]()
    result.reserveCapacity(numrows)
    if numrows == 0 {
        return []
    }else if numrows == 1 {
        return [[1]]
    }else {
        result.append([1])
        for i in 1..<numrows {
            var newRow = [1]
            let prevRow = result[i-1]
            for j in 1..<prevRow.count {
                newRow.append(prevRow[j]+prevRow[j-1])
            }
            newRow.append(1)
            result.append(newRow)
        }
        
        
    }
    return  result
}
let answer = pascalTriangle(10)
for i in answer {
    print(i)
    print("\n")
}
