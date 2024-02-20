//
//  TestAppApp.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 14/02/2024.
//

import SwiftUI
import Swinject

@main
struct TestAppApp: App {
    var body: some Scene {
        WindowGroup {
            RepositorySearchView()
                .environment(\.locale, .init(identifier: "en"))
        }
    }
    
    init() {
        // Assembling the AppContainer
        let assembler = Assembler(container: AppContainer.shared.container)
        assembler.apply(assemblies: [NetworkAssembly()])
    }
}
