import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
            let view = UIView()
            
        //left up first line
            var path = UIBezierPath()
            path.move(to: CGPoint(x: 260, y: 56))
            path.addQuadCurve(to: CGPoint(x: 38, y: 266), controlPoint: CGPoint(x: 90, y: 87))
            
            var layer = CAShapeLayer()
            layer.path = path.cgPath
            layer.lineWidth = 3
            layer.strokeColor = UIColor.black.cgColor
            layer.fillColor = UIColor.clear.cgColor
            view.layer.addSublayer(layer)
        //left up second line
            path = UIBezierPath()
        path.move(to: CGPoint(x: 235, y: 71))
        path.addQuadCurve(to: CGPoint(x: 63, y: 261), controlPoint: CGPoint(x: 94, y: 117))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 3
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        
        //right down first line
        path = UIBezierPath()
        path.move(to: CGPoint(x: 284, y: 76))
        path.addQuadCurve(to: CGPoint(x: 52, y: 297), controlPoint: CGPoint(x: 258, y: 248))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 3
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        
        //right down second line
        path = UIBezierPath()
        path.move(to: CGPoint(x: 301, y: 97))
        path.addQuadCurve(to: CGPoint(x: 64, y: 310), controlPoint: CGPoint(x: 292, y: 243))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 3
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        
        //right inside line
        path = UIBezierPath()
        path.move(to: CGPoint(x: 252, y: 88))
        path.addQuadCurve(to: CGPoint(x: 64, y: 261), controlPoint: CGPoint(x: 235, y: 207))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 3
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        
        
        """
        //sample
        path = UIBezierPath()
        path.move(to: CGPoint(x: <#T##CGFloat#>, y: <#T##CGFloat#>))
        path.addQuadCurve(to: CGPoint(x: <#T##CGFloat#>, y: <#T##CGFloat#>), controlPoint: CGPoint(x: <#T##CGFloat#>, y: <#T##CGFloat#>))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 3
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        """
        //out left
        path = UIBezierPath()
        path.move(to: CGPoint(x: 255, y: 50))
        path.addQuadCurve(to: CGPoint(x: 35, y: 255), controlPoint: CGPoint(x: 0, y: -10))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 5
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        //out right
        path = UIBezierPath()
        path.move(to: CGPoint(x: 300, y: 75))
        path.addQuadCurve(to: CGPoint(x: 64, y: 315), controlPoint: CGPoint(x: 400, y: 300))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 5
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        
        //middle
        path = UIBezierPath()
        path.move(to: CGPoint(x: 240, y: 95))
        path.addQuadCurve(to: CGPoint(x: 85, y: 220), controlPoint: CGPoint(x: 90, y: 240))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 1
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        
        //G point
        path = UIBezierPath()
        path.move(to: CGPoint(x: 290, y: 55))
        path.addQuadCurve(to: CGPoint(x: 260, y: 75), controlPoint: CGPoint(x: 250, y: 75))
        layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 20
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layer)
        
            return view
    }
    
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
