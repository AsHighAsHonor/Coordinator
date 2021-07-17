//
//  Reset1CoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol Reset1CoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator() -> Reset1Coordinator
}

class Reset1CoordinatorFactory: Reset1CoordinatorFactoryProtocol {

    func makeCoordinator() -> Reset1Coordinator {
        return Reset1Coordinator()
    }
}
