//
//  NetworkAssembly.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 19/02/2024.
//

import Foundation
import Swinject

struct NetworkAssembly: Assembly {
    func assemble(container: Container) {
        container.register(SearchInteractorProtocol.self) { _ in
            return SearchInteractor()
        }
    }
}
