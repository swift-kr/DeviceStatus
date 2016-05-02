import SystemConfiguration

//--------------------------------------------------
// 네트워크 연결 여부 상태 체크 함수
// @host : String 호스트명
// host명 접근할 수 있으면 true, 못하면 false
//--------------------------------------------------
func isReachability(host:String) -> Bool {
    let rcb = SCNetworkReachabilityCreateWithName(nil, host)
    var flag = SCNetworkReachabilityFlags.ConnectionAutomatic
    if !SCNetworkReachabilityGetFlags(rcb!, &flag) {
        return false
    }
    let isRcb = (flag.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
    let conn = (flag.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
    return (isRcb && !conn)
}


