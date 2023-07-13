//
//  SignInView.swift
//

import SwiftUI

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Text("Sign In")
                .customFont(textStyle: .largeTitle)
            Text("Access to 240+ hours of content. Learn design and code, by building real apps with React and Swift.")
                .customFont(textStyle: .headline)
            
            VStack {
                Text("Email")
                    .customFont(textStyle: .subheadline)
                    .foregroundColor(.secondary)
                TextField("", text: $email)
                    .padding(15)
                    .padding(.leading, 36)
                    .background(.white)
                    .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke()
                            .fill(.black.opacity(0.1))
                    )
                    .overlay(
                        Image("Icon Email")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    )
            }
            
            Divider()
            
            Text("Sign up with Email, Apple or Google")
                .customFont(textStyle: .subheadline)
                .foregroundColor(.secondary)
            
            HStack {
                Image("Logo Email")
                Spacer()
                Image("Logo Apple")
                Spacer()
                Image("Logo Google")
            }
        }
        .padding(30)
        .background(.regularMaterial)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x: 0, y: 3)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 30, x: 0, y: 30)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(.linearGradient(colors: [.white.opacity(0.8), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
        )
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
