//
//  ButtonCustom.swift
//  TrafficLights SwiftUI
//
//  Created by Karpinets Alexander on 07.09.2021.
//

import SwiftUI

struct ButtonCustom: View {
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    var body: some View {
        
        
        Button.init(action: {
            buttonTitle = "NEXT"
            
            switch currentLight {
            case .red:
                CircleCustom(color: .red
                                .opacity(1))
                CircleCustom(color: .green
                                .opacity(0.3))
                currentLight = .yellow
            case .yellow:
                currentLight = .green
            case .green: 
                currentLight = .red
            }
        },
        label: {
            Text(buttonTitle)
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
        })
        .frame(width:200, height:60)
        .background(Color.blue)
        .cornerRadius(30)
        .overlay(
            Capsule().stroke(Color.white, lineWidth: 3))
        .padding()
    }
}

struct ButtonCustom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCustom()
    }
}

