.class public interface abstract Lcom/transsion/camera/feature/setting/gesturedetection/IGestureDetectAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract detectGesture([BII)Z
.end method

.method public abstract initGesture(ZLjava/lang/String;Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;)Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setDetAllowed(Z)V
.end method

.method public abstract setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
.end method

.method public abstract unInitGesture()V
.end method
