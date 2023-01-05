import Foundation
func twoSum(_ nums : [Int], target : Int) -> [Int] {
    print("Input is \(nums)")
    print("target is \(target)")
    var dict : [Int:Int] = [Int:Int]()
    for i in 0..<(nums.count) {
       
        let possiblePair = target - nums[i]
   
        if let foundIndexOfPair = dict[possiblePair] {
            print("for \(nums[i]) \n")
            print("found \(possiblePair) at index \(foundIndexOfPair)")
            return [i, foundIndexOfPair]
        }else{
            
            dict[nums[i]] = i
        }
    }
    return []
}
let result = twoSum([2,7,11,15], target:13)
print(result)
