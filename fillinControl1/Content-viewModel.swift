import Foundation

extension ContentView {
    final class ViewModel: ObservableObject {
        @Published var isActive = false // Tracks if the timer is active
        @Published var showingAlert = false // Controls if an alert is showing
        @Published var time: String = "5:00" // Displays the current time in minutes:seconds format
        @Published var minutes: Float = 5.0 { // Tracks the total minutes for the timer
            didSet {
                self.time = "\(Int(minutes)):00" // Updates the time string when minutes change
            }
        }
        
        private var initialTime = 0 // Stores the initial time for resetting
        private var endDate = Date() // Stores the end date/time of the timer
        
        // Starts the timer with a given number of minutes
        func start(minutes: Float) {
            self.initialTime = Int(minutes)
            self.endDate = Date()
            self.isActive = true
            self.endDate = Calendar.current.date(byAdding: .minute, value: Int(minutes), to: endDate)!
        }
        
        // Resets the timer to its initial state
        func reset() {
            self.minutes = Float(initialTime)
            self.isActive = false
            self.time = "\(Int(minutes)):00"
        }
        
        // Updates the countdown, checking if the timer has ended and updating the display
        func updateCountDown() {
            guard isActive else {
                return
                
            } // If the timer is not active, do nothing
            
            let now = Date() // Get the current date/time
            let diff = endDate.timeIntervalSince1970 - now.timeIntervalSince1970 // Calculate time remaining
            
            if diff <= 0 { // If timer has ended
                self.isActive = false
                self.time = "0.00"
                self.showingAlert = true
                return
            }
            
            let date = Date(timeIntervalSince1970: diff) // Convert difference to date
            let calendar = Calendar.current
            let minutes = calendar.component(.minute, from: date) // Get minutes from date
            let seconds = calendar.component(.second, from: date) // Get seconds from date
            // Note: minutes and seconds are calculated but not used here
            
            self.minutes = Float(minutes)
            self.time = String(format: "%d:%02d", minutes, seconds)
        }
    }
}
