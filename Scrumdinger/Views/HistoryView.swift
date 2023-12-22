//
//  HistoryView.swift
//  Scrumdinger
//
//  Created by Abdelrahman Shehab on 22/12/2023.
//

import SwiftUI

struct HistoryView: View {
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, content: {
                Divider()
                    .padding(.bottom)
                Text("Attebdee")
                    .font(.headline)
                Text(history.attendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top, 2)
                    Text(transcript)
                }
            })
        }
        .navigationTitle(Text(history.date, style: .date))
        .padding()
    }
}

#Preview {
    HistoryView(history: History.history)
}
