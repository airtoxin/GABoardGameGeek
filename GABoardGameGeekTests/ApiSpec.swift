//
//  ApiSpec.swift
//  GABoardGameGeek
//
//  Created by Geoffrey Amey on 4/24/16.
//  Copyright © 2016 Geoffrey Amey. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import GABoardGameGeek

class ApiSpec: QuickSpec {

    override func spec() {

        describe("a collection request") {

            it("should do something") {
                var apiResult: ApiResult<[CollectionBoardGame]>?
                
                GABoardGameGeek().getUserCollection("gca3020", brief: true, stats: true) { result in
                    apiResult = result
                    print(apiResult)
                }

                expect(apiResult).toEventuallyNot(beNil(), timeout: 150)
            }
        }

    }
}