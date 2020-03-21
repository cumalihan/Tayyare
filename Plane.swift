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
    var imageDetail: String
    
   
}

extension Plane {
    static let demoPlanes = [
        Plane(title: "Boeing 737", imageName: "Boeing",detail:"The Boeing 737 is a narrow-body aircraft produced by Boeing Commercial Airplanes at its Renton Factory in Washington. Developed to supplement the 727 on short and thin routes, the twinjet retains the 707 fuselage cross-section and nose with two underwing turbofans. Envisioned in 1964, the initial 737-100 made its first flight in April 1967 and entered service in February 1968 with Lufthansa.The lengthened 737-200 entered service in April 1968. It evolved through four generations, offering several variants for 85 to 215 passengers.                                                                 The -100/200 original variants were powered by Pratt & Whitney JT8D low-bypass engines and offered seating for 85 to 130 passengers. Launched in 1980 and introduced in 1984, the 737 Classic -300/400/500 variants were re-engined with CFM56-3 turbofans and offered 110 to 168 seats. Introduced in 1997, the 737 Next Generation (NG) -600/700/800/900 variants have updated CFM56-7s, a larger wing and an upgraded glass cockpit, and seat 108 to 215 passengers. The latest generation, the 737 MAX -7/8/9/10, powered by improved CFM LEAP high bypass turbofans and accommodating 138 to 204 people, entered service in 2017. Boeing Business Jet versions are produced since the 737NG, as well as military models.                                                                                                            As of December 2019, 15,156 Boeing 737s have been ordered and 10,571 delivered. Actual backlog stands at 4,398 when including 'additional criteria for recognizing contracted backlog with customers beyond the existence of a firm contract'. It was the highest-selling commercial jetliner until being surpassed in total orders by the competing Airbus A320 family in October 2019. Before, it competed primarily with the McDonnell Douglas DC-9, then its MD-80/MD-90 derivatives. In March 2019, the Boeing 737 MAX was grounded worldwide following two fatal crashes. ",imageDetail: "boeing737"),
        Plane(title: "Airbus A380", imageName: "Airbus",detail:"The Airbus A380 is the largest jet airliner ever built and is the world’s first double-deck passenger aircraft. First flight took place from Toulouse, France on 27 April 2005 and led to a flight test programme involving five Airbus A380s. Service entry with launch customer Singapore Airlines is set for 25th October 2007. Total orders for the Airbus A380 stand at 159, from 16 customers.Two versions of the Airbus A380 are currently offered, the 550-seat passenger version and a freighter, the Airbus A380F. Stretched versions of both are planned.                                                    There are two engine options for the Airbus A380: the 74,000lb – 84,000lb thrust Rolls-Royce Trent 900, and the 76,500lb – 81,500lb thrust General Electric/Pratt & Whitney Engine Alliance GP7200, each producing 74,000lb – 84,000lb of thrust. The first Airbus A380s are powered by the Rolls-Royce engine, which was certificated in October 2004. The GP7200 was certificated in December 2005.                                                                                       As with all modern Airbus types, the Airbus A380 is controlled by a fully fly-by-wire flight control system. The upper fuselage of the aircraft is constructed with a new aluminium/glassfibre material, Glare, which is lighter than aluminium and more resistant to fatigue.",imageDetail: "airbus380Detail"),
        Plane(title:"Concorde",imageName: "Concorde",detail:"Concorde, the first supersonic passenger-carrying commercial airplane (or supersonic transport, SST), built jointly by aircraft manufacturers in Great Britain and France. The Concorde made its first transatlantic crossing on September 26, 1973, and it inaugurated the world’s first scheduled supersonic passenger service on January 21, 1976—British Airways initially flying the aircraft from London to Bahrain and Air France flying it from Paris to Rio de Janeiro. Both airlines added regular service to Washington, D.C., in May 1976 and to New York City in November 1977. Other routes were added temporarily or seasonally, and the Concorde was flown on chartered flights to destinations all over the world. However, the aircraft’s noise and operating expense limited its service. Financial losses led both airlines to cut routes, eventually leaving New York City as their only regular destination. Concorde operations were finally ceased by Air France in May 2003 and by British Airways in October 2003. Only 14 of the aircraft actually went into service.                                                                            The Concorde was the first major cooperative venture of European countries to design and build an aircraft. On November 29, 1962, Britain and France signed a treaty to share costs and risks in producing an SST. British Aerospace and the French firm Aérospatiale were responsible for the airframe, while Britain’s Rolls-Royce and France’s SNECMA (Société Nationale d’Étude et de Construction de Moteurs d’Aviation) developed the jet engines. The result was a technological masterpiece, the delta-wing Concorde, which made its first flight on March 2, 1969. The Concorde had a maximum cruising speed of 2,179 km (1,354 miles) per hour, or Mach 2.04 (more than twice the speed of sound), allowing the aircraft to reduce the flight time between London and New York to about three hours. The development costs of the Concorde were so great that they could never be recovered from operations, and the aircraft was never financially profitable. Nevertheless, it proved that European governments and manufacturers could cooperate in complex ventures, and it helped to ensure that Europe would remain at the technical forefront of aerospace development.                                                                        On July 25, 2000, a Concorde en route from Paris to New York City suffered engine failure shortly after takeoff when debris from a burst tire caused a fuel tank to rupture and burst into flames. The aircraft crashed into a small hotel and restaurant. All 109 persons on board, including 100 passengers and 9 crew members, died; 4 people on the ground were also killed.",imageDetail: "concordeDetail")
    ]
}
