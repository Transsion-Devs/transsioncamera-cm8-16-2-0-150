.class public interface abstract Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;
    }
.end annotation


# virtual methods
.method public abstract detect(Landroid/graphics/Bitmap;)V
.end method

.method public abstract init(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerParam;)V
.end method

.method public abstract setLandmarkerListener(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/IHandLandmarker$ILandmarkerListener;)V
.end method

.method public abstract unInit()V
.end method
