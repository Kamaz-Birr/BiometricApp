//
//  IrisFingerDisplayResults.swift
//  AirSnapFacePro
//
//  Created by Haldox on 13/05/2024.
//

import Foundation
import AirSnapFingerUI
import UIKit

struct IrisFingerDisplayResults: Identifiable {
    public var id = UUID()
    public var fingerImages: UIImage?
    public var fingerNames: String?
    public var imageType:ImageType = ImageType.IMAGE_TYPE_PNG
}
