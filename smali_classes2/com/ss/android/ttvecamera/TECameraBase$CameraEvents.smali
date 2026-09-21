.class public interface abstract Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraEvents"
.end annotation


# virtual methods
.method public abstract onCameraClosed(ILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V
.end method

.method public abstract onCameraError(IILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V
.end method

.method public abstract onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onPreviewStopped(IIILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onPreviewSuccess(IIILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onTorchError(IIILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onTorchSuccess(IIILjava/lang/String;Ljava/lang/Object;)V
.end method
