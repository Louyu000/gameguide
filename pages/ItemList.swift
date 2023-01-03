//
//  ItemList.swift
//  ItunesApiCompletionHandler
//
//  Created by Peter Pan on 2022/12/1.
//

import SwiftUI
import Foundation

struct ItemList: View {
    @EnvironmentObject var fetcher: ItunesDataFetcher
    @EnvironmentObject var saver: ItunesDataSaver

    var items: [videopack] {
        var items = [videopack]()
        for var item in fetcher.items {
            let isContain = saver.items.contains {
                $0.id == item.id
            }
            if isContain {
                item.isSave = true
            } else {
                item.isSave = false
            }
            items.append(item)
        }
        return items
    }
    
    var body: some View {
        List {
            ForEach(items) { item in
                if #available(iOS 15.0, *) {
                    YoutubeRow(item: item)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
        .alert(isPresented: $fetcher.showError, content: {
            Alert(title: Text(fetcher.error?.localizedDescription ?? ""))
        })
        .onAppear {
            if fetcher.items.isEmpty {
                fetcher.fetchData()
            }
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList()
            .environmentObject(ItunesDataFetcher())
            .environmentObject(ItunesDataSaver())
    }
}
