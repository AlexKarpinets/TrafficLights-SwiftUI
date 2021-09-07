//
//  ContentView.swift
//  TrafficLights SwiftUI
//
//  Created by Karpinets Alexander on 07.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
        Color.black
            .ignoresSafeArea()
        VStack {
        CircleCustom(color: .red)
            .opacity(0.5)
        CircleCustom(color: .yellow)
            .opacity(0.5)
            .padding(.top)
        CircleCustom(color: .green)
            .opacity(0.5)
            .padding()
        Spacer()
            .padding()
            ButtonCustom(text: Text("START"))
        }
        
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
