
import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: FrameView(image: model.frame).ignoresSafeArea()) {
                Text("start tracking")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
