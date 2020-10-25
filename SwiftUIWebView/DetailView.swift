//
//  DetailView.swift
//  SwiftUIWebView
//
//  Created by Carmen Morado on 10/18/20.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var userMessage = UserSettings()
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
            HStack {
                TextField("Write message", text: $userMessage.message).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.viewModel.valuePublisher.send(self.userMessage.message)
                }) {
                
                    NavigationLink(destination: ContentView(userMessage: userMessage.message)) {
                    Text("Send")
                        .padding(.trailing, 10)
                        .padding(.leading, 10)
                        .padding(.top, 4)
                        .padding(.bottom, 4)
                        .overlay (
                            RoundedRectangle(cornerRadius: 4, style: .circular)
                                .stroke(Color.gray, lineWidth: 0.5)
                            
                        )
                    }
                }
            }
    }
        
}
    
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

