//
//  ContentView.swift
//  Cheeese app
//
//  Created by Ishaan on 15/8/23.
//

import SwiftUI

struct ContentView: View {
    @State var hello = ""
    @State var showSheet = false
    @State var toggle = false
    @State var toggle2 = false
    @State var count1 = 0
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section {
                        VStack(alignment: .leading) {
                            Text("Wake up at 6pm")
                                .contextMenu {
                                    Button(role: .destructive) {
                                        print("Delete")
                                    } label: {
                                        Text("Delete")
                                    }
                                    Button {
                                        print("Priorty")
                                    } label: {
                                        Text("Priorty")
                                        
                                    }
                                    
                                }
                        }
                        Section {
                            Text("Revise Science")
                                .contextMenu {
                                    Button(role: .destructive) {
                                        print("Delete")
                                    } label: {
                                        Text("Delete")
                                    }
                                    Button {
                                        print("Priorty")
                                    } label: {
                                        Text("Priorty")
                                        
                                    }
                                    
                                }
                        }
                    }
                    
                    .navigationTitle("TO-DO LIST")
                    .navigationBarTitleDisplayMode(.large)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button ("Add") {
                                showSheet.toggle()
                            }
                        }
                        ToolbarItem(placement: .navigationBarLeading) {
                            NavigationLink {
                                DetailView()
                            } label: {
                                Text("Stuff")
                            }
                        }
                    }
                }
            }
            .sheet(isPresented: $showSheet) {
                TextField("Add new task", text: $hello)
                
                Toggle("Reminder?", isOn: $toggle)
                if toggle == true {
                    Text("\(count1)")
                    Stepper("Minutes", value: $count1 )
                        .padding(.horizontal)
                    
                    
                    
                }
                Menu {
                    Button {
                        print("Priorty")
                    } label: {
                        Text("Put to Top?")
                    }
                } label: {
                    Text("ADD")
                }
            }
        }
    }
        struct ContentView_Previews: PreviewProvider
        {
            static var previews: some View {
                ContentView()
            }
        }
    }
