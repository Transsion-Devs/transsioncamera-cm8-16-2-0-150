.class public interface abstract Lcom/ss/android/ttvecamera/provider/TECameraProvider$CaptureListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/provider/TECameraProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureListener"
.end annotation


# virtual methods
.method public abstract onFrameCaptured(Lcom/ss/android/ttvecamera/TECameraFrame;)V
.end method

.method public abstract onNewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method
