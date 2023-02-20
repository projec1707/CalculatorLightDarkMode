//
//  ContentView.swift
//  CalculatorLightDarkMode
//
//  Created by Roman Riepa on 16.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var lightMode: Bool = true
    @State var currentComputation: String = ""
    @State var mainResult: String = "0"
    
    var body: some View {
        ZStack {
            primaryBackgroundColor
                .ignoresSafeArea()
            
            
            VStack {
                SunMoonView(lightMode: lightMode)
                    .onTapGesture {
                        withAnimation {
                            lightMode.toggle()
                        }
                    }
                
                Spacer()
                
                ComputationView(
                    currentComputation: currentComputation,
                    mainResult: mainResult)
                
                Spacer()
                
                CalcsButtonsView(
                    currentComputation: $currentComputation,
                    mainResult: $mainResult)
            }
            .padding()
        }
        
        .environment(\.colorScheme, lightMode ? .light : .dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ContentView()
            
        }
    }
}
