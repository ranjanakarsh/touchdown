//
//  SectionView.swift
//  Touchdown
//
//  Created by Ranjan Akarsh on 15/06/21.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotationClockwise: Bool
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotationClockwise ? 90 : -90))
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotationClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
