//
//  Shapes.swift
//  AnimatedWeather
//
//  Created by 이동희 on 2022/10/31.
//

import SwiftUI

struct Arc: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX-1, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX+1, y: rect.minY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX+1, y: rect.maxY+1))
        path.addLine(to: CGPoint(x: rect.minX-1, y: rect.maxY+1))
        path.closeSubpath()
        
        return path
    }
}

//Figma SVG to SwiftUI Code
struct Trapezoid: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.37988*height))
        path.addCurve(to: CGPoint(x: 0.0337*width, y: 0.03068*height), control1: CGPoint(x: 0, y: 0.1812*height), control2: CGPoint(x: 0, y: 0.08186*height))
        path.addCurve(to: CGPoint(x: 0.2184*width, y: 0.04814*height), control1: CGPoint(x: 0.06739*width, y: -0.0205*height), control2: CGPoint(x: 0.11773*width, y: 0.00238*height))
        path.addLine(to: CGPoint(x: 0.8998*width, y: 0.35787*height))
        path.addCurve(to: CGPoint(x: 0.98596*width, y: 0.42473*height), control1: CGPoint(x: 0.94788*width, y: 0.37972*height), control2: CGPoint(x: 0.97192*width, y: 0.39065*height))
        path.addCurve(to: CGPoint(x: width, y: 0.60114*height), control1: CGPoint(x: width, y: 0.45882*height), control2: CGPoint(x: width, y: 0.50626*height))
        path.addLine(to: CGPoint(x: width, y: 0.75*height))
        path.addCurve(to: CGPoint(x: 0.98093*width, y: 0.96339*height), control1: CGPoint(x: width, y: 0.86785*height), control2: CGPoint(x: width, y: 0.92678*height))
        path.addCurve(to: CGPoint(x: 0.86982*width, y: height), control1: CGPoint(x: 0.96187*width, y: height), control2: CGPoint(x: 0.93119*width, y: height))
        path.addLine(to: CGPoint(x: 0.13018*width, y: height))
        path.addCurve(to: CGPoint(x: 0.01906*width, y: 0.96339*height), control1: CGPoint(x: 0.06881*width, y: height), control2: CGPoint(x: 0.03813*width, y: height))
        path.addCurve(to: CGPoint(x: 0, y: 0.75*height), control1: CGPoint(x: 0, y: 0.92678*height), control2: CGPoint(x: 0, y: 0.86785*height))
        path.addLine(to: CGPoint(x: 0, y: 0.37988*height))
        path.closeSubpath()
        return path
    }
}
