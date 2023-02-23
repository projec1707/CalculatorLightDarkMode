//
//  ButtonView.swift
//  CalculatorLightDarkMode
//
//  Created by Roman Riepa on 23.02.2023.
//

import SwiftUI

struct ButtonView: View {
    let calcButton: CalcButton
    
    let fgColor: Color
    let bgColor: Color
    
    var systemImage: String? {
        let value = calcButton.rawValue
        return value.contains("IMG") ?
        value.replacingOccurrences(of: "IMG", with: "") : nil
    }
    
    var text: String? {
        let value = calcButton.rawValue
        return value.contains("IMG") ? nil : value
    }
    
    let buttonDim: CGFloat = UIScreen.main.bounds.width / 5
    
    var body: some View {
        ZStack {
            Text(text ?? "")
            Image(systemName: systemImage ?? "")
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(width: buttonDim, height: buttonDim)
        .foregroundColor(fgColor)
        .background(bgColor)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: bgColor.opacity(0.5), radius: 3, x: 5, y: 5)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ButtonView(calcButton: .negative,
                       fgColor: foregroundDigitsColor,
                       bgColor: buttonBackgroundColor)
            
            ButtonView(calcButton: .undo,
                       fgColor: foregroundDigitsColor,
                       bgColor: buttonBackgroundColor)
            
            ButtonView(calcButton: .one,
                       fgColor: foregroundDigitsColor,
                       bgColor: buttonBackgroundColor)
        }
    }
}