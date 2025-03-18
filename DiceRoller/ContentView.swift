//
//  ContentView.swift
//  DiceRoller
//
//  Created by Aditya Sarraf on 22/12/24.
//

import SwiftUI
let appBackground: [Color] = [
    .appBackgroundTop,
    .appBackgroundBottom
]
struct ContentView: View {
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .bold()
                .foregroundStyle(Color.white)
            Text("Tap on the Dice To roll it.")
                .foregroundStyle(.white)
                .padding()
            HStack{
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            HStack{
                Button("Remove Dice",systemImage: "minus.circle"){
                    withAnimation(.bouncy){
                        numberOfDice-=1}
                }
                .disabled(numberOfDice == 1)
                Button("Add Dice",systemImage: "plus.circle.fill"){
                    withAnimation(.spring){
                        numberOfDice+=1}
                }
                .disabled(numberOfDice==5)
                
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
            if(numberOfDice==1){
                Text("Min. number of Dice Reached")
                    .foregroundStyle(Color.red)
                    .padding()
                    .padding()
                    .padding()
                    .padding()
            }
            
            if(numberOfDice==5){
                Text("Max. number of Dice Reached").foregroundStyle(Color.red)
                    .padding()
                    .padding()
                    .padding()
                    .padding()
              
            }
                
            HStack{
                Text("Made By Aditya Sarraf")
                Image(systemName: "applelogo")}
            .foregroundStyle(Color.white)
        }
        
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Gradient(colors: appBackground))
                .tint(.white)
            }
        }
              



#Preview {
    ContentView()
}
