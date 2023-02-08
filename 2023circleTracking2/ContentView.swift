
import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: FrameView(image: model.frame).ignoresSafeArea(.all, edges: .top)) {
                Text("start tracking")
            } .navigationTitle("Gym Helper")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
