extension String {
  public var asLines: [String] {
    get {
      return self.utf8
      .split(separator: 10)
      .filter { $0.count > 0 }
      .map { String(describing: $0) }
    }
  }
}//end extension
