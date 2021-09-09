//
//  ButtonCustom.swift
//  TrafficLights SwiftUI
//
//  Created by Karpinets Alexander on 07.09.2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ButtonCustom: View {
    let buttonTitle: String
    let action: () -> ()
    
    var body: some View {
        
        Button(action: action,
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
        ButtonCustom(buttonTitle: "START") {
        }
    }
}

