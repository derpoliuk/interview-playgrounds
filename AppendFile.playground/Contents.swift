import Foundation

/*
 Imagine the situation when you are working with the project and
 you came across `append(data:to:)` method.

 Is there anything you want to refactor? If yes, please do it.
 */

struct DataError: Error {
    let message = "DataError"
}

/// Append Data to URL
///
/// - Parameters:
///   - data: Date
///   - file: Url
func append(data: Data, to file: URL) {
    let handle = try! FileHandle(forUpdating: file)
    let formattedData = try! formatData(data)
    handle.seekToEndOfFile()
    handle.write(formattedData)
    handle.closeFile()
}


// You can skip refactoring this method

func formatData(_ data: Data) throws -> Data  {
    if Bool.random() {
        return data
    } else {
        throw DataError()
    }
}
