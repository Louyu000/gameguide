//
//  PVRow.swift
//  pages
//
//  Created by User14 on 2022/10/19.
//

import SwiftUI

struct PVRow: View {
    let pv : PV
    var body: some View {
        VStack{
            Image(pv.VersionName)
                .resizable()
                .scaledToFill()
                .frame(width: 180.0, height: 100.0)
                .clipped()
            Text(pv.VersionName)
                .multilineTextAlignment(.center)
        }
    }
}

struct PVRow_Previews: PreviewProvider {
    static var previews: some View {
        PVRow(pv: PV(Version: 1, VersionName: "Starforged Legends\n星神傳說",  VideoLink: "VL1", Description: "DC"))
    }
}
