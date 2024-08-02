//
//  PlantViewModel.swift
//  MainVerte
//
//  Created by Pierre on 19/07/2024.
//

import Foundation

class PlantViewModel: ObservableObject {
    @Published var plants : [Plant] = []
    
    init() {
        plants = [
            Plant(
                name: "Tomate",
                scientificName: "Solanum lycopersicum",
                image: "MVTomato",
                description: "Plante annuelle, avec des fruits rouges, jaunes, ou orange, utilisés dans de nombreux plats.",
                size: 0,
                startSowingDate: Month.february,
                endSowingDate: Month.april,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: 10,
                maxTemperature: 35,
                wateringFrequency: 3,
                wateringQuantity: 1.5,
                spacing: 50,
                plantingMethod: "Semer en intérieur, repiquer en extérieur après les dernières gelées",
                startHarvestDate: Month.july,
                endHarvestDate: Month.october,
                colors: [.red, .yellow, .orange, .green],
                difficulty: "Moyenne",
                fertilizers: [],
                diseases: [DiseaseViewModel().diseases[0]],
                exposures: [Exposure.fullSun],
                soils: [],
                interiorExterior: [InteriorExterior.exterior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Carotte",
                scientificName: "Daucus carota",
                image: "",
                description: "Plante bisannuelle cultivée pour sa racine comestible.",
                size: 0,
                startSowingDate: Month.march,
                endSowingDate: Month.june,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: -2,
                maxTemperature: 30,
                wateringFrequency: 5,
                wateringQuantity: 0.5,
                spacing: 5,
                plantingMethod: "Semis en ligne à 1 cm de profondeur, éclaircir après levée.",
                startHarvestDate: Month.june,
                endHarvestDate: Month.november,
                colors: [.orange, .yellow, .purple, .white],
                difficulty: "Facile",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun, Exposure.partialShade],
                soils: [],
                interiorExterior: [InteriorExterior.exterior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Laitue",
                scientificName: "Lactuca sativa",
                image: "",
                description: "Plante annuelle cultivée pour ses feuilles tendres.",
                size: 0,
                startSowingDate: Month.march,
                endSowingDate: Month.september,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: 5,
                maxTemperature: 25,
                wateringFrequency: 3,
                wateringQuantity: 1.0,
                spacing: 25,
                plantingMethod: "Semis en ligne à 0,5 cm de profondeur, éclaircir après levée.",
                startHarvestDate: Month.may,
                endHarvestDate: Month.october,
                colors: [.green, .red],
                difficulty: "Facile",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun, Exposure.partialShade],
                soils: [],
                interiorExterior: [InteriorExterior.exterior, InteriorExterior.interior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Poivron",
                scientificName: "Capsicum annuum",
                image: "",
                description: "Plante annuelle cultivée pour ses fruits charnus.",
                size: 0,
                startSowingDate: Month.february,
                endSowingDate: Month.april,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: 10,
                maxTemperature: 35,
                wateringFrequency: 3,
                wateringQuantity: 1.0,
                spacing: 50,
                plantingMethod: "Semis en godet, repiquer en pleine terre après les dernières gelées.",
                startHarvestDate: Month.july,
                endHarvestDate: Month.october,
                colors: [.green, .red, .yellow, .orange],
                difficulty: "Moyenne",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun],
                soils: [],
                interiorExterior: [InteriorExterior.exterior, InteriorExterior.interior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Courgette",
                scientificName: "Cucurbita pepo",
                image: "",
                description: "Plante annuelle rampante ou grimpante, cultivée pour ses fruits comestibles.",
                size: 0,
                startSowingDate: Month.april,
                endSowingDate: Month.may,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: 10,
                maxTemperature: 30,
                wateringFrequency: 3,
                wateringQuantity: 2.0,
                spacing: 80,
                plantingMethod: "Semis direct en pleine terre à 2-3 cm de profondeur.",
                startHarvestDate: Month.july,
                endHarvestDate: Month.september,
                colors: [.green, .yellow],
                difficulty: "Facile",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun],
                soils: [],
                interiorExterior: [InteriorExterior.exterior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Radis",
                scientificName: "Raphanus sativus",
                image: "",
                description: "Plante annuelle ou bisannuelle cultivée pour sa racine comestible.",
                size: 0,
                startSowingDate: Month.march,
                endSowingDate: Month.september,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: 5,
                maxTemperature: 30,
                wateringFrequency: 2,
                wateringQuantity: 0.5,
                spacing: 5,
                plantingMethod: "Semis en ligne à 1 cm de profondeur, éclaircir après levée.",
                startHarvestDate: Month.may,
                endHarvestDate: Month.october,
                colors: [.red, .white],
                difficulty: "Facile",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun, Exposure.partialShade],
                soils: [],
                interiorExterior: [InteriorExterior.exterior, InteriorExterior.interior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Épinard",
                scientificName: "Spinacia oleracea",
                image: "",
                description: "Plante annuelle ou bisannuelle cultivée pour ses feuilles comestibles.",
                size: 0,
                startSowingDate: Month.march,
                endSowingDate: Month.may,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: 5,
                maxTemperature: 25,
                wateringFrequency: 4,
                wateringQuantity: 1.0,
                spacing: 20,
                plantingMethod: "Semis en ligne à 1 cm de profondeur, éclaircir après levée.",
                startHarvestDate: Month.may,
                endHarvestDate: Month.october,
                colors: [.green],
                difficulty: "Facile",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun, Exposure.partialShade],
                soils: [],
                interiorExterior: [InteriorExterior.exterior, InteriorExterior.interior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Aubergine",
                scientificName: "Solanum melongena",
                image: "",
                description: "Plante annuelle cultivée pour ses fruits comestibles, généralement violets.",
                size: 0,
                startSowingDate: Month.february,
                endSowingDate: Month.april,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: 10,
                maxTemperature: 35,
                wateringFrequency: 3,
                wateringQuantity: 1.5,
                spacing: 50,
                plantingMethod: "Semis en godet, repiquer en pleine terre après les dernières gelées.",
                startHarvestDate: Month.july,
                endHarvestDate: Month.october,
                colors: [.purple, .white],
                difficulty: "Moyenne",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun],
                soils: [],
                interiorExterior: [InteriorExterior.exterior, InteriorExterior.interior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Basilic",
                scientificName: "Ocimum basilicum",
                image: "",
                description: "Plante aromatique annuelle utilisée pour ses feuilles dans de nombreux plats.",
                size: 0,
                startSowingDate: Month.march,
                endSowingDate: Month.may,
                startBloomDate: Month.june,
                endBloomDate: Month.july,
                minTemperature: 10,
                maxTemperature: 35,
                wateringFrequency: 2,
                wateringQuantity: 1.0,
                spacing: 25,
                plantingMethod: "Semis en godet, repiquer en pleine terre après les dernières gelées.",
                startHarvestDate: Month.july,
                endHarvestDate: Month.september,
                colors: [.green, .purple],
                difficulty: "Facile",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun],
                soils: [],
                interiorExterior: [InteriorExterior.exterior, InteriorExterior.interior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            ),
            Plant(
                name: "Fraise",
                scientificName: "Fragaria × ananassa",
                image: "",
                description: "Plante vivace cultivée pour ses fruits sucrés et juteux.",
                size: 0,
                startSowingDate: Month.february,
                endSowingDate: Month.april,
                startBloomDate: Month.may,
                endBloomDate: Month.june,
                minTemperature: -5,
                maxTemperature: 30,
                wateringFrequency: 3,
                wateringQuantity: 1.0,
                spacing: 30,
                plantingMethod: "Semis en godet, repiquer en pleine terre après les dernières gelées.",
                startHarvestDate: Month.june,
                endHarvestDate: Month.august,
                colors: [.red, .yellow],
                difficulty: "Moyenne",
                fertilizers: [],
                diseases: [],
                exposures: [Exposure.fullSun],
                soils: [],
                interiorExterior: [InteriorExterior.exterior, InteriorExterior.interior],
                containers: [PlantContainer.inPot, PlantContainer.inGround]
            )
        ]
    }
}
