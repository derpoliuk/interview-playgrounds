import Foundation

struct DataError: Error {
    let message = "DataError"
}

func formatData(_ data: Data) throws -> Data  {
    if Bool.random() {
        return data
    } else {
        throw DataError()
    }
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
