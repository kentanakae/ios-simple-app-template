import SwiftUI

public struct ContentView: View {
    public var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!", bundle: .module)
        }
        .padding()
    }

    public init() {
        // do nothing
    }
}

#Preview {
    ContentView()
}
