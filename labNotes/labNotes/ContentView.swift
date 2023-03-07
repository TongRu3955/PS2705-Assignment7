//
//  ContentView.swift
//  labNotes
//
//  Created by 向周总看齐(*^▽^*) on 3/7/23.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: labNotesDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(labNotesDocument()))
    }
}
