.class public interface abstract Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraCaptureCallback"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;Landroid/hardware/camera2/CaptureResult;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
.end method

.method public onCaptureFailed(JZ[J)V
    .registers 5

    .line 0
    return-void
.end method

.method public abstract onCaptureFailed(Z)V
.end method

.method public onCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .registers 4

    return-void
.end method

.method public abstract onCaptureStarted(JLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
.end method

.method public abstract onDoCapture()V
.end method
