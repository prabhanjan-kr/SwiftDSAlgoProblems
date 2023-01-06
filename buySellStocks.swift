import Foundation
func buySellStocks(_ prices : [Int]) -> Int {
    guard !prices.isEmpty else {
        return 0
    }
    var minPrice = prices[0]
    var maxProfit = -1
    for p in prices {
        maxProfit = max(maxProfit, (p-minPrice))
        minPrice = min(minPrice, p)
    }
    return  maxProfit
}

let result = buySellStocks([17,33,41,5,6,7])
print(result)
