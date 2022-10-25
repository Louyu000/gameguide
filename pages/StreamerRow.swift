//
//  StreamerRow.swift
//  pages
//
//  Created by User19 on 2022/10/25.
//

import SwiftUI

struct StreamerRow: View {
    let streamer:Streamer
    var body: some View {
        
        Link(destination: URL(string: streamer.link)!, label: {
            HStack{
                Image(streamer.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80.0, height: 80.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                Text(streamer.name)
                    .font(.custom("ChenYuluoyan-Thin",size:45))
            }
        })
        
    }
}

struct StreamerRow_Previews: PreviewProvider {
    static var previews: some View {
        StreamerRow(streamer: Streamer(name: "蛋蛋DanDan", link: "https://www.twitch.tv/dandan0115"))
    }
}
