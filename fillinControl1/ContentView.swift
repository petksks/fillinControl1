import SwiftUI

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
                Text("Fillin Control")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding([.top, .bottom])
                    .bold(true)
            }
            
            VStack {
                Button("Menu item 1") {
//                        .frame(maxWidth: .infinity)
                }
                
                Button("Menu item 2") {
                    print("Menu item 2 tapped")
                }
                
                Button("Menu item 3") {
                    print("Menu item 3 tapped")
                }
                Button("Menu item 4"){
                    print("Menu item 4 tapped")
                }
            }
            
            Spacer() // This will push your buttons up
        }
        .background(Color.white)
        Color.white.edgesIgnoringSafeArea(.all)
        
                  }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
