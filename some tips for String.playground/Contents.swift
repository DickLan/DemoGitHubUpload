import UIKit


func intro() {
    print("a")
}

func chord(name:String) {
    print("bbb")
    print("ccc\(name)")
}

class car{
    var length = 20
    var color = String()
    func openDoor() -> Void {
        print("door is opened")
    }
}

class ToyotaCar:car{
    var brandName = "Toyota"
    
    func LuiGuan() -> Void {
        print("become LuiGuan already")
    }
}

var a:car = ToyotaCar()
a.color="Blue"
print(a.color)

var b = "ABC"

for i in b {
    print(i)
}

import Foundation


var testStr = "LongDickA"

if testStr.range(of: "long") != nil{
    print("yes True")
}
var letterIndex = 65 //65==A
var letterS = String(Character(UnicodeScalar(letterIndex)!))

"""
let findString = "Hello,world"
let needle: Character = "w"
if let idx = findString.index(of: needle) {
    let pos = findString.distance(from: findString.startIndex, to: idx)
    print("Found \(needle) at position\(pos)")
}
"""

let findString2 = "Hello,world"
let needle2: Character = "w"
if let idx = findString2.index(of: needle2) {
    let pos = findString2.distance(from: findString.startIndex, to: idx)
    print("Found \(needle2) at position\(pos)")
}

let iid = findString.index(of: "l")
print(iid)

var mess = "Heelo"
var index = mess.index(mess.startIndex, offsetBy: 4 , limitedBy: mess.endIndex)
print(mess[index!])
mess.insert("A", at: mess.index(mess.startIndex, offsetBy: 2))
mess.remove(at: mess.index(before: mess.index(mess.startIndex, offsetBy: 1)))
print(mess)
