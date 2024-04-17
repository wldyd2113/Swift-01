
//오류처리
let connectionOK = true
let connectionSpeed = 30.00
let fileFound = true

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
    
    defer {
        //파일 닫기 등 종료 준비
        print("end of snedFile")
    }
    
    do {
        try transferFile()
    }catch FileTransferError.noConnection, FileTransferError.lowBandwidth {
        return "Connection Problems"
    }catch FileTransferError.fileNotFound {
        return "File Not Found"
    }catch {
        return "Unknown error"
    }
    return "Successful transfer"
}

print(sendFile())
