package lito

import (
    "android/soong/android"
    "android/soong/cc"
)

func fodFlags(ctx android.BaseContext) []string {
    var cflags []string
    return cflags
}

func fodHalBinary(ctx android.LoadHookContext) {
    type props struct {
        Target struct {
            Android struct {
                Cflags []string
            }
        }
    }

    p := &props{}
    p.Target.Android.Cflags = fodFlags(ctx)
    ctx.AppendProperties(p)
}

func fodHalBinaryFactory() android.Module {
    module, _ := cc.NewBinary(android.HostAndDeviceSupported)
    newMod := module.Init()
    android.AddLoadHook(newMod, fodHalBinary)
    return newMod
}
