//
//  CalculatorView.swift
//  CalculatorApp
//
//  ChallengeProjects
//

import SwiftUI

struct CalculatorView: View {
    // 最初に利用する変数を定義しています
    // @State: プロパティが変更されたときにビューを自動的に再描画するためのおまじない
    @State var addFirstNumber: String = ""
    @State var addSecondNumber: String = ""
    @State var addResult: String = "?"
    
    @State var subFirstNumber: String = ""
    @State var subSecondNumber: String = ""
    @State var subResult: String = "?"
    
    @State var mulFirstNumber: String = ""
    @State var mulSecondNumber: String = ""
    @State var mulResult: String = "?"
    
    var body: some View {
        VStack() {
            VStack(spacing: 20) {
                Text("足し算電卓")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack(spacing: 10) {
                    // 1つ目の入力フィールド
                    // @Stateのついたプロパティには$をつけるというおまじない。
                    TextField("?", text: $addFirstNumber)
                        .keyboardType(.numberPad)
                        .frame(width: 60)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("+")
                        .font(.title)
                    
                    // 2つ目の入力フィールド
                    TextField("?", text: $addSecondNumber)
                        .keyboardType(.numberPad)
                        .frame(width: 60)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("=")
                        .font(.title)
                    
                    // 結果の表示
                    Text(addResult)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 100)
                        .multilineTextAlignment(.center)
                }
                
                // 計算ボタン
                Button(action: {
                    // ここでボタンを押した時の挙動を記述
                    // 今回は calculateSum() というメソッド(関数)を呼び出しています
                    // 具体的な処理は calculateSum() 内に記述します
                    calculateSum()
                }) {
                    Text("計算する")
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
            
            Divider()
            
            // TODO: - Challenge2
            // 引き算電卓も作ってみよう
            VStack(spacing: 20) {
                Text("引き算電卓")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HStack(spacing: 10) {
                    // 1つ目の入力フィールド
                    // @Stateのついたプロパティには$をつけるというおまじない。
                    TextField("?", text: $subFirstNumber)
                        .keyboardType(.numberPad)
                        .frame(width: 60)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("-")
                        .font(.title)
                    
                    // 2つ目の入力フィールド
                    TextField("?", text: $subSecondNumber)
                        .keyboardType(.numberPad)
                        .frame(width: 60)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("=")
                        .font(.title)
                    
                    // 結果の表示
                    Text(subResult)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 100)
                        .multilineTextAlignment(.center)
                }
                
                // 計算ボタン
                Button(action: {
                    // ここでボタンを押した時の挙動を記述
                    // 今回は calculateSum() というメソッド(関数)を呼び出しています
                    // 具体的な処理は calculateSum() 内に記述します
                    calculateSub()
                }) {
                    Text("計算する")
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
            
            Divider()
            
        }
        
        VStack(spacing: 20) {
            Text("掛け算電卓")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack(spacing: 10) {
                // 1つ目の入力フィールド
                // @Stateのついたプロパティには$をつけるというおまじない。
                TextField("?", text: $mulFirstNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("×")
                    .font(.title)
                
                // 2つ目の入力フィールド
                TextField("?", text: $mulSecondNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("=")
                    .font(.title)
                
                // 結果の表示
                Text(mulResult)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)
            }
            
            // 計算ボタン
            Button(action: {
                // ここでボタンを押した時の挙動を記述
                // 今回は calculateSum() というメソッド(関数)を呼び出しています
                // 具体的な処理は calculateSum() 内に記述します
                calculateMul()
            }) {
                Text("計算する")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        
        Divider()
        
    }

    
    
    // 足し算の処理
    func calculateSum() {
        // TODO: - Challenge1
        // ここに計算ロジックを記述し、計算結果を表示できるようにしてみよう
        
        if let firstNumberInt = Double(addFirstNumber), let secondNumberInt = Double(addSecondNumber){
            let resultInt = round((firstNumberInt + secondNumberInt)*10000)/10000
        }
        else{
            addResult = "Error"
        }
    }
    
    // 引き算の処理
    func calculateSub() {
        
        if let firstNumberInt = Double(subFirstNumber), let secondNumberInt = Double(subSecondNumber){
            let resultInt = round((firstNumberInt - secondNumberInt)*10000)/10000
            subResult = String(resultInt)
        }
        else{
            subResult = "Error"
        }
    }
    
    //掛け算の処理
    func calculateMul() {
        
        if let firstNumberInt = Double(mulFirstNumber), let secondNumberInt = Double(mulSecondNumber){
            let resultInt = round((firstNumberInt * secondNumberInt)*10000)/10000
            mulResult = String(resultInt)
        }
        else{
            mulResult = "Error"
        }
    }
    
}

#Preview {
    CalculatorView()
}
