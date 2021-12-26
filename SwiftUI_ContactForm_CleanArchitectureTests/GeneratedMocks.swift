// MARK: - Mocks generated from file: SwiftUI_ContactForm_CleanArchitecture/Domain/DomainModel/Repositories/Inquiry/InquiryHttpRepository.swift at 2021-12-26 15:37:11 +0000

//
//  InquiryHttpRepository.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/26.
//

import Cuckoo
@testable import SwiftUI_ContactForm_CleanArchitecture

import Foundation


 class MockInquiryHttpRepositoryProtocol: InquiryHttpRepositoryProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = InquiryHttpRepositoryProtocol
    
     typealias Stubbing = __StubbingProxy_InquiryHttpRepositoryProtocol
     typealias Verification = __VerificationProxy_InquiryHttpRepositoryProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: InquiryHttpRepositoryProtocol?

     func enableDefaultImplementation(_ stub: InquiryHttpRepositoryProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)  {
        
    return cuckoo_manager.call("sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)",
            parameters: (inquiry, completed),
            escapingParameters: (inquiry, completed),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.sendInquiry(inquiry: inquiry, completed: completed))
        
    }
    

	 struct __StubbingProxy_InquiryHttpRepositoryProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func sendInquiry<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(inquiry: M1, completed: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Inquiry, (_ error: Error?) -> Void)> where M1.MatchedType == Inquiry, M2.MatchedType == (_ error: Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Inquiry, (_ error: Error?) -> Void)>] = [wrap(matchable: inquiry) { $0.0 }, wrap(matchable: completed) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInquiryHttpRepositoryProtocol.self, method: "sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_InquiryHttpRepositoryProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func sendInquiry<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(inquiry: M1, completed: M2) -> Cuckoo.__DoNotUse<(Inquiry, (_ error: Error?) -> Void), Void> where M1.MatchedType == Inquiry, M2.MatchedType == (_ error: Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Inquiry, (_ error: Error?) -> Void)>] = [wrap(matchable: inquiry) { $0.0 }, wrap(matchable: completed) { $0.1 }]
	        return cuckoo_manager.verify("sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class InquiryHttpRepositoryProtocolStub: InquiryHttpRepositoryProtocol {
    

    

    
     func sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: SwiftUI_ContactForm_CleanArchitecture/Domain/DomainModel/Repositories/MockTest.swift at 2021-12-26 15:37:11 +0000

//
//  MockTest.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/26.
//

import Cuckoo
@testable import SwiftUI_ContactForm_CleanArchitecture


 class MockMockTest: MockTest, Cuckoo.ProtocolMock {
    
     typealias MocksType = MockTest
    
     typealias Stubbing = __StubbingProxy_MockTest
     typealias Verification = __VerificationProxy_MockTest

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: MockTest?

     func enableDefaultImplementation(_ stub: MockTest) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getTestData() -> String {
        
    return cuckoo_manager.call("getTestData() -> String",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getTestData())
        
    }
    

	 struct __StubbingProxy_MockTest: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getTestData() -> Cuckoo.ProtocolStubFunction<(), String> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockMockTest.self, method: "getTestData() -> String", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_MockTest: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getTestData() -> Cuckoo.__DoNotUse<(), String> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getTestData() -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class MockTestStub: MockTest {
    

    

    
     func getTestData() -> String  {
        return DefaultValueRegistry.defaultValue(for: (String).self)
    }
    
}

