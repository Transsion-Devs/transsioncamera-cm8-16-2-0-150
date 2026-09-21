.class public interface abstract Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Shot2ShotCallback"
.end annotation


# virtual methods
.method public abstract flush()V
.end method

.method public abstract onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
.end method

.method public onShutterDone()V
    .registers 1

    return-void
.end method

.method public abstract processPreview()V
.end method

.method public abstract saveHighQualityJpegDone()V
.end method
