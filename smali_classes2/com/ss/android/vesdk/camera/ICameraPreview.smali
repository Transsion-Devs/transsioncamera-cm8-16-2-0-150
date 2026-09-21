.class public interface abstract Lcom/ss/android/vesdk/camera/ICameraPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/camera/ICameraPreview$BUNDLE_KEY;
    }
.end annotation


# virtual methods
.method public abstract getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;
.end method

.method public abstract getPreviewSize()Lcom/ss/android/vesdk/VESize;
.end method

.method public abstract setListenerFromRecorder(Ljava/util/ArrayList;Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ss/android/vesdk/VEListener$VERecorderCameraListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setParamFromRecorder(Landroid/os/Bundle;)V
.end method

.method public abstract start(Lcom/ss/android/vesdk/ConcurrentList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/frame/TECapturePipeline;",
            ">;)I"
        }
    .end annotation
.end method
