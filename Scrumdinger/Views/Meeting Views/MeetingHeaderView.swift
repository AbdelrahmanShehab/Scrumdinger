//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Abdelrahman Shehab on 20/12/2023.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    let theme: Theme
    
    private var totalSeconds : Int {
        return secondsElapsed + secondsRemaining
    }
    
    private var progress: Double {
        guard totalSeconds > 0 else {return 1}
        return Double(secondsElapsed) / Double(totalSeconds)
    }
    
    private var minutesRemaining: Int {
        return secondsRemaining / 60
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            
            HStack(content: {
                VStack(alignment: .leading, content: {
                    Text("\(secondsElapsed)")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                })
                
                Spacer()
                
                VStack(alignment: .trailing, content: {
                    Text("\(secondsRemaining)")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                })
                .labelStyle(.trailingIcon)
            })
        }
        .padding(.horizontal, 5)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time Remaining")
        .accessibilityValue("\(minutesRemaining) Minutes")
        .padding([.top, .horizontal])
    }
}

#Preview {
    MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180, theme: .bubblegum)
        .previewLayout(.sizeThatFits)
}
