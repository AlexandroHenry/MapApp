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
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Louvre Museum",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
		Location(name: "남대문",
				 cityName: "서울",
				 coordinates: CLLocationCoordinate2D(latitude: 37.5599, longitude: 126.9753),
				 description: "숭례문(崇禮門)은 조선의 수도였던 서울의 4대문(大門) 중의 하나로 남쪽의 대문이다. 흔히 남대문(南大門)이라고도 부른다. 서울 4대문 및 보신각(普信閣)의 이름은 오행사상을 따라 지어졌는데, 이런 명칭은 인(仁: 동), 의(義: 서), 례(禮: 남), 지(智: 북), 신(信: 중앙)의 5덕(五德)을 표현한 것이었으며, 숭례문의 '례'는 여기서 유래한 것이다. 숭례문의 편액은 《지봉유설》에 따르면 양녕대군이 썼다고 알려져 있으나 이설이 많다. 1396년(태조 5년)에 최유경의 지휘로 축성하였다. 1447년(세종 29년)과 1479년(성종 10년) 고쳐 지었다.",
				 imageNames: [
					"seoul-namdaemoon-1",
					"seoul-namdaemoon-2",
				 ],
				 link: "https://ko.wikipedia.org/wiki/남대문"),
		Location(name: "63빌딩",
				 cityName: "서울",
				 coordinates: CLLocationCoordinate2D(latitude: 37.5198, longitude: 126.9402),
				 description: "63빌딩 혹은 63 스퀘어는 대한민국 서울특별시 영등포구 여의도동에 있는 마천루이다. 이전 명칭은 한화 63 시티이고 지상높이는 249m, 안테나 높이를 포함할 경우 지상높이는 274m다. 리첸시아 타워 바로 옆에 위치하고 있다.",
				 imageNames: [
					"seoul-63building-1",
					"seoul-63building-2",
				 ],
				 link: "https://ko.wikipedia.org/wiki/63빌딩"),
		Location(name: "Gyeongbokgung",
				 cityName: "서울",
				 coordinates: CLLocationCoordinate2D(latitude: 37.5797, longitude: 126.9766),
				 description: "경복궁(景福宮, 영어: Gyeongbokgung Palace)은 대한민국 서울특별시 청와대로에 있는 조선 왕조의 법궁(法宮, 정궁)이다. 태조 4년인 1395년 창건되어 1592년 임진왜란으로 전소되었고, 1868년 흥선대원군의 주도로 중건되었다. 일제강점기에 훼손되어 현재 복원사업이 진행중이다.",
				 imageNames: [
					"seoul-gyeongbokgung-1",
					"seoul-gyeongbokgung-2",
					"seoul-gyeongbokgung-3",
					"seoul-gyeongbokgung-4",
					"seoul-gyeongbokgung-5",
				 ],
				 link: "https://ko.wikipedia.org/wiki/경복궁")
    ]
    
}
