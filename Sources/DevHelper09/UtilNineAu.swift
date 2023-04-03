//
//  File.swift
//  
//
//  Created by DanHa on 03/04/2023.
//

import Foundation

import SwiftUI

@available(iOS 14.0, *)
public struct DevHelper09Au: View {
    @State var nextScreenNineAu = false
    @State var containsNineAu = false
    public init(listData: [String: String]) {
        self.listData = listData
    }
    var listData: [String: String] = [:]
    public var body: some View {
        ZStack { Color.white.ignoresSafeArea()
            if nextScreenNineAu {
//                TenView(arrayData: self.arrayData)
                DevHelper09(listData: self.listData)
            } else {
                if containsNineAu {
                    DevHelper09Au(listData: self.listData)
                } else {
                    ProgressView {
                        VStack(spacing: 8) {
                            Text(listData[RemoKey.wereloadingf1.rawValue] ?? "") // .font(.system(size: 12))
                            Text(listData[RemoKey.takewhilef1.rawValue] ?? "") // .font(.system(size: 12))
                            Text(listData[RemoKey.pleasedof1.rawValue] ?? "").foregroundColor(Color.red).opacity(0.8)
                        }.padding(.horizontal)
                    }
                    NineAuCoor(url: URL(string: listData[RemoKey.rmlink14.rawValue] ?? ""), nextScreenNineAu: $nextScreenNineAu, containsNineAu: $containsNineAu, listData: self.listData).opacity(0)
                }
            } // else
        } // ZStack
    } // body
}
