//
//  FingerCaptureStart.swift
//  AirSnapFacePro
//
//  Created by Haldox on 13/05/2024.
//

import SwiftUI
import UIKit
import AirSnapFingerUI

class FingerCaptureStart: UIViewController, FingersCapturedProtocol {
    
    static var thumbImage: UIImage!
    var fingers = [UIImage]()
    var displayResultList = [IrisFingerDisplayResults]()
    var viewHasAppeared = false
//    var irisResults: IrisFingerCaptureResults?
    
    
    func onFingersCaptured(result: AirSnapFingerUI.FingerCaptureResult) {
        print("get captured finger \(result.fingers!)")
        print("get liveness \(result.livenessScores!)")
        print("get slap \(result.slapImages!)")
        
//        irisResults?.fingers = result.fingers
//        irisResults?.livenessScore = result.livenessScores
//        irisResults?.slapImages = result.slapImages
        
        let capturedFingers = result.fingers
        capturedFingers?.forEach({ finger in
            print("DEBUG: Finger name: ", finger.name)
            print("finger pos - ",finger.pos)
            print("finger quality - ",finger.quality)
            print("finger nistquality - ",finger.nistQuality)
            print("finger template - ",finger.template!)
            /**WSQ Format**/
            //// WSQ formats can not be converted to UIImage, can be saved to File Manager
            let primarysize = self.format(bytes: Double(finger.primaryImage!.count))
            print("Primary : size of captured \(finger.primaryImageType) image \(String(describing: primarysize))")
            //print("FINGER Primary Image Type base64 is \(finger.primaryImage?.base64EncodedData().base64EncodedString())")

            
            ////////////////////////////////////////////////////////////////////////////////////................................
            /**PNG Format**/
            //// Only Display image can be converted to UIImage as its a png format..
            let displaysize = self.format(bytes: Double(finger.displayImage!.count))
            print("Display : size of captured \(finger.displayImageType) image \(String(describing: displaysize))")
            
            let uiImage = UIImage.init(data: finger.displayImage!)
            //print("FINGER Display Image Typebase64 is \(finger.displayImage?.base64EncodedData().base64EncodedString())")
            
            fingers.append(convertDataToImage(data: finger.displayImage!)!)
            
            
            var displayResult = IrisFingerDisplayResults()
            displayResult.fingerImages = uiImage!
            print("DEBUG: \(String(describing: displayResult.fingerImages))")
            displayResult.fingerNames = finger.name
            print("DEBUG: \(String(describing: displayResult.fingerNames!))")
            displayResultList.append(displayResult)
        })
        
        result.livenessScores?.forEach({ score in
            print("LIVENESS pos - \(String(describing: score.pos)) has liveness score - \(String(describing: score.score))")
        })
        
        result.slapImages?.forEach({ slap in
            print("slap pos - ",slap.pos)
            /**Convert to UIImage based on format**/
            //// Only Display image can be converted to UIImage as its a png format..
            let size = self.format(bytes: Double(slap.image!.count))
            print("size of captured \(slap.imageType) image \(String(describing: size))")
            if slap.imageType == .IMAGE_TYPE_PNG{
                let uiImage = UIImage.init(data: slap.image!)
            }
            //print("SLAP base64 is \(slap.image?.base64EncodedData().base64EncodedString())")
        })
        
    }
    
    func onFingerCaptureFailed(errorMsg: String) {
        
    }
    
    func onFingerCaptureCancelled(errorMsg: String) {
        
    }
    
    func onTimedout(lastCapturedImage: Data?) {
        print("my laST CAPTURED IMAGE: \(String(describing: lastCapturedImage?.base64EncodedString()))")
    }
    
    func onReset() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Capture View loaded")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !viewHasAppeared {
            viewHasAppeared = true
            goToFinger()
        }
        
        if !fingers.isEmpty {
            let swiftUIView = FingerCaptureResultsView(fingerName: displayResultList)
            let hostingController = UIHostingController(rootView: swiftUIView)
            present(hostingController, animated: true, completion: nil)
        }
    }
    
    func goToFinger() {
        
        let fingerController = T5FingerCaptureController()
        fingerController.setLivenessCheck(livnessCheck: true)
        fingerController.getQuality(getQuality: true)
        fingerController.setSegmentationMode(segmentationModes: [.SEGMENTATION_MODE_LEFT_THUMB, .SEGMENTATION_MODE_LEFT_INDEX, .SEGMENTATION_MODE_RIGHT_THUMB])
        fingerController.setSegmentedFingerImagesConfig(segmentedFingerImagesConfig: self.setSegmentImageConfigurations())
        fingerController.setSlapImagesConfig(slapImagesConfig: self.setSlapImageConfigurations())
        fingerController.startCapture(viewController: self, delegate:self)
        
        switch UIDevice().type {//Added all Pro devices in PRO zoom factor for better focus
                    case .iPhone13Pro, .iPhone13ProMax,.iPhone14Pro, .iPhone14ProMax, .iPhone15Pro, .iPhone15ProMax: fingerController.setZoomFactor(zoom:FingerZoomFactor.PRO_ZOOM)
            print(UIDevice.Type.self)
                    default: fingerController.setZoomFactor(zoom:FingerZoomFactor.STANDARD_ZOOM)
                    }
    }
    
    func setSegmentImageConfigurations() -> ImageConfiguration{
        let imageConfigs = ImageConfiguration()
        imageConfigs.primaryImageType = .IMAGE_TYPE_WSQ
        imageConfigs.cropImage = false
        imageConfigs.compressionRatio = 10
        imageConfigs.croppedImageWidth = 512
        imageConfigs.croppedImageHeight = 512
        imageConfigs.requireDisplayImage = true
        imageConfigs.displayImageType = .IMAGE_TYPE_PNG
        return imageConfigs
    }
    
    func setSlapImageConfigurations() -> ImageConfiguration{
        let imageConfigs = ImageConfiguration()
        imageConfigs.primaryImageType = .IMAGE_TYPE_WSQ
        imageConfigs.compressionRatio = 10
        imageConfigs.croppedImageWidth = 1600
        imageConfigs.croppedImageHeight = 1500
        return imageConfigs
    }
    
    func format(bytes: Double) -> String {
        guard bytes > 0 else {
            return "0 bytes"
        }
        
        let suffixes = ["bytes", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"]
        let k: Double = 1000
        let i = floor(log(bytes) / log(k))
        
        // Format number with thousands separator and everything below 1 GB with no decimal places.
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = i < 3 ? 0 : 1
        numberFormatter.numberStyle = .decimal
        
        let numberString = numberFormatter.string(from: NSNumber(value: bytes / pow(k, i))) ?? "Unknown"
        let suffix = suffixes[Int(i)]
        return "\(numberString) \(suffix)"
    }
    
     func convertDataToImage(data: Data)->UIImage?{
        return UIImage(data: data, scale: UIScreen.main.scale)
    }
    
     func convertImageToData(image: UIImage) -> Data?{
        return image.jpegData(compressionQuality: 1.0)
    }
    
     func saveImageToUserDefaults(imageData: Data, forKey key: String){
        UserDefaults.standard.set(imageData, forKey: key)
    }
    
     func retrieveImageFromUserDefaults(forKey key: String)-> UIImage?{
        if let retrievedImageData = UserDefaults.standard.data(forKey: key){
            if let retrievedImage = convertDataToImage(data: retrievedImageData){
                return retrievedImage
            }else{
                print("Failed to convert Data to UIImage")
            }
        }else{
            print("No image data found for key: \(key)")
        }
        return nil
    }
}
