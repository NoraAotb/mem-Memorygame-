//
//  ContentView.swift
//  mem
//
//  Created by Norah Abass AlOtaibi on 11/06/1444 AH.
//

import SwiftUI
import UIKit

struct GameView: View {
   // let text1:LocalizedStringKey = "text1"
    private var fourColumnGrid = [GridItem(.flexible()),
                                  GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    private var sixColumnGrid = [GridItem(.flexible()),
                                 GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
                                 ,GridItem(.flexible())
                                 ,GridItem(.flexible())]
    
    
    @State var cards = createCardList ().shuffled ()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    @State private var scoreTitle = ""
    @State private var score = 0
    var body: some View {
        GeometryReader{geo in
            VStack{
                //Text (text1)
               Text (" Memory Game ")
                    .font (.largeTitle)
                
                LazyVGrid(columns: fourColumnGrid, spacing: 10){
                    ForEach(cards){card in
                        cardView(card: card,
                                 width: Int(geo.size.width/4 - 10),
                                 MatchedCards: $MatchedCards,
                                 UserChoices: $UserChoices)
                    }
                }
                
                
                VStack{
                    //Text ("Match these cards to win:")
                    //Text ("Score - \(score)")
                      //  .foregroundColor (.black)
                    LazyVGrid(columns: sixColumnGrid, spacing: 5){
                        ForEach (cardValues, id:\.self) {cardValue in
                            
                            if !MatchedCards.contains(where: {$0.text ==
                                cardValue}) {
                                Text (cardValue)
                                    .font (.system(size: 40))
                            }
                            
                            
                           
                            
                            
                        }
                    }
                }
            }
        }
    }
}
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
