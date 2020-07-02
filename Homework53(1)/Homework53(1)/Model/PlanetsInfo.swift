//
//  Planets.swift
//  Homework53(1)
//
//  Created by Kato on 7/1/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import Foundation
import UIKit


public class PlanetsInfo {
    static let mercury = Planet(name: "Mercury", description: "Mercury is the smallest and innermost planet in the Solar System. Its orbit around the Sun takes 87.97 days, the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.", image: UIImage(named: "mercury")!)
    static let venus = Planet(name: "Venus", description: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in the night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight.[15][16] Venus lies within Earth's orbit, and so never appears to venture far from the Sun, either setting in the west just after dusk or rising in the east a bit before dawn.", image: UIImage(named: "venus")!)
    static let earth = Planet(name: "Earth", description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, which is Earth's only natural satellite. Earth orbits around the Sun in 365.256 solar days, a period known as an Earth sidereal year. During this time, Earth rotates about its axis 366.256 times, that is, a sidereal year has 366.256 sidereal days", image: UIImage(named: "earth")!)
    static let mars = Planet(name: "Mars", description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being only larger than Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the Red Planet", image: UIImage(named: "mars")!)
    static let jupiter = Planet(name: "Jupiter", description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined", image: UIImage(named: "jupiter")!)
    static let saturn = Planet(name: "Saturn", description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth. It only has one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive", image: UIImage(named: "saturn")!)
    static let uranus = Planet(name: "Uranus", description: "Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn.", image: UIImage(named: "uranus")!)
    static let neptune = Planet(name: "Neptune", description: "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth, slightly more massive than its near-twin Uranus", image: UIImage(named: "neptune")!)
}

struct Planet {
    var name: String
    var description: String
    var image: UIImage
}
