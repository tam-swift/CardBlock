//
//  CashbackView.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import SwiftUI

struct CashbackView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text("Кэшбэк и бонусы")
                    .bold()
                    .font(.callout)
                Spacer()
                Text("1")
                    .font(.callout)
                    .foregroundStyle(.white)
                    .padding(8)
                    .background(.red)
                    .clipShape(Circle())
                    .padding(.trailing, 20)
            }
            cubs
            .overlay(Rectangle()
                .fill(
                    LinearGradient(colors: [.blue,.red], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .mask(cubs)
            )
            
        }
        
        .padding(.leading, 20)
        .frame(width: 180, height: 100, alignment: .leading)
        .background(Color("CardViewColor"))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.3) ,radius: 10)
    }
    
    private var cubs: some View {
        HStack {
            RoundedRectangle(cornerRadius: 7)
                .frame(width: 20, height: 20)
            RoundedRectangle(cornerRadius: 7)
                .frame(width: 20, height: 20)
            RoundedRectangle(cornerRadius: 7)
                .frame(width: 20, height: 20)
        }
    }
}

#Preview {
    CashbackView()
}
