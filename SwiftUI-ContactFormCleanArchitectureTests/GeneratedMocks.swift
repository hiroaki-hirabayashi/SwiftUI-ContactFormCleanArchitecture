// MARK: - Mocks generated from file: SwiftUI-ContactFormCleanArchitecture/DataInfrastructure/Connection/Http/Inquiry/InquiryHttpConnectionImp.swift at 2021-12-29 16:44:27 +0000

//
//  InquiryHttpConnectionImp.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/26.
//

import Cuckoo
@testable import SwiftUI_ContactFormCleanArchitecture

import Alamofire
import Foundation


 class MockSendInquiryRequest: SendInquiryRequest, Cuckoo.ClassMock {
    
     typealias MocksType = SendInquiryRequest
    
     typealias Stubbing = __StubbingProxy_SendInquiryRequest
     typealias Verification = __VerificationProxy_SendInquiryRequest

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SendInquiryRequest?

     func enableDefaultImplementation(_ stub: SendInquiryRequest) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func request(url: String, httpMethod: HTTPMethod, entity: InquiryFormEntity, success: @escaping (AcceptInquiryEntity) -> Void, failure: @escaping () -> Void)  {
        
    return cuckoo_manager.call("request(url: String, httpMethod: HTTPMethod, entity: InquiryFormEntity, success: @escaping (AcceptInquiryEntity) -> Void, failure: @escaping () -> Void)",
            parameters: (url, httpMethod, entity, success, failure),
            escapingParameters: (url, httpMethod, entity, success, failure),
            superclassCall:
                
                super.request(url: url, httpMethod: httpMethod, entity: entity, success: success, failure: failure)
                ,
            defaultCall: __defaultImplStub!.request(url: url, httpMethod: httpMethod, entity: entity, success: success, failure: failure))
        
    }
    

	 struct __StubbingProxy_SendInquiryRequest: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func request<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable, M5: Cuckoo.Matchable>(url: M1, httpMethod: M2, entity: M3, success: M4, failure: M5) -> Cuckoo.ClassStubNoReturnFunction<(String, HTTPMethod, InquiryFormEntity, (AcceptInquiryEntity) -> Void, () -> Void)> where M1.MatchedType == String, M2.MatchedType == HTTPMethod, M3.MatchedType == InquiryFormEntity, M4.MatchedType == (AcceptInquiryEntity) -> Void, M5.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, HTTPMethod, InquiryFormEntity, (AcceptInquiryEntity) -> Void, () -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: httpMethod) { $0.1 }, wrap(matchable: entity) { $0.2 }, wrap(matchable: success) { $0.3 }, wrap(matchable: failure) { $0.4 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockSendInquiryRequest.self, method: "request(url: String, httpMethod: HTTPMethod, entity: InquiryFormEntity, success: @escaping (AcceptInquiryEntity) -> Void, failure: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_SendInquiryRequest: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func request<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable, M5: Cuckoo.Matchable>(url: M1, httpMethod: M2, entity: M3, success: M4, failure: M5) -> Cuckoo.__DoNotUse<(String, HTTPMethod, InquiryFormEntity, (AcceptInquiryEntity) -> Void, () -> Void), Void> where M1.MatchedType == String, M2.MatchedType == HTTPMethod, M3.MatchedType == InquiryFormEntity, M4.MatchedType == (AcceptInquiryEntity) -> Void, M5.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, HTTPMethod, InquiryFormEntity, (AcceptInquiryEntity) -> Void, () -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: httpMethod) { $0.1 }, wrap(matchable: entity) { $0.2 }, wrap(matchable: success) { $0.3 }, wrap(matchable: failure) { $0.4 }]
	        return cuckoo_manager.verify("request(url: String, httpMethod: HTTPMethod, entity: InquiryFormEntity, success: @escaping (AcceptInquiryEntity) -> Void, failure: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class SendInquiryRequestStub: SendInquiryRequest {
    

    

    
     override func request(url: String, httpMethod: HTTPMethod, entity: InquiryFormEntity, success: @escaping (AcceptInquiryEntity) -> Void, failure: @escaping () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: SwiftUI-ContactFormCleanArchitecture/Domain/Application/UseCases/Inquiry/InquiryUseCaseProtocol.swift at 2021-12-29 16:44:27 +0000

//
//  InquiryUseCaseProtocol.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/27.
//

import Cuckoo
@testable import SwiftUI_ContactFormCleanArchitecture

import Foundation


 class MockInquiryUseCaseProtocol: InquiryUseCaseProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = InquiryUseCaseProtocol
    
     typealias Stubbing = __StubbingProxy_InquiryUseCaseProtocol
     typealias Verification = __VerificationProxy_InquiryUseCaseProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: InquiryUseCaseProtocol?

     func enableDefaultImplementation(_ stub: InquiryUseCaseProtocol) {
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
    
    
    
     func foundAnsweredInquiry(completed: @escaping (_ exist: Bool, _ error: Error?) -> Void)  {
        
    return cuckoo_manager.call("foundAnsweredInquiry(completed: @escaping (_ exist: Bool, _ error: Error?) -> Void)",
            parameters: (completed),
            escapingParameters: (completed),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.foundAnsweredInquiry(completed: completed))
        
    }
    

	 struct __StubbingProxy_InquiryUseCaseProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func sendInquiry<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(inquiry: M1, completed: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(Inquiry, (_ error: Error?) -> Void)> where M1.MatchedType == Inquiry, M2.MatchedType == (_ error: Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(Inquiry, (_ error: Error?) -> Void)>] = [wrap(matchable: inquiry) { $0.0 }, wrap(matchable: completed) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInquiryUseCaseProtocol.self, method: "sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func foundAnsweredInquiry<M1: Cuckoo.Matchable>(completed: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((_ exist: Bool, _ error: Error?) -> Void)> where M1.MatchedType == (_ exist: Bool, _ error: Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((_ exist: Bool, _ error: Error?) -> Void)>] = [wrap(matchable: completed) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInquiryUseCaseProtocol.self, method: "foundAnsweredInquiry(completed: @escaping (_ exist: Bool, _ error: Error?) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_InquiryUseCaseProtocol: Cuckoo.VerificationProxy {
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
	    
	    @discardableResult
	    func foundAnsweredInquiry<M1: Cuckoo.Matchable>(completed: M1) -> Cuckoo.__DoNotUse<((_ exist: Bool, _ error: Error?) -> Void), Void> where M1.MatchedType == (_ exist: Bool, _ error: Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((_ exist: Bool, _ error: Error?) -> Void)>] = [wrap(matchable: completed) { $0 }]
	        return cuckoo_manager.verify("foundAnsweredInquiry(completed: @escaping (_ exist: Bool, _ error: Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class InquiryUseCaseProtocolStub: InquiryUseCaseProtocol {
    

    

    
     func sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func foundAnsweredInquiry(completed: @escaping (_ exist: Bool, _ error: Error?) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: SwiftUI-ContactFormCleanArchitecture/Domain/DomainModel/Repositories/Inquiry/InquiryHttpRepository.swift at 2021-12-29 16:44:27 +0000

//
//  InquiryHttpRepository.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/26.
//

import Cuckoo
@testable import SwiftUI_ContactFormCleanArchitecture

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
    
    
    
     func foundAnsweredInquiry(completed: @escaping (_ result: [AnsweredInquiry], _ error: Error?) -> Void)  {
        
    return cuckoo_manager.call("foundAnsweredInquiry(completed: @escaping (_ result: [AnsweredInquiry], _ error: Error?) -> Void)",
            parameters: (completed),
            escapingParameters: (completed),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.foundAnsweredInquiry(completed: completed))
        
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
	    
	    func foundAnsweredInquiry<M1: Cuckoo.Matchable>(completed: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((_ result: [AnsweredInquiry], _ error: Error?) -> Void)> where M1.MatchedType == (_ result: [AnsweredInquiry], _ error: Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((_ result: [AnsweredInquiry], _ error: Error?) -> Void)>] = [wrap(matchable: completed) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockInquiryHttpRepositoryProtocol.self, method: "foundAnsweredInquiry(completed: @escaping (_ result: [AnsweredInquiry], _ error: Error?) -> Void)", parameterMatchers: matchers))
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
	    
	    @discardableResult
	    func foundAnsweredInquiry<M1: Cuckoo.Matchable>(completed: M1) -> Cuckoo.__DoNotUse<((_ result: [AnsweredInquiry], _ error: Error?) -> Void), Void> where M1.MatchedType == (_ result: [AnsweredInquiry], _ error: Error?) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<((_ result: [AnsweredInquiry], _ error: Error?) -> Void)>] = [wrap(matchable: completed) { $0 }]
	        return cuckoo_manager.verify("foundAnsweredInquiry(completed: @escaping (_ result: [AnsweredInquiry], _ error: Error?) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class InquiryHttpRepositoryProtocolStub: InquiryHttpRepositoryProtocol {
    

    

    
     func sendInquiry(inquiry: Inquiry, completed: @escaping (_ error: Error?) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func foundAnsweredInquiry(completed: @escaping (_ result: [AnsweredInquiry], _ error: Error?) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: SwiftUI-ContactFormCleanArchitecture/Domain/DomainModel/Repositories/MockTest.swift at 2021-12-29 16:44:27 +0000

//
//  MockTest.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/26.
//

import Cuckoo
@testable import SwiftUI_ContactFormCleanArchitecture


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

