//
//  StreamerList.swift
//  pages
//
//  Created by User19 on 2022/10/25.
//

import SwiftUI
//twitch blue_fat 蛋蛋DanDan Mist小嵐 冷颯 四季
//yt 奧茲國的大冰喵 語風薯薯撿到貓 behind the cards
struct StreamerList: View {
    let twitch = [Streamer(name: "blue_fat", link: "https://www.twitch.tv/blue_fat"),
                  Streamer(name: "蛋蛋DanDan", link: "https://www.twitch.tv/dandan0115"),
                  Streamer(name: "小嵐", link: "https://www.twitch.tv/lanaiyu"),
                  Streamer(name: "冷颯", link: "https://www.twitch.tv/fable165469"),
                  Streamer(name: "四季", link: "https://www.twitch.tv/siki62")]
    let youtube = [Streamer(name: "奧茲國的大冰喵", link: "https://www.youtube.com/channel/UC3ropBfo-B-B8iW9v1KZUTw"),
                   Streamer(name: "語風薯薯撿到貓 Kazeimo Ch.", link: "https://www.youtube.com/c/%E8%AA%9E%E9%A2%A8%E8%96%AF%E8%96%AF"),
                   Streamer(name: "Behind The Cards", link: "https://www.youtube.com/c/BehindTheCard"),
                   Streamer(name: "蛋蛋DanDan_yt", link: "https://www.youtube.com/c/%E8%9B%8B%E8%9B%8BDanDan")]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Twitch實況主")){
                    ForEach(twitch) { streamer in
                        StreamerRow(streamer: streamer)
                    }
                }
                Section(header: Text("Youtube實況主")){
                    ForEach(youtube) { streamer in
                        StreamerRow(streamer: streamer)
                    }
                }
            }
        }
    }
}

struct StreamerList_Previews: PreviewProvider {
    static var previews: some View {
        StreamerList()
    }
}
/*Section {
 ForEach(twitch) { streamer in
 StreamerRow(streamer: streamer)
 }
 } header: {
 Text("Twitch實況主")
 }
 Section {
 ForEach(youtube) {  streamer in
 StreamerRow(streamer: streamer)
 }
 } header: {
 Text("Youtube實況主")
 }*/
