.class public Lcom/ss/android/ttve/nativePort/TECallbackClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field protected mAudioCaptureCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IAudioCaptureCallback;

.field protected mBufferedFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;

.field protected mCommonCallback:Lcom/ss/android/ttve/common/TECommonCallback;

.field protected mDisplayParamsListener:Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;

.field protected mFrameEffectCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IFrameEffectCallback;

.field protected mGetFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;

.field protected mLensCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;

.field protected mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    .line 16
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mGetFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;

    .line 18
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mBufferedFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;

    .line 20
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mLensCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;

    .line 22
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mAudioCaptureCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IAudioCaptureCallback;

    .line 26
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mFrameEffectCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IFrameEffectCallback;

    .line 28
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mDisplayParamsListener:Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;

    return-void
.end method


# virtual methods
.method public getOpenGLListeners()Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    return-object p0
.end method

.method public nativeCallback_allocateBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TECallbackClient;->nativeCallback_allocateBuffer(IZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public nativeCallback_allocateBuffer(IZ)Ljava/nio/ByteBuffer;
    .registers 3

    .line 77
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p2, :cond_9

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_b

    :cond_9
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_b
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public nativeCallback_onAudioCaptureCallback(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mAudioCaptureCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IAudioCaptureCallback;

    if-eqz p0, :cond_7

    .line 155
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IAudioCaptureCallback;->onReceive(Ljava/nio/ByteBuffer;)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onBufferedFrameCallback(Ljava/nio/ByteBuffer;IIJ)V
    .registers 6

    .line 117
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mBufferedFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;

    if-eqz p0, :cond_7

    .line 118
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;->onResult(Ljava/nio/ByteBuffer;IIJ)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onCameraFacingChangedCallback(Z)V
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mDisplayParamsListener:Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;

    if-eqz p0, :cond_7

    .line 162
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;->onCameraFacingChange(Z)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onCommonCallback(IIFLjava/lang/String;)V
    .registers 5

    .line 123
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mCommonCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    if-eqz p0, :cond_7

    .line 124
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/common/TECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onDisplaySizeChangedCallback(IIII)V
    .registers 5

    .line 167
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mDisplayParamsListener:Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;

    if-eqz p0, :cond_7

    .line 169
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;->onSizeChange(IIII)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onFrameEffectCallback(J)V
    .registers 3

    .line 147
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mFrameEffectCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IFrameEffectCallback;

    if-eqz p0, :cond_7

    .line 148
    invoke-interface {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IFrameEffectCallback;->onResult(J)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onGetFrameCallback([IIIJ)V
    .registers 6

    .line 111
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mGetFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;

    if-eqz p0, :cond_7

    .line 112
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;->onResult([IIIJ)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onLensCallbackError(IILjava/lang/String;)V
    .registers 4

    .line 141
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mLensCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;

    if-eqz p0, :cond_7

    .line 142
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;->onError(IILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onLensCallbackInfo(IIILjava/lang/String;)V
    .registers 5

    .line 129
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mLensCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;

    if-eqz p0, :cond_7

    .line 130
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;->onInfo(IIILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onLensCallbackSuccess(IFI)V
    .registers 4

    .line 135
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mLensCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;

    if-eqz p0, :cond_7

    .line 136
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;->onSuccess(IFI)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onOpenGLCreate(I)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 82
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLCreate(I)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onOpenGLDestroy(I)V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 100
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDestroy(I)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onOpenGLDrawAfter(ID)V
    .registers 4

    .line 93
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 94
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDrawAfter(ID)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onOpenGLDrawBefore(ID)V
    .registers 4

    .line 87
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 88
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDrawBefore(ID)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onPreviewSurface(I)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 106
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onPreviewSurface(I)I

    :cond_7
    return-void
.end method

.method public setAudioCaptureListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IAudioCaptureCallback;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mAudioCaptureCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IAudioCaptureCallback;

    return-void
.end method

.method public setBufferedFrameListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mBufferedFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ICameraFrameCallback;

    return-void
.end method

.method public setCommonCallback(Lcom/ss/android/ttve/common/TECommonCallback;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mCommonCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    return-void
.end method

.method public setDisplayParamsListener(Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mDisplayParamsListener:Lcom/ss/android/vesdk/listener/VEDisplayParamsListener;

    return-void
.end method

.method public setFrameEffectCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IFrameEffectCallback;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mFrameEffectCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IFrameEffectCallback;

    return-void
.end method

.method public setGetFrameListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mGetFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetFrameCallback;

    return-void
.end method

.method public setLensCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mLensCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ILensCallback;

    return-void
.end method

.method public setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TECallbackClient;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    return-void
.end method
