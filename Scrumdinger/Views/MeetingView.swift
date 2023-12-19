//
//  MeetingView.swift
//  Scrumdinger
//
//  Created by Abdelrahman Shehab on 18/12/2023.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView("", value: 5, total: 15)
            HStack(content: {
                VStack(alignment: .leading, content: {
                    Text("Seconds Elapced")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                })
                
                Spacer()
                
                VStack(alignment: .trailing, content: {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                })
            })
            .padding(.horizontal, 5)
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 Minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
                .padding(.horizontal)
            
            HStack(alignment: .center, content: {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                })
                .accessibilityLabel("Next Speaker")
            })
            .padding()
        }
    }
}

#Preview {
    MeetingView()
}
