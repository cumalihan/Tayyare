//
//  Plane.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 18.03.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//

import SwiftUI

struct  Plane: Identifiable {
    var id = UUID()
    var title: String
    var imageName: String
    var detail: String
   
}

extension Plane {
    static let demoPlanes = [
        Plane(title: "Boeing", imageName: "Boeing",detail:"The Boeing 737 is a narrow-body aircraft produced by Boeing Commercial Airplanes at its Renton Factory in Washington. Developed to supplement the 727 on short and thin routes, the twinjet retains the 707 fuselage cross-section and nose with two underwing turbofans. Envisioned in 1964, the initial 737-100 made its first flight in April 1967 and entered service in February 1968 with Lufthansa.The lengthened 737-200 entered service in April 1968. It evolved through four generations, offering several variants for 85 to 215 passengers.                                                                 The -100/200 original variants were powered by Pratt & Whitney JT8D low-bypass engines and offered seating for 85 to 130 passengers. Launched in 1980 and introduced in 1984, the 737 Classic -300/400/500 variants were re-engined with CFM56-3 turbofans and offered 110 to 168 seats. Introduced in 1997, the 737 Next Generation (NG) -600/700/800/900 variants have updated CFM56-7s, a larger wing and an upgraded glass cockpit, and seat 108 to 215 passengers. The latest generation, the 737 MAX -7/8/9/10, powered by improved CFM LEAP high bypass turbofans and accommodating 138 to 204 people, entered service in 2017. Boeing Business Jet versions are produced since the 737NG, as well as military models.                                                                         As of December 2019, 15,156 Boeing 737s have been ordered and 10,571 delivered.[1] Actual backlog stands at 4,398 when including 'additional criteria for recognizing contracted backlog with customers beyond the existence of a firm contract'.[4] It was the highest-selling commercial jetliner until being surpassed in total orders by the competing Airbus A320 family in October 2019. Before, it competed primarily with the McDonnell Douglas DC-9, then its MD-80/MD-90 derivatives. In March 2019, the Boeing 737 MAX was grounded worldwide following two fatal crashes. "),
        Plane(title: "Airbus", imageName: "Airbus",detail:"The Boeing 737 is a narrow-body aircraft produced by Boeing Commercial Airplanes at its Renton Factory in Washington. Developed to supplement the 727 on short and thin routes, the twinjet retains the 707 fuselage cross-section and nose with two underwing turbofans. Envisioned in 1964, the initial 737-100 made its first flight in April 1967 and entered service in February 1968 with Lufthansa. The lengthened 737-200 entered service in April 1968. It evolved through four generations, offering several variants for 85 to 215 passengers."),
        Plane(title:"Concorde",imageName: "Concorde",detail:"The Boeing 737 is a narrow-body aircraft produced by Boeing Commercial Airplanes at its Renton Factory in Washington. Developed to supplement the 727 on short and thin routes, the twinjet retains the 707 fuselage cross-section and nose with two underwing turbofans. Envisioned in 1964, the initial 737-100 made its first flight in April 1967 and entered service in February 1968 with Lufthansa. The lengthened 737-200 entered service in April 1968. It evolved through four generations, offering several variants for 85 to 215 passengers.")
    ]
}
