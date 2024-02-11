//
//  ChatViewModel.swift
//  RUAssist
//
//  Created by Sara Deshmukh on 2/10/24.
//

import Foundation
import OpenAISwift

final class ChatViewModel: ObservableObject {
    @Published var messages: [ChatMessage] = [] // Published property for chat messages

    private var openAI: OpenAISwift?

    init() {}

    func setupOpenAI() {
        let config: OpenAISwift.Config = .makeDefaultOpenAI(apiKey: "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")
        openAI = OpenAISwift(config: config) // Initialize OpenAI
    }

    func sendUserMessage(_ message: String) {
        let userMessage = ChatMessage(message: message, isUser: true)
        print(userMessage)
        messages.append(userMessage) // Append user message to chat history
        openAI?.sendCompletion(with: userMessage.message, maxTokens: 500) { [weak self] result in
            switch result {
            case .success(let model):
                if let response = model.choices?.first?.text {
                    print(response)
                    self?.receiveBotMessage(response) // Handle bot's response
                }
            case .failure(_):
                // Handle any errors during message sending
                break
            }
        }
    }

    private func receiveBotMessage(_ message: String) {
        let botMessage = ChatMessage(message: message, isUser: false)
        messages.append(botMessage) // Append bot message to chat history
    }
}
