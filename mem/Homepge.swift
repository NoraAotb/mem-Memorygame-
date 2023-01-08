//

import SwiftUI

//struct Homepage: View {
//    @State private var GameView = false
//
//    var body: some View {
//        NavigationView{
//            VStack{
////                NavigationLink ("", destination: GamePlay()
////               )
//                Image("blue1")
//
//                    .resizable()
//                    .padding(8.0)
//                    .scaledToFill()
//                    .frame(width: 500, height: 500)
//
//                    .clipped()
//
//
//                Button{
//                   GameView.toggle()
//
//                }label:{
//                    Text("START")
//                    .frame(width: 200 , height: 50, alignment: .center)
//                    .controlSize(.large)
//                                   .background (Color (hex: "F77D8E"))
//
//
//                        .foregroundColor(.black)
//
//                }

//                Button("PLAY") {
//                    showGamePlay.toggle()
//                }
//
//                if showGamePlay {
//                    Text("You should follow me on Twitter: @twostraws")
//                        .font(.largeTitle)
                    //                Button {
                    //                } label: {
                    //                    Text("START")
                    //                        .frame(width: 200 , height: 50, alignment: .center)
                    //                }
                    //                .controlSize(.large)
                    //                .background (Color (hex: "F77D8E"))
                    //                .foregroundColor (.black)
                    //                .cornerRadius(5)
                    //                .padding (20)
                    
                    //            Label("START", systemImage: "arrow.right")
                    //                .padding (20)
                    //                . frame (maxWidth: .infinity)
                    //                .background (Color (hex: "F77D8E"))
                    //                .foregroundColor (.white)
                    //                .cornerRadius (20, corners: [.topRight, .bottomLeft,
                    //                                             .bottomRight])
                    //                .cornerRadius (8, corners: [.topLeft])
//                }
//            }
        
//        .fullScreenCover(isPresented: $GameView) {
//            mem.GameView()
      
//        }
//        }
//    }
//}
//    struct Homepage_Previews: PreviewProvider {
//        static var previews: some View {
//           Homepage()
//        }
//    }
//
//





//  LunchScreen.swift
//  mem
//
//  Created by Norah Abass AlOtaibi on 11/06/1444 AH.
//

import SwiftUI

struct Homepge: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive {
            GameView()
        } else {
            VStack {
                VStack {
                    Image("blue1")
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 2.1))
                    {
                        self.size = 0.5
                        self.opacity = 1.00
                    }
                }
            }
            .onAppear(){
                DispatchQueue.main.asyncAfter(deadline:
                        .now() + 2.0) {
                    withAnimation {
                        
                        self.isActive = true
                        
                    }
                    
                 
                }
            }// End of onAppear
        }// End of else
    }// End of body
}// End of SplashscreenView struct

    
    

//struct LunchScreen: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//


struct Homepge_Previews: PreviewProvider {
    static var previews: some View {
       Homepge()
    }
}
