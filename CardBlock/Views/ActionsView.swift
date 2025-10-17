//
//  ActionsView.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import SwiftUI

struct ActionView: View {
    
    let action: ActionModel
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 85, height: 48)
                .foregroundStyle(Color.gray.opacity(0.2))
                .overlay {
                    Image(systemName: action.iconName)
                        .foregroundStyle(.blue)
                }
            Text(action.name)
                .lineLimit(2)
                .font(.caption)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: 85)
    }
}

#Preview {
    ActionView(action: actionModels[0])
}
