//
//  BDKTestsApp.swift
//  BDKTests
//
//  Created by Setor Blagogee on 10.07.23.
//

import SwiftUI

@main
struct BDKTestsApp: App {
    @StateObject var walletManeger = WalletManager();

    var body: some Scene {
        WindowGroup {
            ContentView(walletManager: walletManeger).environmentObject(walletManeger).preferredColorScheme(.dark)
        }
    }
}
