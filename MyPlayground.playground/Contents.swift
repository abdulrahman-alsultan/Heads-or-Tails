import UIKit

func tossCoin() -> String{
    print("Tossing a Coin!")
    
    let randString: String = ["Heads", "Tails"].randomElement()!
    print(randString)
    
    return randString
}

func tossMultipleCoins(num: Int) -> Double{
    var head: Int = 0
    var tmp: String = ""
    for _ in 0...num{
        tmp = tossCoin()
        if tmp == "Heads"{
            head += 1
        }
    }
    return Double(head)/Double(num)
}


print("Ratio of head toss to total toss: \(tossMultipleCoins(num: 20) * 100)%" )
