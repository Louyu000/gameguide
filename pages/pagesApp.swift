//
//  pagesApp.swift
//  pages
//
//  Created by User16 on 2022/10/5.
//

import SwiftUI

@main
struct pagesApp: App {
    @StateObject private var fetcher = ItunesDataFetcher()
    @StateObject private var saver = ItunesDataSaver()
    var body: some Scene {
        WindowGroup {
            MainPage()
                .environmentObject(fetcher)
                .environmentObject(saver)
        }
    }
}
