.class public interface abstract Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NormalCallbackRequest"
.end annotation


# virtual methods
.method public abstract rollbackMeteringSessionRequest()I
.end method

.method public abstract rollbackNormalSessionRequest()I
.end method

.method public abstract updateRequestRepeating(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method
