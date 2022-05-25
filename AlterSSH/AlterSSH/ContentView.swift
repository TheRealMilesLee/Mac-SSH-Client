  //
  //  ContentView.swift
  //  AlterSSH
  //
  //  Created by Silverhand on 5/25/2022.
  //

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List{
          NavigationLink("New connection", destination: NewConnectionView())
          NavigationLink("History connect", destination: HistoryConnectionView())
        NavigationLink("File Transfer", destination: FileTransferView())
        NavigationLink("Terminal", destination: TerminalView())
      }
  }
}
}

struct NewConnectionView: View {
  @State var hostAddress = ""
  var body: some View {
    Form {
      Section {
        TextField("Host Address", text: $hostAddress)
      }
    }
  }
}

struct HistoryConnectionView: View {
  var body: some View {
    Text ("History connection here")
  }
}

struct FileTransferView: View {
  var body: some View {
    Text ("File Transfer here")
  }
}

struct TerminalView: View {
  var body: some View {
    Text ("Terminal display in here")
  }
}








struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
