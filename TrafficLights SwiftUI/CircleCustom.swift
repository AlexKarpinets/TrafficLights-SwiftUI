//
//  Circle.swift
//  TrafficLights SwiftUI
//
//  Created by Karpinets Alexander on 07.09.2021.
//

import SwiftUI

struct CircleCustom: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(
                Circle().stroke(Color.white, lineWidth: 3))
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleCustom(color: .red, opacity: 0.3)
    }
}
