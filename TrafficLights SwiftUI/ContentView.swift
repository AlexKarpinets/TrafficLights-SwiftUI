//
//  ContentView.swift
//  TrafficLights SwiftUI
//
//  Created by Karpinets Alexander on 07.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleCustom(color: .red, opacity: redLightState)
                CircleCustom(color: .yellow, opacity: yellowLightState)
                    .padding(.top)
                CircleCustom(color: .green, opacity: greenLightState)
                    .padding()
                Spacer()
                
                ButtonCustom(buttonTitle: buttonTitle) {
                    buttonTitle = "NEXT"
                    
                    switch currentLight {
                    case .red:
                        redLightState = 1
                        greenLightState = 0.3
                        currentLight = .yellow
                    case .yellow:
                        redLightState = 0.3
                        yellowLightState = 1
                        currentLight = .green
                    case .green:
                        greenLightState = 1
                        yellowLightState = 0.3
                        currentLight = .red
                    }
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
