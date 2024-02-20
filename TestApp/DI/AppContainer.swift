//
//  AppContainer.swift
//  TestApp
//
//  Created by Nyilas Zsombor on 19/02/2024.
//

import Swinject

/// Singleton container for the applicatiom.
public final class AppContainer {
    public static let shared = AppContainer()
    public let container = Container()
    private init() {}
}
