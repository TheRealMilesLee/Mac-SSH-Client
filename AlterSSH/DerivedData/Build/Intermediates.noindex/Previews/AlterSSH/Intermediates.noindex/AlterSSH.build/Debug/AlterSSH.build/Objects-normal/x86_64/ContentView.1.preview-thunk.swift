@_private(sourceFile: "ContentView.swift") import AlterSSH
import Foundation
import SwiftUI
import SwiftUI
import WebKit

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 134)
    ContentView()
  #sourceLocation()
    }
}

@_dynamicReplacement(for: connectToHost(Address:Port:Tag:Name:Pass:)) private func __preview__connectToHost(Address: String, Port: String, Tag: String, Name: String, Pass: String) {
#sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 114)
  let process = Process()
  let removeProcess = Process()
  removeProcess.launchPath = __designTimeString("#8416.[10].[2].[0]", fallback: "/bin/bash")
  removeProcess.arguments = [__designTimeString("#8416.[10].[3].[0]", fallback: "-c"), __designTimeString("#8416.[10].[3].[1]", fallback: "ssh-keygen -R sand.truman.edu")]
  removeProcess.launch()
  removeProcess.waitUntilExit()
  let pipe = Pipe()
  process.launchPath = __designTimeString("#8416.[10].[7].[0]", fallback: "/bin/bash")
  process.arguments = [__designTimeString("#8416.[10].[8].[0]", fallback: "-c"),__designTimeString("#8416.[10].[8].[1]", fallback: "ssh hl3265@sand.truman.edu -p 22")]
  process.standardOutput = pipe
  process.launch()
  let output = String(data: pipe.fileHandleForReading.readDataToEndOfFile(), encoding: String.Encoding.utf8)!
  process.waitUntilExit()
  print(output)
#sourceLocation()
}

extension SettingsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 108)
    Text (__designTimeString("#8416.[9].[0].property.[0].[0].arg[0].value", fallback: "Here is the settings menu"))
  #sourceLocation()
    }
}

extension ConnectionView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 100)
    Text (__designTimeString("#8416.[8].[1].property.[0].[0].arg[0].value", fallback: "Make a terminal here"))
  #sourceLocation()
    }
}

extension FileTransferView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 91)
    Text(__designTimeString("#8416.[7].[0].property.[0].[0].arg[0].value", fallback: "File Manager")).padding(.all).position(x: __designTimeInteger("#8416.[7].[0].property.[0].[0].modifier[1].arg[0].value", fallback: 110), y: __designTimeInteger("#8416.[7].[0].property.[0].[0].modifier[1].arg[1].value", fallback: 50)).font(.system(size: __designTimeInteger("#8416.[7].[0].property.[0].[0].modifier[2].arg[0].value.arg[0].value", fallback: 25), weight: .light, design: .serif))
  #sourceLocation()
    }
}

extension HistoryConnectionView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 83)
    Text (__designTimeString("#8416.[6].[0].property.[0].[0].arg[0].value", fallback: "History connection here")) .navigationTitle(__designTimeString("#8416.[6].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "History Connection"))
  #sourceLocation()
    }
}

extension NewConnectionView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 55)
    HStack
    {
      Form()
      {
        Section(header: Text (__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Host Information")))
        {
          TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Host Address"), text: $hostAddress)
          TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Host Port"), text: $hostPort)
        }
        Section(header: Text (__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Connect Information")))
        {
          TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Alias"), text: $alias)
          TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: "Username"), text: $username)
          TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].arg[0].value", fallback: "Password"), text: $password)
        }
        Button(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Connect"))
        {
          connectToHost(Address: hostAddress, Port: hostPort, Tag: alias, Name: username, Pass: password)
        }
      }
    } .navigationTitle(__designTimeString("#8416.[5].[5].property.[0].[0].modifier[0].arg[0].value", fallback: "New Connection"))
  #sourceLocation()
    }
}

extension HomePageView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 38)
    VStack{
      Text (__designTimeString("#8416.[4].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Welcome")).font(.system(size: __designTimeInteger("#8416.[4].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .light, design: .serif)).multilineTextAlignment(.center).padding(.all)
      Text(__designTimeString("#8416.[4].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "begin your journey by make a new connection or select a exisitig connection from the history")).padding(.all).multilineTextAlignment(.center)
        .font(.system(size: __designTimeInteger("#8416.[4].[0].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif))
    }.navigationTitle(__designTimeString("#8416.[4].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "Home Page"))
  #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 12)
    NavigationView
    {
      VStack
      {
        List
        {
          NavigationLink(destination: HomePageView()){Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Home Page")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif))}
          NavigationLink(destination: NewConnectionView()){Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "New connect")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif))}
          NavigationLink(destination: HistoryConnectionView()){Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "History Connect")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif))}
          NavigationLink(destination: FileTransferView()){Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "File Transfer")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif))}
          NavigationLink(destination: ConnectionView()){Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Connection")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif))}
          NavigationLink(destination: SettingsView()){Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[0].arg[0].value", fallback: "Settings")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif))}
        }
      }
      VStack
      {
        HomePageView()
      }
    } .navigationTitle(__designTimeString("#8416.[3].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "Welcome"))
  #sourceLocation()
    }
}

import struct AlterSSH.ContentView
import struct AlterSSH.HomePageView
import struct AlterSSH.NewConnectionView
import struct AlterSSH.HistoryConnectionView
import struct AlterSSH.FileTransferView
import struct AlterSSH.ConnectionView
import struct AlterSSH.SettingsView
import struct AlterSSH.ContentView_Previews