.class public Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;
.super Lcom/transsion/camera/featurelibs/media/BaseRecorder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;
.implements Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAudioRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;

.field private final mMediaWorkers:Ljava/util/List;

.field private final mRecorderMuxer:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

.field private final mVideoRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TextureCodecRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/featurelibs/media/ITextureHolder;)V
    .registers 7

    .line 55
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mMediaWorkers:Ljava/util/List;

    .line 56
    new-instance v1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;

    invoke-direct {v1}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;-><init>()V

    .line 58
    new-instance v2, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;

    invoke-direct {v2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mVideoRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;

    .line 59
    invoke-virtual {v2, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->setRecorderSync(Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;)V

    .line 60
    invoke-virtual {v2, p0}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->setRecorderListener(Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;)V

    .line 62
    new-instance v3, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;

    invoke-direct {v3, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mAudioRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;

    .line 63
    invoke-virtual {v3, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->setRecorderSync(Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;)V

    .line 64
    invoke-virtual {v3, p0}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->setRecorderListener(Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;)V

    .line 66
    new-instance p1, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mRecorderMuxer:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-interface {p2, p0}, Lcom/transsion/camera/featurelibs/media/ITextureHolder;->setTextureUpdater(Lcom/transsion/camera/featurelibs/media/ITextureHolder$ITextureUpdater;)V

    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;)V
    .registers 4

    .line 78
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->config(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mVideoRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->videoParam()Lcom/transsion/camera/featurelibs/media/param/codec/VideoParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->config(Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mAudioRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->audioParam()Lcom/transsion/camera/featurelibs/media/param/codec/AudioParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->config(Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mRecorderMuxer:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;->muxerParam()Lcom/transsion/camera/featurelibs/media/param/codec/MuxerParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->config(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mRecorderMuxer:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mVideoRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->addTrack(Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mRecorderMuxer:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mAudioRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->addTrack(Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;)V

    return-void
.end method

.method public bridge synthetic config(Ljava/lang/Object;)V
    .registers 2

    .line 42
    check-cast p1, Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->config(Lcom/transsion/camera/featurelibs/media/param/CodecRecorderParam;)V

    return-void
.end method

.method public onTrackError(II)V
    .registers 3

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/IRecorderListener;

    if-eqz p0, :cond_7

    .line 176
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/IRecorderListener;->onError(II)V

    :cond_7
    return-void
.end method

.method public onTrackPrepared(Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;Landroid/media/MediaFormat;)I
    .registers 3

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mRecorderMuxer:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->onTrackPrepared(Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;Landroid/media/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public onTrackRecorded(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mRecorderMuxer:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 140
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->pause()V

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mMediaWorkers:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 97
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->prepare()V

    .line 99
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    .line 100
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_f

    .line 104
    invoke-virtual {p0, v0}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->prepare(Landroid/opengl/EGLContext;)V

    return-void

    .line 101
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "should be called on GLThread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public prepare(Landroid/opengl/EGLContext;)V
    .registers 4

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->prepare()V

    .line 111
    :try_start_3
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mVideoRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->prepare(Landroid/opengl/EGLContext;)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mAudioRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/media/codec/track/audio/AudioRecorder;->prepare()V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mRecorderMuxer:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderMuxer;->prepare()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    .line 115
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare failed"

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x2710

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->notifyError(II)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->release()V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mMediaWorkers:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mMediaWorkers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 146
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->reset()V

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mMediaWorkers:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 134
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->resume()V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mMediaWorkers:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public start()V
    .registers 2

    .line 122
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->start()V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mMediaWorkers:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 128
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/media/BaseRecorder;->stop()V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mMediaWorkers:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateTexture(II[F)V
    .registers 4

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/TextureCodecRecorder;->mVideoRecorder:Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/media/codec/track/video/VideoTextureRecorder;->updateTexture(II[F)V

    return-void
.end method
