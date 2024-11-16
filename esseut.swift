   struct ParentView: View {
       @State private var storedValue: Int = 10

       var body: some View {
           ChildView(onIncrement: {
               self.storedValue += 1
           })
       }
   }

   struct ChildView: View {
       var onIncrement: () -> Void

       var body: some View {
           Button("Increment Value") {
               onIncrement()
           }
       }
   }
   