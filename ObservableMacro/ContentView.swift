//
//  ContentView.swift
//  ObservableMacro
//
//  Created by 김두운 on 8/6/24.
//

import SwiftUI

@Observable class NumberCounter {
    var number: Int = 0
    
    func increaseNumber() {
        number += 1
        print("number: ", number)
    }
}


struct ContentView: View {
    var numberCounter = NumberCounter()
    
    var body: some View {
        VStack {
            Text("\(self.numberCounter.number)")
            Button {
                self.numberCounter.increaseNumber()
            } label: {
                Text("+1 버튼")
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
