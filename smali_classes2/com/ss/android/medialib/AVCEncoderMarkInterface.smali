.class public interface abstract Lcom/ss/android/medialib/AVCEncoderMarkInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onInitMarkHardEncoder(IIIIIIZ)Landroid/view/Surface;
.end method

.method public abstract onInitMarkHardEncoder(IIIIZ)Landroid/view/Surface;
.end method

.method public abstract onMarkEncoderData(IIIIZ)I
.end method

.method public abstract onMarkEncoderData(Ljava/nio/ByteBuffer;IZ)V
.end method

.method public abstract onMarkEncoderData([BIZ)V
.end method

.method public abstract onMarkParam(FIFFFFFF)V
.end method

.method public abstract onMarkSetCodecConfig([B)V
.end method

.method public abstract onMarkSwapGlBuffers()V
.end method

.method public abstract onMarkWriteFile([BIII)V
.end method

.method public abstract onUninitMarkHardEncoder()V
.end method

.method public abstract setColorFormatMark(I)V
.end method
