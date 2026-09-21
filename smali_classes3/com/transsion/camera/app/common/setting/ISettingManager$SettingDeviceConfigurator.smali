.class public interface abstract Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/ISettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingDeviceConfigurator"
.end annotation


# virtual methods
.method public abstract configCommand(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraProxy;)V
.end method

.method public abstract configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
.end method

.method public abstract configParameters(Lcom/transsion/camera/adapter/CameraParameters;Ljava/lang/String;)I
.end method

.method public varargs abstract configParametersByKey(Lcom/transsion/camera/adapter/CameraParameters;[Ljava/lang/String;)I
.end method

.method public abstract modeAndSettingRestrictionDispatchDone()V
.end method

.method public abstract onCaptureEnded()V
.end method

.method public abstract onCaptureStarted()V
.end method

.method public abstract onPreviewStarted()V
.end method

.method public abstract onPreviewStopped()V
.end method

.method public abstract onRecordingEnded()V
.end method

.method public abstract onRecordingStarted()V
.end method

.method public abstract onTakePictureEnded(Z)V
.end method

.method public abstract onTakePictureStarted()V
.end method

.method public abstract setCameraCapabilities(Ljava/lang/String;Lcom/transsion/camera/adapter/ICameraCapabilities;)V
.end method
