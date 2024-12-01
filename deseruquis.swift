func contrastFilter(image: UIImage, contrast: Float) -> UIImage? {
    guard let ciImage = CIImage(image: image) else { return nil }
    
    let filter = CIFilter(name: "CIColorControls")
    filter?.setValue(ciImage, forKey: kCIInputImageKey)
    filter?.setValue(contrast, forKey: kCIInputContrastKey)
    
    if let outputImage = filter?.outputImage {
        let context = CIContext(options: nil)
        if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
            return UIImage(cgImage: cgImage)
        }
    }
    
    return nil
}
