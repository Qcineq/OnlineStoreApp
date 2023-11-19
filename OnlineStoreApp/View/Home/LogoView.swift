//
//  LogoView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 19/11/2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Image("logo-main")
                .resizable()
                .scaledToFit()
                .frame(width: 120, alignment: .center)
        }
    }
}

#Preview {
    LogoView()
}
