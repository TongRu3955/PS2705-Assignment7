//
//  labNotesApp.swift
//  labNotes
//
//  Created by 向周总看齐(*^▽^*) on 3/7/23.
//

import SwiftUI

@main
struct labNotesApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: labNotesDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
