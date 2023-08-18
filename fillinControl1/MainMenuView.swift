import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    HStack {
                        // Navbar icon
                        Image(systemName: "list.bullet")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding([.leading, .top, .bottom])
                            .bold(true)
                        Spacer()
                    }
                    
                    //App name
                    Text("fillin control")
                        .font(.custom("HelveticaNeue", size: 44, relativeTo: .largeTitle))
                        .foregroundColor(.black)
                        .padding([.top, .bottom])
                        .fontWeight(.bold)
                }
                
                VStack(spacing: 0){
                    NavigationLink(destination: ContentView()) {
                        Text("Focus Timer")
                        // Style your link here
                    }
                    .buttonStyle(CustomButtonStyle(color: .red))
                    
                    Button("Menu item 2") {
                        print("Menu item 2 tapped")
                    }
                    .buttonStyle(CustomButtonStyle(color: .blue))
                    .background(Color.blue)
                    
                    Button("Menu item 3") {
                        print("Menu item 3 tapped")
                    }
                    .buttonStyle(CustomButtonStyle(color: .purple))
                    .background(Color.orange)
                    
                    Button("Menu item 4"){
                        print("Menu item 4 tapped")
                    }
                    .buttonStyle(CustomButtonStyle(color: .orange))
                    .background(Color.green)
                    Spacer()
                }
                
                Spacer() // This will push your buttons up
            }
            .background(Color.white)
        }
    }
}

// CustomButtonStyle definition and preview code remain unchanged.


struct CustomButtonStyle: ButtonStyle {
    var color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.white)
            .bold(true)
            .background(color)
            .font(.title)
            
    }
}


struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
