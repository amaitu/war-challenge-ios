//
//  ContentView.swift
//  war-challenge
//
//  Created by amaitu on 20/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard: String = "card3"
    @State private var cpuCard: String = "card4"
    @State private var playerScore: Int = 0
    @State private var cpuScore: Int = 0
    
//https://www.youtube.com/watch?v=F2ojC6TNwws
    
    
    var body: some View {
        VStack {
            Spacer()
            Image("logo")
            
            Spacer()
            
            HStack{
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
            
            Spacer()

            Button(action: {
                // generate a random number between 2 and 14
                let playerRandom = Int.random(in: 2 ... 14)
                let cpuRandom = Int.random(in: 2 ... 14)
                
                // update the cards:
                playerCard = "card" + String(playerRandom)
                cpuCard = "card" + String(cpuRandom)
                
                
                playerScore += 1
                cpuScore += 1
                
                
            }, label: {
                Image("dealbutton")
            })
            
            Spacer()
            
            HStack{
                Spacer()
                VStack() {
                    Text("Player")
                        .font(.headline)
                        .padding(.bottom, 10.0)
                    Text(String(playerScore))
                        .font(.largeTitle)
                }
                
                Spacer()
                
                VStack() {
                    Text("CPU")
                        .font(.headline)
                        .padding(.bottom, 10.0)
                    Text(String(cpuScore))
                        .font(.largeTitle)
                }
                Spacer()
            }.foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            Spacer()
            
        }
        .background(
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
