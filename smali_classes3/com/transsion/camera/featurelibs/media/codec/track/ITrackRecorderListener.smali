.class public interface abstract Lcom/transsion/camera/featurelibs/media/codec/track/ITrackRecorderListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onTrackError(II)V
.end method

.method public abstract onTrackPrepared(Lcom/transsion/camera/featurelibs/media/codec/track/BaseTrackRecorder;Landroid/media/MediaFormat;)I
.end method

.method public abstract onTrackRecorded(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
