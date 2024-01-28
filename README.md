![scrum@2x](https://github.com/AbdelrahmanShehab/Scrumdinger/assets/36604938/b3f5a0de-cd57-419c-96d4-0b94b800f502)

# Scrumdinger App

Welcome to Scrumdinger, an iOS app that helps teams manage daily scrums. This module guides you through the development of Scrumdinger, providing a seamless experience for teams looking to enhance their daily stand-up meetings.

## 🌟 Key Features:

- **Scrum List:** Displays a summary of each user’s daily scrums. Users can tap a row in the list to view details or create a new scrum by tapping a button in the navigation bar.
  
- **Scrum Detail and Edit:** Shows more information about a scrum, including attendee names and a list of previous meetings. Users can modify any scrum attribute via the navigation bar. The edit screen includes a color theme picker for meetings, and tapping the top button starts a new meeting timer.

- **Meeting Timer:** The progress bar at the top shows elapsed and remaining time for the meeting. The app displays the current speaker's name in the center and a button to advance to the next attendee at the bottom.

## 📸 Screenshot:
![scrumdinger-overview-2](https://github.com/AbdelrahmanShehab/Scrumdinger/assets/36604938/d4147551-028b-4bc6-aaaa-23efaf21f6ed)

## 👨‍💻 Challenges Overcome:

- **Managing State in SwiftUI:** Dealing with `@State`, `@Binding`, `@ObservableObject`, `@StateObject`, and `@EnvironmentObject` to ensure the UI reflects Scrumdinger's data state and responds to user interactions.

- **Circular Progress Ring:** Segments in a circular progress ring represent each attendee. When an attendee uses all their time, Scrumdinger plays a “ding” sound and adds a new segment to the ring. The meeting ends when the ring is full.

- **Meeting Transcripts:** Added a feature to capture and log meeting transcripts, requesting access to device hardware like the microphone, and integrating the Speech framework to transcribe live audio to text.

## 🛠️ Key Technologies Used:

- **SwiftUI:** Leveraging SwiftUI for a modern and intuitive user interface.
  
- **MVVM:** Following the Model-View-ViewModel architectural pattern for a clean and scalable codebase.

- **Speech Recognition:** Integrating speech recognition for live audio-to-text transcription.

- **AVFoundation:** Utilizing AVFoundation for playing audio cues such as the "ding" sound.

- **Concurrency (Async/Await - Actors):** Implementing asynchronous programming for a responsive user interface.

## 🚀 Getting Started:

1. [Clone the repository](#) to your local machine.
2. Open the project in Xcode.
3. Build and run the app on your preferred simulator or device.

Feel free to explore, customize, and contribute to the project. Your feedback and contributions are highly valued!

## 📄 License:

This project is licensed under the [MIT License](LICENSE).
