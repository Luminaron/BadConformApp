import SwiftUI

protocol P
{
    associatedtype Number: Numeric
    var pVar: Self.Number { get }
}

extension P
{
    var pVar: Double { 100.0 }
}

struct BadConform: P
{
    var pVar: String = "hello"
}

@main
struct BadConformAppApp: App
{
    init()
    {
        let badConform = BadConform()
        print(badConform.pVar) // hello

        let badAnyP: any P = BadConform()
        print(badAnyP.pVar) // 100.0

        let badSomeP: some P = BadConform()
        print(badSomeP.pVar) // 100.0
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
