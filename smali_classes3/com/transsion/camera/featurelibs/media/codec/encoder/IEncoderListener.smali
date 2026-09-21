.class public interface abstract Lcom/transsion/camera/featurelibs/media/codec/encoder/IEncoderListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onEncoded(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onEncoderPrepared(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)I
.end method

.method public abstract onError(Landroid/media/MediaCodec;Ljava/lang/Exception;)V
.end method
