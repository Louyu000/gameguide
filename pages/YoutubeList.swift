//
//  YoutubeList.swift
//  pages
//
//  Created by Lou on 2022/12/27.
//

import SwiftUI
import UIKit
struct YoutubeList: View {
    @EnvironmentObject var saver: ItunesDataSaver
    @State private var searchText = ""
    var searchResult: [videopack] {
        if searchText.isEmpty {
            return saver.items
        } else {
            return saver.items.filter {
                $0.snippet.title.contains(searchText)
            }
        }
    }
    var body: some View {
        
        VStack{
            TextField("search",text: $searchText).textFieldStyle(RoundedBorderTextFieldStyle())
            List{
                ForEach(searchResult) { item in
                    if #available(iOS 15.0, *) {
                        YoutubeRow(item: item, showSaveIcon: false)
                    } else {
                        // Fallback on earlier versions
                    }
                }.onDelete { indexSet in
                        saver.items.remove(atOffsets: indexSet)
                    }
                
            }
        }
    }
}


struct YoutubeList_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeList().environmentObject(ItunesDataSaver())
    }
}
