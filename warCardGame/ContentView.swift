//
//  ContentView.swift
//  warCardGame
//
//  Created by 90309333 on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
        
        VStack{
            Spacer()
            Button {
                playerCard = "back"
                cpuCard = "back"
                playerScore = 0
                cpuScore = 0
            } label: {
                Image("logo")
            
             }
            Spacer()
            
            HStack {
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
        }
            
            Spacer()
            Button {
                let playerRan = Int.random( in:2...14)
                let cpuRan = Int.random( in:2...14)
                
                playerCard = "card" + String(playerRan)
                cpuCard = "card" + String(cpuRan)
                
                if playerRan > cpuRan {
                    playerScore += 1
                } else if playerRan != cpuRan {
                    cpuScore += 1
                }
            } label: {
                Image("dealbutton")
            }
            Spacer()
            

            HStack{
                Spacer()
                VStack{
                    Text("Player").font(.headline).foregroundColor(Color.white).padding(.bottom, 10.0)
                    Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                }
                
                Spacer()
                VStack{
                    Text("CPU").font(.headline).foregroundColor(Color.white).padding(.bottom, 10.0)
                    Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white)
                }
                Spacer()
                
            }
            Spacer()
        }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
