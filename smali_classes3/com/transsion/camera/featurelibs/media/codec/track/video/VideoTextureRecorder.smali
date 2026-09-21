.class public Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;
.super Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoTextureRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;-><init>()V

    .line 41
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    .line 42
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V
    .registers 5

    .line 143
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V

    .line 144
    sget-object p1, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;

    if-eqz p0, :cond_28

    const p1, 0x30d40

    const/4 p2, 0x0

    .line 147
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;->onTrackError(II)V

    :cond_28
    return-void
.end method

.method public pause()V
    .registers 3

    .line 110
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->pause()V

    .line 111
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->pause()V

    return-void
.end method

.method public prepare(Landroid/opengl/EGLContext;)V
    .registers 3

    .line 68
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->prepare()V

    .line 70
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->trackValid()Z

    move-result v0

    if-nez v0, :cond_11

    .line 71
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "prepare failed, invalid track"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->prepare()V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->prepare(Landroid/view/Surface;Landroid/opengl/EGLContext;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 124
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->release()V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->release()V

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->release()V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 117
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->reset()V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->reset()V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->reset()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 103
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->resume()V

    .line 104
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->resume()V

    return-void
.end method

.method public setRecorderSync(Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->setRecorderSync(Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;)V

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->setRecorderSync(Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;)V

    return-void
.end method

.method public start()V
    .registers 2

    .line 84
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->start()V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->start()V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->start()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stop()V

    .line 93
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->signalEndOfInputStream()V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;->stop()V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->stop()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 97
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stop failed"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public updateTexture(II[F)V
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mCurrentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_d

    const/4 v1, 0x3

    if-eq v1, v0, :cond_d

    return-void

    .line 136
    :cond_d
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onTextureUpdated"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->mTextureRender:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->updateTexture(II[F)V

    return-void
.end method
