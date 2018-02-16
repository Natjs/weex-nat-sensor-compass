//
//  WeexNatSensorCompass.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//


#import "WeexNatSensorCompass.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatCompass/NatCompass.h>

@implementation WeexNatSensorCompass

WX_PlUGIN_EXPORT_MODULE(nat/sensor/compass, WeexNatSensorCompass)
WX_EXPORT_METHOD(@selector(get:))
WX_EXPORT_METHOD(@selector(watch::))
WX_EXPORT_METHOD(@selector(clearWatch:))

- (void)get:(WXModuleCallback)callback{
    [[NatCompass singletonManger] get:^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

- (void)watch:(NSDictionary *)options :(WXModuleKeepAliveCallback)callback{
    [[NatCompass singletonManger] watch:options :^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error, YES);
            } else {
                callback(result, YES);
            }
        }
    }];
}

- (void)clearWatch:(WXModuleCallback)callback{
    [[NatCompass singletonManger] clearWatch:^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

- (void)dealloc{
    [[NatCompass singletonManger] close];
}

@end
