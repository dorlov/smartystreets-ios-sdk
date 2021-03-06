import XCTest
@testable import sdk

class ClientBuilderTests: XCTestCase {
    
    var serializer:USZipCodeSerializer!
    
    override func setUp() {
        super.setUp()
        self.serializer = USZipCodeSerializer()
    }
    
    override func tearDown() {
        super.tearDown()
        self.serializer = nil
    }
    
    func testBasicInit() {
        let client = ClientBuilder()
        XCTAssertNotNil(client.serializer)
        XCTAssertEqual(client.maxRetries, 5)
        XCTAssertEqual(client.maxTimeout, 10000)
        XCTAssertEqual(client.debug, false)
        XCTAssertEqual(client.internationalStreetApiURL, "https://international-street.api.smartystreets.com/verify")
        XCTAssertEqual(client.usAutocompleteApiURL, "https://us-autocomplete.api.smartystreets.com/suggest")
        XCTAssertEqual(client.usExtractApiURL, "https://us-extract.api.smartystreets.com")
        XCTAssertEqual(client.usStreetApiURL, "https://us-street.api.smartystreets.com/street-address")
        XCTAssertEqual(client.usZipCodeApiURL, "https://us-zipcode.api.smartystreets.com/lookup")
    }
    
    func testInitWithSigner() {
        let signer = SmartyCredentials()
        let client = ClientBuilder(signer:signer)
        XCTAssertNotNil(client.signer)
    }
    
    func testInitWithAuthIdAndAuthToken() {
        let authID = "abc"
        let authToken = "123"
        let client = ClientBuilder(authId:authID, authToken:authToken)
        XCTAssertNotNil(client.signer)
    }
    
    func testRetryAtMost() {
        let client = ClientBuilder().retryAtMost(maxRetries:5)
        XCTAssertEqual(client.maxRetries, 5)
    }
    
    func testWithMaxTimeout() {
        let client = ClientBuilder().withMaxTimeout(maxTimeout: 20000)
        XCTAssertEqual(client.maxTimeout, 20000)
    }
    
    func testWithSender() {
        let sender = MockSender(response: nil)
        let client = ClientBuilder().withSender(sender:sender)
        XCTAssertNotNil(client.sender)
    }
    
    func testWithSerializer() {
        let serializer = USZipCodeSerializer()
        let client = ClientBuilder().withSerializer(serializer: serializer)
        XCTAssertNotNil(client.serializer)
    }
    
    func testWithUrl() {
        let url = "http://localhost/"
        let client = ClientBuilder().withUrl(urlPrefix:url)
        XCTAssertEqual(client.urlPrefix, url)
    }
    
    func testWithProxy() {
        let host = "localhost"
        let port = 8080
        let client = ClientBuilder().withProxy(host:host, port:port)
        XCTAssertNotNil(client.proxy[kCFNetworkProxiesHTTPEnable])
        XCTAssertNotNil(client.proxy[kCFNetworkProxiesHTTPPort])
        XCTAssertNotNil(client.proxy[kCFNetworkProxiesHTTPProxy])
    }
    
    func testWithDebug() {
        let client = ClientBuilder().withDebug()
        XCTAssertTrue(client.debug)
    }
    
    func testBuildSender() {
        let sender = ClientBuilder().withProxy(host: "localhost", port: 8080)
        XCTAssertNotNil(sender)
    }
}
