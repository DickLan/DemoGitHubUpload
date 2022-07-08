import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        var path = UIBezierPath()
        var point = CGPoint(x: 0, y: 0)
        path.move(to: point)
        point = CGPoint(x: 100, y: 0)
        
        path.addQuadCurve(to: CGPoint(x: 100, y: 300), controlPoint: CGPoint(x: 100, y: 150))
        path.close()
        
        let triangleLayer = CAShapeLayer()
        triangleLayer.path = path.cgPath
        triangleLayer.fillColor = CGColor(srgbRed: 0, green: 1, blue: 1, alpha: 0.5)
        
        view.layer.addSublayer(triangleLayer)
        triangleLayer.strokeColor = CGColor(srgbRed: 1, green: 0, blue: 0, alpha: 0.8)
        triangleLayer.lineWidth = 10
        triangleLayer.fillColor = UIColor.clear.cgColor //將中間填色清空
        
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 200, y: 200))
        path.addLine(to: CGPoint(x: 100, y: 50))
        path.close()
        
        let triangleLayer2 = CAShapeLayer()
        triangleLayer2.path = path.cgPath
        triangleLayer2.fillColor = CGColor(srgbRed: 1, green: 0, blue: 1, alpha: 0.5)
        triangleLayer2.lineWidth = 5
        triangleLayer2.strokeColor = CGColor(srgbRed: 1, green: 1, blue: 0, alpha: 0.8)
        
        view.layer.addSublayer(triangleLayer2)
        
        
        
        
        
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
