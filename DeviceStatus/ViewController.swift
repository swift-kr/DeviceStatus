//--------------------------------------------------
// 네트워크 연결 여부 상태 체크 함수 테스트뷰
//--------------------------------------------------
import UIKit
import SystemConfiguration

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(isReachability("naver.com")) // true면 연결한 상태
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

