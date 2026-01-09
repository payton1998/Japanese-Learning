import SwiftUI

struct VocabQuizViewPreview: View {
    var body: some View {
        VStack(spacing: 30) {
            // Japanese word
            Text("猫")
                .font(.system(size: 60))
                .bold()

            // Optional reading
            Text("ねこ")
                .font(.title2)
                .foregroundColor(.gray)

            // Choices
            VStack(spacing: 15) {
                ForEach(["cat", "dog", "bird", "fish"], id: \.self) { choice in
                    Button(action: {
                        // Placeholder: normally call viewModel.selectAnswer(choice)
                    }) {
                        Text(choice)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue) // Normally changes to green/red after selection
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .disabled(false) // Normally depends on viewModel.showResult
                }
            }

            // Next button
            VStack {
                Text("✅ Correct!") // Placeholder for feedback (or ❌ Incorrect!)
                    .font(.title2)
                    .bold()
                    .padding()

                Button("Next") {
                    // Normally call viewModel.nextQuestion()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct VocabQuizViewPreview_Previews: PreviewProvider {
    static var previews: some View {
        VocabQuizViewPreview()
    }
}
