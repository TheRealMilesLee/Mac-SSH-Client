/**
 * This file is the main page for the window
 */
import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack {
        List{
          NavigationLink(destination: HomePageView()){
            Text ("Home Page").padding(.all)
          }
          NavigationLink(destination: NewConnectionView()){
            Text ("New connect").padding(.all)
          }
          NavigationLink(destination: HistoryConnectionView()){
            Text ("History Connect").padding(.all)
          }
          NavigationLink(destination: FileTransferView()){
            Text ("File Transfer").padding(.all)
          }
        }
      }
      VStack {
        Text ("Welcome, begin your journey by make a new connection or select a exisitig connection from the history").font(.system(size: 12, weight: .light, design: .serif)).font(.title)
      }
    } .navigationTitle("Welcome")
    
  }
}

struct HomePageView: View {
  var body: some View {
    Text ("Home Page")
      .navigationTitle("Home Page")
  }
}

struct NewConnectionView: View {
  @State var hostAddress = ""
  var body: some View {
    Form {
      Section {
        TextField("Host Address", text: $hostAddress)
      }
    } .navigationTitle("New Connection")
  }
}

struct HistoryConnectionView: View {
  var body: some View {
    Text ("History connection here") .navigationTitle("History Connection")
  }
}

struct FileTransferView: View {
  var body: some View {
    Text ("File Transfer here").navigationTitle("File Transfer")
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
