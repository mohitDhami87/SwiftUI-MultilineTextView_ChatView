# Multiline TextView with ChatView

If you want to create a chat feature with messages that take up multiple lines, this project might be useful for you. 
SwiftUI doesn’t have a built-in text box like `UITextView`, so you need to create a custom one. 
Also, `UITextView` doesn’t support placeholders. This component solves both problems by allowing placeholders and 
automatically expanding up to a set height.

## Screenshots
![AppScreeshot](https://github.com/user-attachments/assets/02042ea9-9ea0-43a2-b069-7e8ab228002d)


## Table of Contents

- [Features](#features)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Acknowledgments](#acknowledgments)

## Features

- Custom `TextViewWrapper` to integrate `UITextView` into SwiftUI.
- `MultilineTextInputView` that supports placeholders and dynamic height adjustment.
- `ChatView` to display messages in a chat-like interface.

## Project Structure

- **TextViewWrapper**: A `UIViewRepresentable` that wraps `UITextView` for use in SwiftUI.
- **MultilineTextInputView**: A SwiftUI view that uses `TextViewWrapper` to provide a text input field with 
  placeholder support and dynamic height adjustment.
- **ChatView**: A SwiftUI view that displays a list of messages and includes the `MultilineTextInputView` for 
  message input.

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/mohitDhami87/SwiftUI-MultilineTextView_ChatView.git
   cd SwiftUI-MultilineTextView_ChatView
   ```

2. **Open in Xcode**:
   ```bash
   open SwiftUI-MultilineTextView_ChatView.xcodeproj
   ```

3. **Build and Run**:
   - Select the desired simulator or device.
   - Press `Cmd + R` to build and run the project.


Ensure that you have the necessary components (`TextViewWrapper`, `MultilineTextInputView`, and `ChatView`) included in your project.

## Acknowledgments

This project is inspired by the need to implement multiline text input in SwiftUI and aims to provide a reusable 
solution for the community.



