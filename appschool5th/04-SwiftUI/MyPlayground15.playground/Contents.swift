
let connectionOK = true
let connectionSpeed = 30.00
let fileFound = false

enum FileTransferError: Error {
    case noConnection
    case lowBandwidth
    case fileNotFound
}
func transferFile() throws {
    
    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed > 30 else {
        throw FileTransferError.lowBandwidth
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
    //do something
}
func sendFile() -> String {
    do {
        try transferFile()
    }catch FileTransferError.noConnection {
        return "No Connection"
    }catch FileTransferError.lowBandwidth {
        return "Speed too low"
    }catch FileTransferError.fileNotFound {
        return "File Not Found"
    }catch {
        return "Unknown error"
    }
    return "Successful transfer"
}
