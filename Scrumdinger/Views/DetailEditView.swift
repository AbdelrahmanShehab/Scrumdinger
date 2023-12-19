//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Abdelrahman Shehab on 19/12/2023.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form(content: {
            Section {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                            .accessibilityValue("\(scrum.lengthInMinutes) minutes")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) Minutes")
                        .accessibilityHidden(true)
                }
            } header: {
                Text("Meeting Info")
            }
            
            Section {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete(perform: { indexSet in
                    scrum.attendees.remove(atOffsets: indexSet)
                })
                
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation(.easeInOut) {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add Attendee")
                    })
                    .disabled(newAttendeeName.isEmpty)
                }
            } header: {
                Text("Attendees")
            }


        })
    }
}

#Preview {
    DetailEditView()
}
