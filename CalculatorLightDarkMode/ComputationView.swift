//
//  ComputationView.swift
//  CalculatorLightDarkMode
//
//  Created by Roman Riepa on 20.02.2023.
//

import SwiftUI

struct ComputationView: View {
    let currentComputation: String
    let mainResult: String
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(currentComputation)
                    .foregroundColor(foregroundDigitsColor)
                    .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
            HStack {
                Spacer()
                Text(currentComputation)
                    .foregroundColor(foregroundDigitsColor)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
        }
        .padding(.horizontal)
    }
}

struct ComputationView_Previews: PreviewProvider {
    static var previews: some View {
        ComputationView(
            currentComputation: " 5 + 1",
            mainResult: "6")
    }
}
