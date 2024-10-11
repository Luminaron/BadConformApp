
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear
        {
            let badConform = BadConform()
            print(badConform.pVar) // hello

            let badAnyP: any P = BadConform()
            print(badAnyP.pVar) // 100.0

            let badSomeP: some P = BadConform()
            print(badSomeP.pVar) // hello
        }
    }
}

#Preview {
    ContentView()
}
