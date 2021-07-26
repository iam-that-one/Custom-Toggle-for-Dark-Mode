//
//  ContentView.swift
//  CustomToggle
//
//  Created by Abdullah Alnutayfi on 25/07/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") var isDarkMode : Bool = false
    var body: some View {
        VStack{
        HStack{
            Toggle(isOn:$isDarkMode, label: {
             
                Text("Dark Mode")
             
                    .font(.system(size: 11, weight: .semibold, design: .serif))
                    .foregroundColor(isDarkMode ? .white : .black)
            })
            .toggleStyle(CustomToggel())
        }
            
    }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

