.class public interface abstract Lcom/transsion/camera/app/common/mode/IVideoModeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public enableBlur(Z)V
    .registers 2

    return-void
.end method

.method public enableDVMask(Z)V
    .registers 2

    return-void
.end method

.method public executeInGLThread(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public abstract init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;I)V
.end method

.method public initAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    return-void
.end method

.method public abstract onOrientationChanged(IZ)V
.end method

.method public onSettingReady()V
    .registers 1

    return-void
.end method

.method public postInvalidate(I)V
    .registers 2

    return-void
.end method

.method public previewViewTypeChanged()V
    .registers 1

    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract setHDRDataPreviewDataCallback(Lcom/transsion/camera/app/common/mode/IVideoHDRRecordingCallback;)V
.end method

.method public setValue(Ljava/lang/String;F)V
    .registers 3

    .line 0
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract setVideoBackWideSupport360Hdr(Z)V
.end method

.method public abstract setVideoHDRState(Z)V
.end method

.method public abstract setVideoSuperNightSupport(Z)V
.end method

.method public abstract snapshot(I)V
.end method

.method public abstract startStopRecording(Z)V
.end method

.method public abstract unInit()V
.end method
