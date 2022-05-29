/**
 * This file is the main page for the window
 */
import SwiftUI
import Foundation
import WebKit

struct ContentView: View
{
  var body: some View
  {
    NavigationView
    {
      VStack
      {
        List
        {
          NavigationLink(destination: HomePageView()){Text("Home Page").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: NewConnectionView()){Text("New connect").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: HistoryConnectionView()){Text("History Connect").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: FileTransferView()){Text("File Transfer").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: ConnectionView()){Text("Connection").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
          NavigationLink(destination: SettingsView()){Text("Settings").padding(.all).font(.system(size: 12, weight: .light, design: .serif))}
        }
      }
      VStack
      {
        HomePageView()
      }
    } .navigationTitle("Welcome")
  }
}

struct HomePageView: View
{
  var body: some View
  {
    VStack{
      Text ("Welcome").font(.system(size: 24, weight: .light, design: .serif)).multilineTextAlignment(.center).padding(.all)
      Text("begin your journey by make a new connection or select a exisitig connection from the history").padding(.all).multilineTextAlignment(.center)
        .font(.system(size: 12, weight: .light, design: .serif))
    }.navigationTitle("Home Page")
  }
}

struct NewConnectionView: View
{
  @State var hostAddress = "127.0.0.1"
  @State var hostPort = "22"
  @State var alias = ""
  @State var username = ""
  @State var password = ""
  var body: some View
  {
    HStack
    {
      Form()
      {
        Section(header: Text ("Host Information"))
        {
          TextField("Host Address", text: $hostAddress)
          TextField("Host Port", text: $hostPort)
        }
        Section(header: Text ("Connect Information"))
        {
          TextField("Alias", text: $alias)
          TextField("Username", text: $username)
          TextField("Password", text: $password)
        }
        Button("Connect")
        {
          connectToHost(Address: hostAddress, Port: hostPort, Tag: alias, Name: username, Pass: password)
        }
      }
    } .navigationTitle("New Connection")
  }
}

struct HistoryConnectionView: View
{
  var body: some View
  {
    Text ("History connection here") .navigationTitle("History Connection")
  }
}

struct FileTransferView: View
{
  var body: some View
  {
    Text("File Manager").padding(.all).position(x: 110, y: 50).font(.system(size: 25, weight: .light, design: .serif))
  }
}

struct ConnectionView: View
{
  @State var text = "<html><body><h1>Hello World</h1></body></html>"
  var body: some View
  {
    Text ("Make a terminal here")
  }
}

struct SettingsView: View
{
  var body: some View
  {
    Text ("Here is the settings menu")
  }
}

func connectToHost(Address: String, Port: String, Tag: String, Name: String, Pass: String)
{
  let process = Process()
  let pipe = Pipe()
  process.launchPath = "/bin/bash"
  process.arguments = ["-c","ssh hl3265@sand.truman.edu -p 22"]
  process.standardOutput = pipe
  process.launch()
  let output = String(data: pipe.fileHandleForReading.readDataToEndOfFile(), encoding: String.Encoding.utf8)!
  process.waitUntilExit()
  print(output)
}
