//
//  ContentView.swift
//  TEST
//
//  Created by Zaid.Cho on 2023/05/25.
//

import SwiftUI

/// Excludes setting colors based on conditions.
struct DefaultTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .textFieldStyle(.plain)
            .padding([.leading, .trailing], 16)
            .preferredColorScheme(.light)
//            .modifier(ModifierFont.Body1)
//            .overlay{
//                RoundedRectangle(cornerRadius: 5)
//                    .stroke(InkColor.Border.gray_200, lineWidth: 1)
//            }
    }
}
//private let defaultStyle = DefaultTextFieldStyle()

struct ContentView: View {
//    @AppStorage("colorScheme") var selectedColorScheme: String = "system"

    @State private var value:String = ""
//    @Binding private var error:Bool
//    @Binding private var disable:Bool
  
//    init(error: Binding<Bool>, disabled:Binding<Bool>) {
//        self._error = error
//        self._disable = disabled
//    }

    var body: some View {
        TextField("pass", text: $value)
//                    .preferredColorScheme(.light)
            .textFieldStyle(.plain)
            .padding([.leading, .trailing], 16)
//            .preferredColorScheme(.light)
//            .modifier(ModifierFont.Body1)
//            .disabled(self.disable)
//            .overlay{
//                RoundedRectangle(cornerRadius: 5)
//                    .stroke(error ? .ink_red : InkColor.Border.gray_200, lineWidth: 1)
//            }
//            .background(disable ? InkColor.Background.gray_100: InkColor.Background.white)
//            .background(value.isEmpty ? )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
