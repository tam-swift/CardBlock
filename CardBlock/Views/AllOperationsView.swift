//
//  AllOperationsView.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import SwiftUI

struct AllOperationsView: View {
    
    let waste: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Все операции")
                .bold()
                .font(.callout)
            Text("Трат в октябре \(Double(waste).asCurrencyWith2Decimals())")
                .lineLimit(2)
                .font(.footnote)
                .padding(.bottom, 5)
            RoundedRectangle(cornerRadius: 24)
                .frame(height: 7)
                .foregroundStyle(
                    AngularGradient(colors: [.white,.blue], center: .bottom, angle: Angle(degrees: 45))
                )
        }
        .padding(.horizontal)
        .frame(width: 180, height: 100)
        .background(Color("CardViewColor"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.3) ,radius: 10)
    }
}

#Preview {
    AllOperationsView(waste: 300200)
}
