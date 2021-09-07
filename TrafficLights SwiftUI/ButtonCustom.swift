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
                        Text("Start")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.bold)
                    })
            .frame(width:200, height:70)
            .background(Color.blue)
            .cornerRadius(20)
    }
    
}


struct ButtonCustom_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCustom(text: Text("Start"))
    }
}
