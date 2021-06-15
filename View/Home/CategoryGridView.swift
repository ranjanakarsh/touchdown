//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Ranjan Akarsh on 15/06/21.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                
                Section(
                    header: SectionView(rotationClockwise: false),
                    footer: SectionView(rotationClockwise: true)) {
                    
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            } //: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
