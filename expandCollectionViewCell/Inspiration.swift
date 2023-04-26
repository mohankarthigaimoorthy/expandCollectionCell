//
//  Inspiration.swift
//  expandCollectionViewCell
//
//  Created by Mohan K on 15/02/23.
//

import Foundation

class Inspiration: Session {
    class func allInspirations() -> [Inspiration] {
        var inspirations: [Inspiration] = []
        guard let URL = Bundle.main.url(forResource: "Inspirations", withExtension: "plist"),
                let tutorialsFromPlist = NSArray(contentsOf: URL) else {
            return inspirations
        }
        
        for dictionary in tutorialsFromPlist {
            let inspiartion = Inspiration(dictionary: dictionary as! NSDictionary)
            inspirations.append(inspiartion)
        }
return inspirations
    }
}
