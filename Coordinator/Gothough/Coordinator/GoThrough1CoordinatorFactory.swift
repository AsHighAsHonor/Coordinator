//
//  GoThrough1CoordinatorFactory.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol GoThrough1CoordinatorFactoryProtocol: CoordinatorFactoryProtocol {
    func makeCoordinator() -> GoThrough1Coordinator
}

class GoThrough1CoordinatorFactory: GoThrough1CoordinatorFactoryProtocol {

    func makeCoordinator() -> GoThrough1Coordinator {
        return GoThrough1Coordinator()
    }
}
