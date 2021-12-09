//
//  EntryRow.swift
//  
//
//  Created by Ganesh Malaiyappan on 12/9/21.
//

import SwiftUI

public struct EntryRow: View {
    @State public var isChecked:Bool = false

    public init(){}
    public var body: some View {
        HStack{
            CheckView(isChecked: isChecked, title: "")
            Text("Read articles")
            Spacer()
            Text("High")
        }
        .padding(15)
        .foregroundColor(.white)
    }
}
struct CheckView: View {
   @State var isChecked:Bool = false
   var title:String
   func toggle(){isChecked = !isChecked}
   var body: some View {
       Button(action: toggle){
           HStack{
               Image(systemName: isChecked ? "checkmark.square": "square")
               Text(title)
           }
       }
   }
}

#if DEBUG
public struct EntryRow_Previews: PreviewProvider {
    public static var previews: some View {
        EntryRow()
            .preferredColorScheme(.dark)
    }
}
#endif
