
import SwiftUI

struct ContentView: View {
    
    let colorList1: [Color] = [
        .black, .white, .blue
    ]
    
    let colorList2: [Color] = [
        .red, .purple, .green, .pink
    ]
    
    @State private var screenTapped: Bool = false
    
    @State private var offsetY: CGFloat = -1000.0
    
    var body: some View {
        ZStack {
            // Background color
            LinearGradient(colors: screenTapped ? colorList1 : colorList2, startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.8)
            .ignoresSafeArea()
            // Text
            Text("SwiftUI Basics")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                .foregroundColor(.black)
                .offset(y: offsetY)
        }
        .onTapGesture {
            // Change screen color if tapped
            screenTapped.toggle()
            withAnimation(.easeIn(duration: 1)) {
                if screenTapped {
                    offsetY = -1000
                } else {
                    offsetY = 0
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
