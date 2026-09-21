.class public interface abstract Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IShutterKeyEventCallback;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# virtual methods
.method public abstract getVolumeIntercept()Z
.end method

.method public abstract isPhysicalKeyEnable()Z
.end method

.method public abstract isSupportDoubleClickVolumeDown()Z
.end method

.method public abstract onDoubleClickVolumeDown()V
.end method

.method public abstract setShoulderKeyLongPressState(Z)V
.end method

.method public abstract showShoulderTips()V
.end method
