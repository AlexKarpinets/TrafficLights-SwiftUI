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
                CircleCustom(color: .yellow)
                    .padding(.top)
                CircleCustom(color: .green)
                    .padding()
                Spacer()
                
                ButtonCustom()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
