//
//  ChatView.swift
//  MultilineTextView_ChatView
//
//  Created by Mohit Sharma on 04/02/25.
//

import SwiftUI

struct ChatView: View {
  @State var text: String = ""
  @State var messages: [Message] = []
  
    var body: some View {
    ZStack {
      Color.background
        .edgesIgnoringSafeArea(.all)
      VStack(spacing: 0) {
          Spacer()
          Spacer()
          ScrollViewReader { scrollView in
                    ScrollView(showsIndicators: false) {
                      VStack(spacing: 16) {
                        Spacer()
                          ForEach(messages, id: \.id) { message in
                          messageView(text: message.text)
                            .id(message.id) // Assign ID for scrolling
                        }
                      }
                      .padding(.vertical, 16)
                      .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .onChange(of: messages.count) { _ in
                      if let lastMessage = messages.last {
                        withAnimation {
                          scrollView.scrollTo(lastMessage.id, anchor: .bottom)
                        }
                      }
                    }
                  }
          .background(Color.inputBorder)
          Spacer().background(Color.inputBorder)
        Divider()
          HStack(alignment: .center) {
              MultilineTextInputView(text: Binding<String?>(
                get: { text },
                set: { newValue in text = newValue ?? "" }
              ), placeholder: "Message")
                      .cornerRadius(10)
                    Button(action: sendAction) {
                      Text("Send")
                    }
                  }.padding()
      }
    }
  }
    
    func sendAction() {
        guard !text.isEmpty else { return }
        let newMessage = Message(text: text)
        messages.append(newMessage) // Append message to bottom
        text = ""
        UIApplication.shared.windows.forEach { $0.endEditing(true) }
      }

  func messageView(text: String) -> some View {
    return Text(text)
      .foregroundColor(.white)
      .padding(.all, 12)
      .background(Color.messageBackground)
      .cornerRadius(14)
      .padding(.trailing, 12)
      .padding(.leading, 32)
  }

  struct Message {
    let id = UUID()
    let text: String
  }
}

