.class public interface abstract Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/frame/TECapturePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureListenerWithAR"
.end annotation


# virtual methods
.method public abstract onExtFrameDataAttached(Ljava/lang/Object;)V
.end method

.method public abstract onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V
.end method

.method public abstract onFrameSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
.end method

.method public abstract onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;Z)V
.end method
