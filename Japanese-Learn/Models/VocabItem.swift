struct VocabItem: Codable, Identifiable {
    let id: String
    let word: String
    let reading: String?
    let correctMeaning: String
    let choices: [String]
    let tags: [String]?
}
