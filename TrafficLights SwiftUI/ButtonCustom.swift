//
//  ButtonCustom.swift
//  TrafficLights SwiftUI
//
//  Created by Karpinets Alexander on 07.09.2021.
//

import SwiftUI

struct ButtonCustom: View {
    @State var text: Text
    var body: some View {
        
        Button.init(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                    label: {
                        Text("START")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                    })
            .frame(width:200, height:60)
            .background(Color.blue)
            .cornerRadius(30)
            .overlay(
                Capsule().stroke(Color.white, lineWidth: 3))
    }
    
}


struct ButtonCustom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCustom(text: Text("START"))
    }
}
