//
//  SectionView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 22/11/2023.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES
    
    @State var rotateClockwise: Bool
    
    //MARK: - BODY
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Sekcje".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
                
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: false)
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
