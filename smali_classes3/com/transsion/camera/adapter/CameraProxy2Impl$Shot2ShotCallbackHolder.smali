.class public Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Shot2ShotCallbackHolder"
.end annotation


# instance fields
.field private final mCallbackWrapper:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

.field private final mOriginalCallbackRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;)V
    .registers 3

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1014
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mOriginalCallbackRef:Ljava/lang/ref/WeakReference;

    .line 1015
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mCallbackWrapper:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mOriginalCallbackRef:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 1010
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mCallbackWrapper:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mCallbackWrapper:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_8

    .line 1045
    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->flush()V

    return-void

    .line 1046
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mOriginalCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_17

    .line 1047
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz p0, :cond_17

    .line 1049
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->flush()V

    :cond_17
    return-void
.end method

.method public onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 1020
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mCallbackWrapper:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_8

    .line 1021
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void

    .line 1022
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mOriginalCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_17

    .line 1023
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz p0, :cond_17

    .line 1025
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_17
    return-void
.end method

.method public onShutterDone()V
    .registers 2

    .line 1032
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mCallbackWrapper:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_8

    .line 1033
    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onShutterDone()V

    return-void

    .line 1034
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mOriginalCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_17

    .line 1035
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz p0, :cond_17

    .line 1037
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onShutterDone()V

    :cond_17
    return-void
.end method

.method public processPreview()V
    .registers 2

    .line 1056
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mCallbackWrapper:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_8

    .line 1057
    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->processPreview()V

    return-void

    .line 1058
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mOriginalCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_17

    .line 1059
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz p0, :cond_17

    .line 1061
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->processPreview()V

    :cond_17
    return-void
.end method

.method public saveHighQualityJpegDone()V
    .registers 2

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mCallbackWrapper:Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz v0, :cond_8

    .line 1069
    invoke-interface {v0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->saveHighQualityJpegDone()V

    return-void

    .line 1070
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraProxy2Impl$Shot2ShotCallbackHolder;->mOriginalCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_17

    .line 1071
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    if-eqz p0, :cond_17

    .line 1073
    invoke-interface {p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->saveHighQualityJpegDone()V

    :cond_17
    return-void
.end method
