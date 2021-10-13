//
//  HomeView.swift
//  HighlightJSON
//
//  Created by Lex on 10/13/21.
//

import SwiftUI

struct HomeView: View {
    @State var isPresentingLink = false

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(uiImage: UIImage(named: "Icon")!)
                .resizable()
                .frame(width: 128, height: 128)
                .clipShape(RoundedRectangle(cornerRadius: 24))

            Text("HighlightJSON")
                .foregroundColor(Color("Foreground"))
                .font(.system(size: 24, weight: .regular, design: .rounded))

            Text("You can turn on HighlightJSON’s Safari extension in Settings.")
                .foregroundColor(Color("Foreground"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .font(.system(size: 18, weight: .regular, design: .rounded))

            Text(licenseString())
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .font(.system(size: 18, weight: .regular, design: .rounded))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }

    private func licenseString() -> AttributedString {
        try! AttributedString(markdown: """
        The highlight feature is built with [highlight.js](https://highlightjs.org). \
        highlight.js is licensed under [BSD license](https://raw.githubusercontent.com/highlightjs/highlight.js/main/LICENSE).
        """)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
