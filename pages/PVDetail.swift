//
//  PVDetail.swift
//  pages
//
//  Created by User14 on 2022/10/19.
//

import SwiftUI
import AVKit
struct PVDetail: View {
    let pv:PV
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
            VStack{
                    Image(pv.VersionName)
                        .resizable()
                        .scaledToFit()
                    let url = Bundle.main.url(forResource: pv.VideoLink, withExtension: "mp4")!
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(minWidth: 200, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 200,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    Text("版本：\(pv.Version)")
                    Text("\(pv.VersionName)")
                        .multilineTextAlignment(.center)
                    Text("簡介：\n"+pv.Description)
                        .frame(minHeight: 700,  maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
            }.foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
        }.background(Image("main_bg")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
        )
    }
}

struct PVDetail_Previews: PreviewProvider {
    static var previews: some View {
        PVDetail(pv: PV(Version: 1, VersionName: "Darkness Over Vellsar\n暗黑的威爾薩",  VideoLink: "pv2", Description: "DC"))
    }
}
