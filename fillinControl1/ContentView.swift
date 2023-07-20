import SwiftUI
// inspo: https://dribbble.com/shots/5527963-Simple-Gym-App-Ui-Main-Menu


struct ContentView: View {
    var body: some View {
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
                Button("Menu item 1") {
                    // button action
                }
                .buttonStyle(CustomButtonStyle(color: .red))
//                .background(Color.yellow)
                
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
//        Color.white.edgesIgnoringSafeArea(.all)
        
                  }
    }

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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
