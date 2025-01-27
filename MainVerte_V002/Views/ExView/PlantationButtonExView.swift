//
//  PlantationButtonExView.swift
//  MainVerte
//
//  Created by Apprenant 141 on 29/07/2024.
//

import SwiftUI

struct PlantationButtonExView: View {
    
    var plantation : Plantation
    
    var body: some View {
        NavigationLink ( destination : {
            MySpacePlantDetailsView(plantation : plantation)
        }, label : {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.white)
                    .frame(height : 88)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(.mvDarkGreen, lineWidth: 1.5)
                    .foregroundStyle(.white)
                    .frame(height : 88)
                HStack {
                    Image(plantation.plant.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width : 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    VStack(alignment : .leading, spacing : 0) {
                        TitleExView(title: plantation.plant.name, textSize: 22, textColor: .mvDarkGreen)
                        Text(plantation.plant.description)
                            .frame(height: 30)
                            .foregroundStyle(.mvMediumGray)
                    }
                    Spacer()
                    Image(systemName: "arrow.right")
                        .foregroundStyle(.mvMediumGray)
                }
                .padding(.horizontal, 16)
            }
        })
    }
}

#Preview {
    PlantationButtonExView(plantation: Plantation(personalNotes: "", plantedDate: Date.now, plant: PlantViewModel().plants[0], container: PlantContainer.inGround))
}
