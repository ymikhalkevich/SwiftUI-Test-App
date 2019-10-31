//
//  Data.swift
//  SwiftUIFirstDemo
//
//  Created by Алексей Пархоменко on 05.06.2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

let swiftbook = UserResponse(id: 10,
                             name: "Swiftbook",
                             profileImage: "swiftbook",
                             email: "info@swiftbook.ru",
                             likes: "54.4K",
                             text: "Обучение созданию приложений на Swift для всех!\nСамое крупное и дружное сообщество по разработке под iOS :)")


let userResponse: [UserResponse] = load("userModelData.json")
let materialResponce: [ProductsResponse] = load("coursesModelData.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
