import SwiftUI

public struct TestModuleView: View {
    public var body: some View {
        Text("Hello from module")
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        TestModuleView()
    }
}
