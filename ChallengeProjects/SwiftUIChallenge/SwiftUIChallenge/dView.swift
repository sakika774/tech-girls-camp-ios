//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）
//

import SwiftUI

struct dView: View {
    var body: some View {
        Text("D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）")
        ZStack() {
            Rectangle()
                .fill(Color.red)
                .frame(width: 300, height: 150)
            
            VStack{
                Text("Left Aligned")
                    .foregroundColor(.white)
                    .padding(.top, 16)
                    .frame(width: 300, height: 50, alignment: .topLeading)
                Text("Center Aligned")
                    .foregroundColor(.white)
                    .padding(10)
                    .font(.title)
                    .frame(width: 300, height: 50, alignment: .center)

                Text("Right Aligned")
                    .foregroundColor(.white)
                    .padding(.bottom, 16)
                    .frame(alignment: .trailing)
                    .frame(width: 300, height: 50, alignment: .bottomTrailing)
                
            }
        }
    }
}

#Preview {
    dView()
}
