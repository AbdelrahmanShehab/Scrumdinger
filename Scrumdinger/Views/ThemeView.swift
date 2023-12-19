//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Abdelrahman Shehab on 19/12/2023.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
