//
//  CustomToggle.swift
//  CustomToggle
//
//  Created by Abdullah Alnutayfi on 26/07/2021.
//

import SwiftUI

struct CustomToggel : ToggleStyle{
    @AppStorage("isDarkMode") var isDarkMode : Bool = false
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            if isDarkMode == true{
                Color.init(hex: "#1B2737")
            }
            Image(systemName: "moon.stars.fill")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(Color.init(hex: "#131E25"))
                .opacity(!isDarkMode ? 0 : 1)
            
            
            VStack{
                Text("Custom Toggle")
                    .font(.largeTitle)
                    .foregroundColor(isDarkMode ? .white : .black)
                HStack{
                    configuration.label
                    Button(action:{
                        withAnimation(.linear){
                            isDarkMode.toggle()
                            UserDefaults.standard.set(isDarkMode, forKey: "isDarkMode")
                        }
                    }){
                        Image(systemName: isDarkMode ? "checkmark.square.fill" : "square")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(isDarkMode ? .white : .black)
                    }
                    Spacer()
                }.padding(.leading)
                Spacer()
            }.padding(.top,40)
            
        }.ignoresSafeArea()
        .animation(.spring())
    }
}


