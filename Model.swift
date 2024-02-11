//
//  Model.swift
//  RUAssist
//
//  Created by Sara Deshmukh on 2/10/24.
//

import Foundation

// Define contents in the Message given in Chat
struct ChatMessage: Identifiable {
    var id = UUID()
    var message: String
    var isUser = false
}
