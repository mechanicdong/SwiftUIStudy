//
//  Blur.swift
//  AnimatedWeather
//
//  Created by 이동희 on 2022/10/31.
//

import SwiftUI

class UIBackdropView: UIView {
    override class var layerClass: AnyClass {
        NSClassFromString("CABackdropLayer") ?? CALayer.self
    }
}

//UIKit의 UIView를 SwiftUI에서 사용가능 한 View로 wrapping
struct Backdrop: UIViewRepresentable {
    /* makeUIView
     생성되는 view의 여러가지 프로퍼티를 지정할 수 있다
     원하는 뷰를 생성하고 리턴해주기만 하면 된다
    */
    func makeUIView(context: Context) -> UIBackdropView {
        UIBackdropView()
    }
    /* updateUIView
     SwiftUI View의 state가 바뀔 때마다 트리거 됨
     이 메소드 안에서 view의 정보를 업데이트 할 수 있음
     또한 @Binding 기능을 이용해서 SwiftUI view의 상태도 가져올 수 있다. 단, read only
    */
    func updateUIView(_ uiView: UIViewType, context: Context) {
    
    }
}

struct Blur: View {
    var radius: CGFloat = 3
    var opaque: Bool = false
    
    var body: some View {
        Backdrop()
            .blur(radius: radius, opaque: opaque)
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        Blur()
    }
}
