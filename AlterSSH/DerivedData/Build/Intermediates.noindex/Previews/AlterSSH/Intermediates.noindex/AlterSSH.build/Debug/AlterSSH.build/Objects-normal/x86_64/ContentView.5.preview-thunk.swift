@_private(sourceFile: "ContentView.swift") import AlterSSH
import Foundation
import SwiftUI
import SwiftUI
import WebKit

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 134)
    __designTimeSelection(ContentView(), "#8416.[11].[0].property.[0].[0]")
  #sourceLocation()
    }
}

@_dynamicReplacement(for: connectToHost(Address:Port:Tag:Name:Pass:)) private func __preview__connectToHost(Address: String, Port: String, Tag: String, Name: String, Pass: String) {
#sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 114)
  let process = Process()
  let removeProcess = Process()
  removeProcess.launchPath = __designTimeString("#8416.[10].[2].[0]", fallback: "/bin/bash")
  removeProcess.arguments = [__designTimeString("#8416.[10].[3].[0]", fallback: "-c"), __designTimeString("#8416.[10].[3].[1]", fallback: "ssh-keygen -R sand.truman.edu")]
  __designTimeSelection(removeProcess.launch(), "#8416.[10].[4]")
  __designTimeSelection(removeProcess.waitUntilExit(), "#8416.[10].[5]")
  let pipe = Pipe()
  process.launchPath = __designTimeString("#8416.[10].[7].[0]", fallback: "/bin/bash")
  process.arguments = [__designTimeString("#8416.[10].[8].[0]", fallback: "-c"),__designTimeString("#8416.[10].[8].[1]", fallback: "ssh hl3265@sand.truman.edu -p 22")]
  process.standardOutput = pipe
  __designTimeSelection(process.launch(), "#8416.[10].[10]")
  let output = String(data: pipe.fileHandleForReading.readDataToEndOfFile(), encoding: String.Encoding.utf8)!
  __designTimeSelection(process.waitUntilExit(), "#8416.[10].[12]")
  __designTimeSelection(print(__designTimeSelection(output, "#8416.[10].[13].arg[0].value")), "#8416.[10].[13]")
#sourceLocation()
}

extension SettingsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 108)
    __designTimeSelection(Text (__designTimeString("#8416.[9].[0].property.[0].[0].arg[0].value", fallback: "Here is the settings menu")), "#8416.[9].[0].property.[0].[0]")
  #sourceLocation()
    }
}

extension ConnectionView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 100)
    __designTimeSelection(Text (__designTimeString("#8416.[8].[1].property.[0].[0].arg[0].value", fallback: "Make a terminal here")), "#8416.[8].[1].property.[0].[0]")
  #sourceLocation()
    }
}

extension FileTransferView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 91)
    __designTimeSelection(Text(__designTimeString("#8416.[7].[0].property.[0].[0].arg[0].value", fallback: "File Manager")).padding(.all).position(x: __designTimeInteger("#8416.[7].[0].property.[0].[0].modifier[1].arg[0].value", fallback: 110), y: __designTimeInteger("#8416.[7].[0].property.[0].[0].modifier[1].arg[1].value", fallback: 50)).font(.system(size: __designTimeInteger("#8416.[7].[0].property.[0].[0].modifier[2].arg[0].value.arg[0].value", fallback: 25), weight: .light, design: .serif)), "#8416.[7].[0].property.[0].[0]")
  #sourceLocation()
    }
}

extension HistoryConnectionView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 83)
    __designTimeSelection(Text (__designTimeString("#8416.[6].[0].property.[0].[0].arg[0].value", fallback: "History connection here")) .navigationTitle(__designTimeString("#8416.[6].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "History Connection")), "#8416.[6].[0].property.[0].[0]")
  #sourceLocation()
    }
}

extension NewConnectionView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 55)
    __designTimeSelection(HStack
    {
      __designTimeSelection(Form()
      {
        __designTimeSelection(Section(header: __designTimeSelection(Text (__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Host Information")), "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value"))
        {
          __designTimeSelection(TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Host Address"), text: __designTimeSelection($hostAddress, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value")), "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
          __designTimeSelection(TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "Host Port"), text: __designTimeSelection($hostPort, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[1].value")), "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1]")
        }, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
        __designTimeSelection(Section(header: __designTimeSelection(Text (__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Connect Information")), "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value"))
        {
          __designTimeSelection(TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Alias"), text: __designTimeSelection($alias, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[1].value")), "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]")
          __designTimeSelection(TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[0].value", fallback: "Username"), text: __designTimeSelection($username, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1].arg[1].value")), "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[1]")
          __designTimeSelection(TextField(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].arg[0].value", fallback: "Password"), text: __designTimeSelection($password, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2].arg[1].value")), "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[2]")
        }, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
        __designTimeSelection(Button(__designTimeString("#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "Connect"))
        {
          __designTimeSelection(connectToHost(Address: __designTimeSelection(hostAddress, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value"), Port: __designTimeSelection(hostPort, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[1].value"), Tag: __designTimeSelection(alias, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[2].value"), Name: __designTimeSelection(username, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[3].value"), Pass: __designTimeSelection(password, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[4].value")), "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0]")
        }, "#8416.[5].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
      }, "#8416.[5].[5].property.[0].[0].arg[0].value.[0]")
    } .navigationTitle(__designTimeString("#8416.[5].[5].property.[0].[0].modifier[0].arg[0].value", fallback: "New Connection")), "#8416.[5].[5].property.[0].[0]")
  #sourceLocation()
    }
}

extension HomePageView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 38)
    __designTimeSelection(VStack{
      __designTimeSelection(Text (__designTimeString("#8416.[4].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Welcome")).font(.system(size: __designTimeInteger("#8416.[4].[0].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .light, design: .serif)).multilineTextAlignment(.center).padding(.all), "#8416.[4].[0].property.[0].[0].arg[0].value.[0]")
      __designTimeSelection(Text(__designTimeString("#8416.[4].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "begin your journey by make a new connection or select a exisitig connection from the history")).padding(.all).multilineTextAlignment(.center)
        .font(.system(size: __designTimeInteger("#8416.[4].[0].property.[0].[0].arg[0].value.[1].modifier[2].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif)), "#8416.[4].[0].property.[0].[0].arg[0].value.[1]")
    }.navigationTitle(__designTimeString("#8416.[4].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "Home Page")), "#8416.[4].[0].property.[0].[0]")
  #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Silverhand/Developer/Mac-SSH-Client/AlterSSH/AlterSSH/ContentView.swift", line: 12)
    __designTimeSelection(NavigationView
    {
      __designTimeSelection(VStack
      {
        __designTimeSelection(List
        {
          __designTimeSelection(NavigationLink(destination: __designTimeSelection(HomePageView(), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value")){__designTimeSelection(Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Home Page")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif)), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")}, "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]")
          __designTimeSelection(NavigationLink(destination: __designTimeSelection(NewConnectionView(), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[0].value")){__designTimeSelection(Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "New connect")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif)), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0]")}, "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[1]")
          __designTimeSelection(NavigationLink(destination: __designTimeSelection(HistoryConnectionView(), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value")){__designTimeSelection(Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "History Connect")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif)), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0]")}, "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[2]")
          __designTimeSelection(NavigationLink(destination: __designTimeSelection(FileTransferView(), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value")){__designTimeSelection(Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].arg[0].value", fallback: "File Transfer")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif)), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[1].value.[0]")}, "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3]")
          __designTimeSelection(NavigationLink(destination: __designTimeSelection(ConnectionView(), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].arg[0].value")){__designTimeSelection(Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Connection")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif)), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0]")}, "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4]")
          __designTimeSelection(NavigationLink(destination: __designTimeSelection(SettingsView(), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value")){__designTimeSelection(Text(__designTimeString("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[0].arg[0].value", fallback: "Settings")).padding(.all).font(.system(size: __designTimeInteger("#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[0].modifier[1].arg[0].value.arg[0].value", fallback: 12), weight: .light, design: .serif)), "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[1].value.[0]")}, "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5]")
        }, "#8416.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
      }, "#8416.[3].[0].property.[0].[0].arg[0].value.[0]")
      __designTimeSelection(VStack
      {
        __designTimeSelection(HomePageView(), "#8416.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value.[0]")
      }, "#8416.[3].[0].property.[0].[0].arg[0].value.[1]")
    } .navigationTitle(__designTimeString("#8416.[3].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "Welcome")), "#8416.[3].[0].property.[0].[0]")
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