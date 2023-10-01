
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background color
            LinearGradient(colors: [
                .red, .purple, .green, .pink
            ], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.8)
            .ignoresSafeArea()
            // Text
            Text("SwiftUI Basics")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    ContentView()
}
