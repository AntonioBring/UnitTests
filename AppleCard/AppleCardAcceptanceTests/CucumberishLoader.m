//
//  CucumberishLoader.m
//  TodoListAppUITests
//
//  Created by Mohammad Azam on 4/22/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppleCardAcceptanceTests-Swift.h"

__attribute__((constructor))
void CucumberishInit(){
    
    [CucumberishInitializer setupCucumberish];
}

