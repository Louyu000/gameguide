//
//  YoutubeRow.swift
//  pages
//
//  Created by Lou on 2022/12/27.
//

import SwiftUI
import UIKit
@available(iOS 15.0, *)
struct YoutubeRow: View {
    @EnvironmentObject var saver: ItunesDataSaver
    var item: videopack
    var showSaveIcon = true
    var isSave: Bool {
        item.isSave ?? false
    }
    var body: some View {
        VStack{
            Link(destination: URL(string: "https://www.youtube.com/watch?v=\(item.snippet.resourceId.videoId)")!, label: {
                VStack{
                    AsyncImage(url:URL(string: item.snippet.thumbnails.medium.url)!)
                        .frame(width: 320.0, height: 180.0)
                    Text(item.snippet.title)
                        .font(.custom("ChenYuluoyan-Thin",size:30))
                }.overlay(Rectangle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .background(Color.black)
            })
            if showSaveIcon {
                HStack{
                    Image(systemName: isSave ? "heart.fill" : "heart")
                        .frame(width: 90.0)
                        .onTapGesture {
                            if isSave == false {
                                saver.items.append(item)
                            } else {
                                saver.items.removeAll {
                                    $0.id == item.id
                                }
                            }
                        }
                    Image(systemName: "square.and.arrow.up")
                        .frame(width: 90.0).onTapGesture{sharebutton(url: "https://www.youtube.com/watch?v=\(item.snippet.resourceId.videoId)")}
                    
                    
                }
            }
        }
    }
}
func sharebutton(url:String){
    let activityController = UIActivityViewController(activityItems: [url], applicationActivities: nil)
    UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true,completion:nil)
    
    
}


struct YoutubeRow_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            YoutubeRow(item: videopack(snippet: videoinfo(title: "≪闇影詩章≫第27彈卡包「Eightfold Abyss: Azvaldt / 八獄魔境‧阿茲弗特」宣傳影片", thumbnails: picpack(medium: picinfo(url: "https://i.ytimg.com/vi/_dDJFrruFcQ/mqdefault.jpg")), resourceId: idinfo(videoId: "_dDJFrruFcQ")))).environmentObject(ItunesDataSaver())
        } else {
            Text("僅支援ios15以上")// Fallback on earlier versions
        }
    }
}
