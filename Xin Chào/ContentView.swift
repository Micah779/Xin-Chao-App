//
//  ContentView.swift
//  Xin Chào
//
//  Created by Micah Aldrich on 9/23/23.
//

import SwiftUI

struct ContentView: View {
    @State var theCardNum: Int = 1
    @State var theCard: String = "c1"
    var body: some View {
        ZStack {
            Color(.white)
                .opacity(0.8)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("xinchao_logo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(theCard)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .padding()
                Spacer()
                HStack {
                    Spacer()
                    Button(action: backCard) {
                        Text("BACK")
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .padding()
                            .border(.black)
                    }
                    Spacer()
                    Button(action: resetCard) {
                        Text("RESET")
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .padding()
                            .border(.black)
                    }
                    Spacer()
                    Button(action: flipCard) {
                        Text("FLIP")
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .padding()
                            .border(.black)
                    }
                    Spacer()
                    
                }
                Spacer()
            }
        }
    }
    
    func flipCard() {
        if (theCardNum < 100){
            theCardNum += 1
            theCard = "c\(theCardNum)"
        }
    }
    func backCard() {
        if (theCardNum > 1){
            theCardNum -= 1
            theCard = "c\(theCardNum)"
        }
    }
    func resetCard() {
        theCardNum = 1
        theCard = "c\(theCardNum)"
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
