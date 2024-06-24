//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "KokTobe",
            cityName: "Almaty",
            coordinates: CLLocationCoordinate2D(latitude: 43.232369, longitude: 76.976910),
            description: "Kók Tóbe Park, a popular recreation area, is on top of the mountain. The mountain's height is 1100 meters above sea level. Kok Tobe is one of the main landmarks in the city, and it is popular among visitors and tourists to Almaty.",
            imageNames: [
                "almaty-koktobe-1",
                "almaty-koktobe-2",
                "almaty-koktobe-3",
            ],
            link: "https://en.wikipedia.org/wiki/Kok_Tobe"),
        Location(
            name: "Medeu",
            cityName: "Almaty",
            coordinates: CLLocationCoordinate2D(latitude: 43.157764, longitude: 77.058775),
            description: "Medeu sits 1,691 metres above sea level. It consists of 10.5 thousand square meters of ice and utilizes a sophisticated freezing and watering system to ensure the quality of the ice.",
            imageNames: [
                "almaty-medeu-1",
                "almaty-medeu-2",
                "almaty-medeu-3",
            ],
            link: "https://en.wikipedia.org/wiki/Medeu"),
        Location(
            name: "Baiterek",
            cityName: "Astana",
            coordinates: CLLocationCoordinate2D(latitude: 51.128351, longitude: 71.430219),
            description: "Baiterek is a monument and observation tower in Astana, the capital city of Kazakhstan. A tourist attraction popular with foreign visitors and Kazakhs, it is emblematic of the city, which became capital of the country in 1997. The tower is located on Nurjol Boulevard, and is considered a symbol of post-independence Kazakhstan.",
            imageNames: [
                "astana-baiterek-1",
                "astana-baiterek-2",
                "astana-baiterek-3",
            ],
            link: "https://en.wikipedia.org/wiki/Baiterek_(monument)"),
        Location(
            name: "Khan Shatyr",
            cityName: "Astana",
            coordinates: CLLocationCoordinate2D(latitude: 51.132489, longitude: 71.403825),
            description: "Khan Shatyr (Kazakh: Хан Шатыр, romanized: Han Şatyr, lit. 'Grand Marquee') is a transparent tent-shaped Entertainment Center located in Astana, the capital city of Kazakhstan. Built in a neo-futurist style, the architectural project was unveiled by the first President of Kazakhstan Nursultan Nazarbayev on December 9, 2006.",
            imageNames: [
                "astana-khanshatyr-1",
                "astana-khanshatyr-2",
                "astana-khanshatyr-3"
            ],
            link: "https://en.wikipedia.org/wiki/Khan_Shatyr_Entertainment_Center"),
        Location(
            name: "SDU",
            cityName: "Almaty",
            coordinates: CLLocationCoordinate2D(latitude: 43.207318, longitude: 76.669680),
            description: "SDU University is a private university in Kaskelen, Almaty, Kazakhstan. It is named after Süleyman Demirel, the former prime minister and president of Turkey. The university was established in 1996, by the initiatives of the former president of Kazakhstan, Nursultan Nazarbayev, and the former president of Turkey, Suleyman Demirel.",
            imageNames: [
                "almaty-sdu-1",
                "almaty-sdu-2",
                "almaty-sdu-3",
            ],
            link: "https://en.wikipedia.org/wiki/Suleyman_Demirel_University"),
    ]
    
}
