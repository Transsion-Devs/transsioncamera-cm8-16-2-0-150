.class public Lcom/ss/android/ttve/nativePort/TENativeServiceBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field protected mAudioExtendToFileCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;

.field protected mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

.field protected mExtractFrameProcessCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ExtractFrameProcessCallback;

.field protected mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

.field protected mKeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

.field protected mMVInitedCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;

.field protected mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

.field protected mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

.field protected mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

.field protected mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

.field protected mSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    .line 16
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 17
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 18
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    .line 19
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 20
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMVInitedCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;

    .line 21
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mExtractFrameProcessCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ExtractFrameProcessCallback;

    .line 22
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mKeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    .line 23
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    .line 24
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 25
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mAudioExtendToFileCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;

    return-void
.end method


# virtual methods
.method public getEncoderDataListener()Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    return-object p0
.end method

.method public getErrorListener()Lcom/ss/android/ttve/common/TECommonCallback;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-object p0
.end method

.method public getInfoListener()Lcom/ss/android/ttve/common/TECommonCallback;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-object p0
.end method

.method public getOpenGLListeners()Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    return-object p0
.end method

.method public nativeCallback_onAudioExtendToFileCancel()V
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mAudioExtendToFileCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;

    if-eqz p0, :cond_7

    .line 223
    invoke-interface {p0}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;->onAudioExtendToFileCancelCallback()V

    :cond_7
    return-void
.end method

.method public nativeCallback_onAudioExtendToFileFinish(Z)V
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mAudioExtendToFileCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;

    if-eqz p0, :cond_7

    .line 216
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;->onAudioExtendToFileFinishCallback(Z)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onAudioExtendToFileProcess(F)V
    .registers 2

    .line 208
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mAudioExtendToFileCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;

    if-eqz p0, :cond_7

    .line 209
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;->onAudioExtendToFileProcessCallback(F)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onCompressBuffer([BIIZ)V
    .registers 5

    .line 129
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    if-eqz p0, :cond_7

    .line 130
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;->onCompressBuffer([BIIZ)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onDisplayCallback(III)V
    .registers 4

    .line 166
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mKeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    if-eqz p0, :cond_7

    .line 167
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;->onDisplayCallback(III)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onErrorListener(IIFLjava/lang/String;)V
    .registers 5

    .line 115
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    if-eqz p0, :cond_7

    .line 116
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/common/TECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onExtractFrameProcess(F)V
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mExtractFrameProcessCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ExtractFrameProcessCallback;

    if-eqz p0, :cond_7

    .line 160
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$ExtractFrameProcessCallback;->onExtractFrameProcessCallback(F)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onImageData([BIIIF)I
    .registers 6

    .line 136
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    if-eqz p0, :cond_9

    .line 137
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;->onImageData([BIIIF)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public nativeCallback_onInfoListener(IIF)V
    .registers 5

    .line 122
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 123
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/ss/android/ttve/common/TECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public nativeCallback_onMVInited()V
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMVInitedCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;

    if-eqz p0, :cond_7

    .line 153
    invoke-interface {p0}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;->onInited()V

    :cond_7
    return-void
.end method

.method public nativeCallback_onMattingDoneCallback(F)V
    .registers 2

    .line 187
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    if-eqz p0, :cond_7

    .line 188
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;->onMattingDoneCallback(F)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onMattingErrorCallback(IIF)V
    .registers 4

    .line 194
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    if-eqz p0, :cond_7

    .line 195
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;->onMattingErrorCallback(IIF)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onMattingProgressCallback(IFFZ)V
    .registers 5

    .line 201
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    if-eqz p0, :cond_7

    .line 202
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;->onMattingProgressCallback(IFFZ)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onMattingStartedCallback()V
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    if-eqz p0, :cond_7

    .line 181
    invoke-interface {p0}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;->onMattingStartedCallback()I

    :cond_7
    return-void
.end method

.method public nativeCallback_onOpenGLCreate(I)V
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 81
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLCreate(I)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onOpenGLDestroy(I)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 102
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDestroy(I)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onOpenGLDrawAfter(ID)V
    .registers 4

    .line 94
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 95
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDrawAfter(ID)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onOpenGLDrawBefore(ID)V
    .registers 4

    .line 87
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 88
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onOpenGLDrawBefore(ID)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onPreviewSurface(I)V
    .registers 2

    .line 108
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    if-eqz p0, :cond_7

    .line 109
    invoke-interface {p0, p1}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;->onPreviewSurface(I)I

    :cond_7
    return-void
.end method

.method public nativeCallback_onProcessCallback(IILjava/lang/String;)V
    .registers 4

    .line 173
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mKeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    if-eqz p0, :cond_7

    .line 174
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;->onProcessCallback(IILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public nativeCallback_onSeekFrameData([BIIIF)I
    .registers 6

    .line 144
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    if-eqz p0, :cond_9

    .line 145
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;->onImageData([BIIIF)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public setAudioExtendToFileCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mAudioExtendToFileCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;

    return-void
.end method

.method public setEncoderDataListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    return-void
.end method

.method public setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnErrorListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-void
.end method

.method public setExtractFrameProcessCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$ExtractFrameProcessCallback;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mExtractFrameProcessCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$ExtractFrameProcessCallback;

    return-void
.end method

.method public setGetImageCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    return-void
.end method

.method public setGetSeekFrameCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    return-void
.end method

.method public setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOnInfoListener:Lcom/ss/android/ttve/common/TECommonCallback;

    return-void
.end method

.method public setKeyFrameCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mKeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    return-void
.end method

.method public setMattingCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    return-void
.end method

.method public setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    return-void
.end method

.method public setSeekFrameCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    return-void
.end method

.method public setmMVInitedCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->mMVInitedCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMVInitedCallback;

    return-void
.end method
