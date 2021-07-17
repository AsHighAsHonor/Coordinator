//
//  CoordinatorProtocol.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import Foundation

protocol CoordinatorProtocol: AnyObject {
    func start()
 }

extension CoordinatorProtocol {
    func start() {
        fatalError("Must implement")
    }
}
