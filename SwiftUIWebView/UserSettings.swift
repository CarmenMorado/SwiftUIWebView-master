//
//  UserSettings.swift
//  SwiftUIWebView
//
//  Created by Carmen Morado on 10/21/20.
//

import Foundation
import Combine

class UserSettings: ObservableObject {
    @Published var message: String {
        didSet {
            UserDefaults.standard.set(message, forKey: "message")
        }
    }
    
    init() {
        self.message = UserDefaults.standard.object(forKey: "message") as? String ?? ""
    }
}
