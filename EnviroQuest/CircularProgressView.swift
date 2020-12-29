//
//  CircularProgressView.swift
//  Circular Progress Bar
//
//  Created by Apple April on 18/12/20.
//
//entire file to be commented to remove cpr
import UIKit

class CircularProgressView: UIView {
    
    
    
    @IBInspectable public var backGroundCircleColor: UIColor = UIColor.lightGray
    @IBInspectable public var startGradientColor: UIColor = UIColor.red
    @IBInspectable public var endGradientColor: UIColor = UIColor.orange
    @IBInspectable public var textColor: UIColor = UIColor.white
    

    private var backgroundLayer: CAShapeLayer!
    private var foregroundLayer: CAShapeLayer!
    private var textLayer: CATextLayer!
    private var gradientLayer: CAGradientLayer!

    public var progress: CGFloat = 0 {
        didSet {
            didProgressUpdated()
        }
    }

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        
        guard layer.sublayers == nil else {
            return
        }
        
        let width = rect.width
        let height = rect.height
        
        let lineWidth = 0.1 * min(width, height)
        
        backgroundLayer = createCircularLayer(rect: rect, strokeColor: UIColor.lightGray.cgColor, fillColor: UIColor.clear.cgColor, lineWidth: lineWidth)
        foregroundLayer = createCircularLayer(rect: rect, strokeColor: UIColor.red.cgColor, fillColor: UIColor.clear.cgColor, lineWidth: lineWidth)
        
        gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.5)
        
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.orange.cgColor]
        gradientLayer.frame = rect
        gradientLayer.mask = foregroundLayer
        
        textLayer = createTextLayer(rect: rect, textColor: UIColor.black.cgColor)
        
        layer.addSublayer(backgroundLayer)
        layer.addSublayer(gradientLayer)
        layer.addSublayer(textLayer)
        

        
//        let center = CGPoint(x: width/2, y: height/2)
//        let radius = (min(width, height) - lineWidth)/2
//
//        let startAngle = -CGFloat.pi/2
//        let endAngle = startAngle + 2 * CGFloat.pi
//
//        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
//
//        backgroundLayer = CAShapeLayer()
//
//        backgroundLayer.path = circularPath.cgPath
//
//        backgroundLayer.strokeColor = UIColor.lightGray.cgColor
//        backgroundLayer.fillColor = UIColor.clear.cgColor
//        backgroundLayer.lineWidth = lineWidth
//        backgroundLayer.lineCap = .round
//
//
//
//
//        foregroundLayer = CAShapeLayer()
//
//        foregroundLayer.path = circularPath.cgPath
//
//        foregroundLayer.strokeColor = UIColor.red.cgColor
//        foregroundLayer.fillColor = UIColor.clear.cgColor
//        foregroundLayer.lineWidth = lineWidth
//        foregroundLayer.lineCap = .round
//
//        foregroundLayer.strokeEnd = 0.5
//
//        textLayer = createTextLayer(rect: rect, textColor: UIColor.white.cgColor)
//
        
        
    }
    
    private func  createCircularLayer(rect: CGRect, strokeColor: CGColor, fillColor: CGColor, lineWidth: CGFloat) -> CAShapeLayer {
        
        let width = rect.width
        let height = rect.height
        
        let center = CGPoint(x: width / 2, y: height / 2)
        let radius = (min(width, height) - lineWidth) / 2
        
        let startAngle = -CGFloat.pi / 2
        let endAngle = startAngle + 2 * CGFloat.pi
        
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.path = circularPath.cgPath
        
        shapeLayer.strokeColor = strokeColor
        shapeLayer.fillColor = fillColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.lineCap = .round
        
        return shapeLayer
    }
    
    private func createTextLayer(rect: CGRect, textColor: CGColor) -> CATextLayer {
        
        let width = rect.width
        let height = rect.height
        
        let fontSize = min(width, height) / 4
        let offset = min(width, height) * 0.1
        
        let layer = CATextLayer()
        layer.string = "100"
        layer.backgroundColor = UIColor.clear.cgColor
        layer.foregroundColor = textColor
        layer.fontSize = fontSize
        layer.frame = CGRect(x: 0, y: (height - fontSize - offset) / 2, width: width, height: fontSize + offset)
        layer.alignmentMode = .center
        
        return layer
            
        }
    
    private func didProgressUpdated() {
        textLayer?.string = "\(Int(progress * 100))"
        foregroundLayer?.strokeEnd = progress
        
    }

}
    
    
    
    
    
    
   

