import SwiftUI

struct FrameView: View {
    var image: CGImage?
    private let label = Text("frame")
    
    var body: some View {
            if let image = image {
                Image(image, scale: 1.0, orientation: .up, label: label)
//                        .resizable()
//                        .scaledToFill()
                        
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(20)
                //.scaledToFill()

                
             
            } else {
                Label("No camera signal", systemImage: "circle.slash")
            }


    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
