//
//  SwiftUIView.swift
//  MicroFinance
//
//  Created by Hendra on 18/9/22.
//

import SwiftUI

struct BorrowerDetails: View {
    
    @State private var fullName = ""
    @State private var birthDate = Date()
    @State private var loanAmt = 0
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Information")){
                    TextField("First Name", text: $fullName)
                    DatePicker("Birth Date", selection: $birthDate, displayedComponents: .date)
                }
                Section(header: Text("Loan Request")){
                    Stepper("Loan Amount", value: $loanAmt, in: 10...100, step:10)
                    Text("SG$ \(loanAmt)")
                    Link("Terms of Service", destination: URL(string: "https://crypto.com")!)
                }
                Button("Submit Form", action: submitForm)
                
            }
            .navigationTitle("Loan Request Form")
        }
    }
    
    func submitForm(){
        print("Forms Submitted")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        BorrowerDetails()
    }
}
