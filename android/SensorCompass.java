package com.nat.weex;

import com.nat.sensor_compass.HLCompassModule;
import com.nat.sensor_compass.HLModuleResultListener;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

import java.util.HashMap;

/**
 * Created by Daniel on 17/2/17.
 * Copyright (c) 2017 Nat. All rights reserved.
 */

public class SensorCompass extends WXModule {

    @JSMethod
    public void get(final JSCallback jsCallback){
        HLCompassModule.getInstance(mWXSDKInstance.getContext()).get(new HLModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }

    @JSMethod
    public void watch(HashMap<String, Integer> param, final JSCallback jsCallback){
        HLCompassModule.getInstance(mWXSDKInstance.getContext()).watch(param, new HLModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invokeAndKeepAlive(o);
            }
        });
    }

    @JSMethod
    public void clearWatch(final JSCallback jsCallback){
        HLCompassModule.getInstance(mWXSDKInstance.getContext()).clearWatch(new HLModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }
}
