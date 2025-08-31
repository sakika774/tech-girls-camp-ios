//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        Text("E. 商品アイテム")
        // 画像だけは最初に提示しておきます
        
        ZStack{
            Rectangle()
                .fill(Color.white) // 塗りつぶし色
                .frame(width: 330, height: 310)
                .cornerRadius(14) // 背景の角を丸くする
                .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: 0) // 影を追加

            VStack (alignment: .leading){
                AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                    .cornerRadius(10)
                Text("商品名: おしゃれなバッグ")
                    .bold()
                    .padding(.top, 2)
                Text("¥12,800")
                    .foregroundColor(.green)
                    .bold()
                    .font(.title)
                    .padding(.top, 1)
            }
        }
    }
}

#Preview {
    eView()
}
