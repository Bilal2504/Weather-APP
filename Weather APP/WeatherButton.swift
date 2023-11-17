//
//  weatherButtom.swift
//  Weather APP
//
//  Created by Bilal Dramé on 17/11/2023.
//

import SwiftUI

struct weatherButtom: View {
    var title: String
    var textColor: Color
    var backgrounColor: Color
    
    var body: some View {
        Text(title)
            .frame (width: 280, height:50)
            .background (backgrounColor)
            .foregroundColor (textColor)
            .font(.system(size:20, weight: .bold, design: .default))
            .cornerRadius (10)
    }
}
