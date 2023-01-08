//
//  memApp.swift
//  mem
//
//  Created by Norah Abass AlOtaibi on 11/06/1444 AH.
//
import Foundation
import SwiftUI
import UIKit
//@main
class Card:Identifiable, ObservableObject {
//    @main
    class AppDelegate: UIResponder, UIApplicationDelegate {
        //
        var window: UIWindow?
        
        
        
        
    }
    
    
    
var id = UUID()
@Published var isFaceUp = false
@Published var isMatched = false
    var text:String
    init(text:String){
        self.text = text
    }
    func turnOver(){
        self.isFaceUp.toggle()
    }
    }
let cardValues: [String] = [
"🍕", "🍔","🍒", "🐥", "🐱", "🐸", "🍩", "👍🏼", "🥳","😍","🍓", "🍟"
]
func createCardList() -> [Card] {
    //creat a blank list
    var CardList = [Card]()
    
    for cardValue in cardValues {
        CardList.append(Card(text: cardValue))
        CardList.append(Card(text: cardValue))

    }
    return CardList
}
let faceDownCard = Card(text: "?")
//let faceDownCard = card(Text:"1")
