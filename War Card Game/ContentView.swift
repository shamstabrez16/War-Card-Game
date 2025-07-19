//
//  ContentView.swift
//  War Card Game
//
//  Created by Shams tabrez Mohammad on 7/6/25.
//

import SwiftUI

struct ContentView: View {
    @State  var playerCard: String = "card7"
    @State var cpuCard : String = "card13"
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
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
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }.foregroundColor(Color.white)
                Spacer()
            }
            
        }
    }
    
    func deal(){
       var randomPlayerCardValue: Int = Int.random(in: 2...14)
        var randomCPUCardValue: Int = Int.random(in: 2...14)
        // Randomize the players card
        playerCard = "card"+String(randomPlayerCardValue)
        // Randomize the CPU card
        cpuCard = "card"+String(randomCPUCardValue)
        //Update the scores.
        if(randomPlayerCardValue > randomCPUCardValue){
            //Add 1 to the player
            playerScore+=1
        }else if(randomCPUCardValue > randomPlayerCardValue){
            // Add 1 to the CPU
            cpuScore+=1
        }else{
            playerScore+=1
            cpuScore+=1
        }
    
    }
    
    
}

#Preview {
    ContentView()
}
