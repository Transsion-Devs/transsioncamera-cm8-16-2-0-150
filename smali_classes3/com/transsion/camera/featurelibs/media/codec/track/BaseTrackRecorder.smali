.class public abstract Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;
.super Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

.field protected mRecorderListener:Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;

.field protected mRecorderSync:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseTrackRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->config(Ljava/lang/Object;)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mMediaEncoder:Lcom/transsion/camera/featurelibs/media/codec/encoder/MediaEncoder;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->config(Ljava/lang/Object;)V

    return-void
.end method

.method public onEncoded(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;

    if-eqz p0, :cond_7

    .line 72
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;->onTrackRecorded(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_7
    return-void
.end method

.method public onEncoderPrepared(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)I
    .registers 3

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;

    if-nez p1, :cond_d

    .line 62
    sget-object p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onEncoderPrepared recorderListener is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 65
    :cond_d
    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;->onTrackPrepared(Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;Landroid/media/MediaFormat;)I

    move-result p0

    return p0
.end method

.method public onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method public setRecorderListener(Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mRecorderListener:Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;

    return-void
.end method

.method public setRecorderSync(Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;->mRecorderSync:Lcom/transsion/camera/featurelibs/media/codec/mediate/RecorderSync;

    return-void
.end method

.method public trackValid()Z
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseMediaWorker;->mParam:Ljava/lang/Object;

    if-eqz p0, :cond_e

    check-cast p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;->needMedia()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
