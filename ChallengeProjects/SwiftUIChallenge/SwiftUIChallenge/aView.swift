//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// A. 縦に3つの色付き長方形を等間隔で配置
//

import SwiftUI

struct aView: View {
    var body: some View {
        Text("A: 縦に3つの色付き長方形を等間隔で配置")
        VStack(spacing:20) {
            Rectangle()
                .fill(Color.red) // 塗りつぶし色
                .frame(width: 100, height: 50)
            Rectangle()
                .fill(Color.green) // 塗りつぶし色
                .frame(width: 100, height: 50)
            Rectangle()
                .fill(Color.blue) // 塗りつぶし色
                .frame(width: 100, height: 50)
        }
    }
}

#Preview {
    aView()
}
