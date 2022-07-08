import UIKit
import Foundation



enum Phones:CaseIterable {
    case IphoneX
    case Iphone7
    case Iphone8
}
let phones = Phones.allCases
// allCases get the enum property array

phones.count

struct Song {
    let title: String
    let artist: String
    let duration: Int
    
    var formattedDuration: String{
        let minutes = duration/60
        let seconds = duration%60
        return "\(minutes)m \(seconds)s"
    }
    
    var formattedTitle:String{
        return "title:\(title), aritis:\(artist)"
    }
}
let song = Song(title: "A=-A", artist: "Master", duration: 152)
song.formattedDuration
song.formattedTitle

//property observer
class Hero{
    var name = "peter" {
        willSet {
            print("name will be changed from \(name) to \(newValue)")
        }
        didSet {
            print("name already changee from \(oldValue) to \(name)")
        }
    }
}
var myhero = Hero()
myhero.name = "Dick"
