//
//  DiceView.swift
//  DiceRoller
//
//  Created by Aditya Sarraf on 22/12/24.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
       
        VStack {
            Button(action:rollDice){
                Image(systemName:"die.face.\(numberOfPips).fill")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundStyle(.black, .white)
                
            }
            
        }
    }
    
    func rollDice() {  numberOfPips = Int.random(in: 1...6)}
}
   


#Preview {
    DiceView()
}
