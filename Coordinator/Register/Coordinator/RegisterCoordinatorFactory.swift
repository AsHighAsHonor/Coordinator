//
//  RegisterCoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol RegisterCoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator() -> RegisterCoordinator
}

class RegisterCoordinatorFactory: RegisterCoordinatorFactoryProtocol {

    func makeCoordinator() -> RegisterCoordinator {
        return RegisterCoordinator()
    }
}
