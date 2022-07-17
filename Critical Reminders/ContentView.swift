import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var date = Date.now

    var body: some View {
        VStack(alignment: .leading) {
            Section(header: Text("Create a Wuphf").font(.largeTitle)) {
                Form {
                    Section {
                        TextField("Title", text: $name, prompt: Text("Name"))
                        DatePicker("Time", selection: $date)
                    }
                    Button("Save") {
                        // activate theme!
                    }
                }
            }
            Section(header: Text("My Wuphfs").font(.largeTitle)) {
                List {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text("Date")
                    }
                    HStack {
                        Text("Name")
                        Spacer()
                        Text("Date")
                    }
                }.listStyle(.plain)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
