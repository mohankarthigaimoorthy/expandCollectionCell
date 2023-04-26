//
//   UIImage+Decompression.swift
//  expandCollectionViewCell
//
//  Created by Mohan K on 15/02/23.
//

import Foundation
import UIKit

extension UIImage {
    var decompressedImage: UIImage {
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        draw(at: CGPoint.zero)
        guard let decompressedImage = UIGraphicsGetImageFromCurrentImageContext()
        else {
            return UIImage()
        }
        UIGraphicsEndImageContext()
        return decompressedImage
    }
}
