//
//  DetailView.swift
//  Cheeese app
//
//  Created by Ishaan on 15/8/23.
//

import SwiftUI

struct DetailView: View {
    @State var count = 0
    var body: some View {
        Text("\(count)")
        Stepper("Step counter", value: $count )
            .padding(.horizontal)
        
        Stepper(value: $count) {
            Image(systemName: "plusminus")
        }
        .padding(.horizontal)
    }
}
        struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView()
        }
    }

