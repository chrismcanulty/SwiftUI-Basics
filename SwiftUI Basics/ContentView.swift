
import SwiftUI

struct ContentView: View {
    
    let colorList1: [Color] = [
        .black, .white, .blue
    ]
    
    let colorList2: [Color] = [
        .red, .purple, .green, .pink
    ]
    
    @State private var screenTapped: Bool = false
    
    let rotationAngle: CGFloat = 360.0
    
    var body: some View {
        ZStack {
            Spacer()
            // Background color
            LinearGradient(colors: screenTapped ? colorList1 : colorList2, startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.8)
            .ignoresSafeArea()
            // Text
            VStack(spacing: 0) {
                
                Spacer()
                
            Text(screenTapped ? "The Basics of Swift UI" : "To know what you know and what you do not know, that is true knowledge")
                .font(screenTapped ? .largeTitle : .title)
                    .fontWeight(.semibold)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .rotation3DEffect(
                    .degrees(screenTapped ? .zero : rotationAngle),
                                          axis: (x: 1.0, y: 1.0, z: 1.0)
                )
                
                Spacer()
                
            Text("Another line of text")
                .font(screenTapped ? .largeTitle : .title)
                    .fontWeight(.semibold)
                    .foregroundColor(screenTapped ? .blue : .white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .rotation3DEffect(
                    .degrees(screenTapped ? .zero : rotationAngle),
                                          axis: (x: 1.0, y: 1.0, z: 1.0)
                )
                
                Spacer()
                
            }
        }
        .onTapGesture {
            // Change screen color if tapped
            withAnimation {
                screenTapped.toggle()
            }
            }
        }
    }


#Preview {
    ContentView()
}
