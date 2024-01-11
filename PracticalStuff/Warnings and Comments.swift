// Created 21.12.2023

import Foundation

class NothingAtAll {
    /// This is blabla
    init() {
        //

        // TODO: - Something is missing
        // FIXME: Fix this one here
        // ???: WTF is going on here
        // !!!: That's the clou

        // MARK: - Some topic -

#if DEBUG
        #warning("In Debg mode it's just a warning")
        print("DEBUG")
#else
        #error("But when released it is a compiler bug Error")
        print("RELEASE")
#endif
        
        // MARK: - Some other topic -

    }
}
