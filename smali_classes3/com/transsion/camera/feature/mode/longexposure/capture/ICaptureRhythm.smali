.class public interface abstract Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;
    }
.end annotation


# virtual methods
.method public abstract captureComplete()V
.end method

.method public abstract setNextCaptureReadyListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureRhythm$INextCaptureReadyListener;)V
.end method

.method public abstract startCapture()V
.end method

.method public abstract stopCapture()V
.end method
