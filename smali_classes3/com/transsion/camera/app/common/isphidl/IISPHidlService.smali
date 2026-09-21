.class public interface abstract Lcom/transsion/camera/app/common/isphidl/IISPHidlService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;
    }
.end annotation


# virtual methods
.method public abstract configCaptureParam()V
.end method

.method public abstract flush([J)V
.end method

.method public abstract hasISPHidlService()Z
.end method

.method public abstract onServiceDied()V
.end method

.method public abstract onStorageReady()V
.end method

.method public abstract pause(I)V
.end method

.method public abstract resume()V
.end method

.method public abstract setIISPHidlServiceCallback(Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;)V
.end method

.method public abstract setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSettingShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
.end method

.method public abstract setShot2ShotCallback(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
.end method

.method public abstract setTZCapConfig(JII)I
.end method

.method public abstract setTZCaptureCallback()V
.end method

.method public abstract startPostAlgo(Landroid/view/Surface;Landroid/util/Size;Landroid/util/Size;Ljava/util/List;Landroid/util/Size;III)[Lcom/transsion/camera/app/common/mode/SurfaceInfo;
.end method
