.class public Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/AVCEncoderInterface;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HWAvcNativeBridge"


# instance fields
.field private mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

.field private mNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mNativePtr:J

    return-void
.end method


# virtual methods
.method public getProfile()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public native nativeSetCodecConfig(JLjava/nio/ByteBuffer;I)I
.end method

.method public native nativeSetColorFormat(JI)I
.end method

.method public native nativeSetHardEncoderStatus(JZ)I
.end method

.method public native nativeSwapGlBuffer(J)V
.end method

.method public native nativeWriteFile(JLjava/nio/ByteBuffer;IIII)I
.end method

.method public onEncoderData(IIIZ)I
    .registers 5

    .line 102
    iget-object p0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-eqz p0, :cond_7

    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/AVCEncoder;->encode(IIIZ)I

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onEncoderData(Ljava/nio/ByteBuffer;IZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onEncoderData([BIZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onInitHardEncoder(IIIIIIZI)Landroid/view/Surface;
    .registers 9

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onInitHardEncoder(IIIIZ)Landroid/view/Surface;
    .registers 13

    .line 43
    iget-object v0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Lcom/ss/android/medialib/AVCEncoder;

    invoke-direct {v0}, Lcom/ss/android/medialib/AVCEncoder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    .line 45
    invoke-static {p4}, Lcom/ss/android/medialib/AVCEncoder;->setFrameRate(I)V

    .line 48
    :cond_e
    iget-object v0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/AVCEncoder;->setEncoderCaller(Lcom/ss/android/medialib/AVCEncoderInterface;)V

    .line 49
    iget-object v1, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/medialib/AVCEncoder;->initAVCEncoder(IIIIZ)Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_2a

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    .line 53
    iget-wide p2, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mNativePtr:J

    const/4 p4, 0x0

    invoke-virtual {p0, p2, p3, p4}, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->nativeSetHardEncoderStatus(JZ)I

    return-object p1

    .line 56
    :cond_2a
    const-string p2, "====== initAVCEncoder succeed ======"

    const-string p3, "HWAvcNativeBridge"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-wide p4, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mNativePtr:J

    const/4 p2, 0x1

    invoke-virtual {p0, p4, p5, p2}, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->nativeSetHardEncoderStatus(JZ)I

    .line 60
    const-string p0, "MarkManager onInitHardEncoder == exit"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public onSetCodecConfig(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 110
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mNativePtr:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->nativeSetCodecConfig(JLjava/nio/ByteBuffer;I)I

    return-void
.end method

.method public onSwapGlBuffers()V
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mNativePtr:J

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->nativeSwapGlBuffer(J)V

    return-void
.end method

.method public onUninitHardEncoder()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-eqz v0, :cond_11

    .line 78
    invoke-virtual {v0}, Lcom/ss/android/medialib/AVCEncoder;->uninitAVCEncoder()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    .line 80
    const-string p0, "HWAvcNativeBridge"

    const-string v0, "====== uninitAVCEncoder ======"

    invoke-static {p0, v0}, Lcom/ss/android/medialib/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onWriteFile(Ljava/nio/ByteBuffer;III)V
    .registers 13

    .line 115
    iget-wide v1, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mNativePtr:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->nativeWriteFile(JLjava/nio/ByteBuffer;IIII)I

    return-void
.end method

.method public onWriteFile(Ljava/nio/ByteBuffer;JJIZ)V
    .registers 8

    .line 0
    return-void
.end method

.method public setColorFormat(I)V
    .registers 4

    .line 29
    iget-wide v0, p0, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->mNativePtr:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/NativePort/HWAvcNativeBridge;->nativeSetColorFormat(JI)I

    return-void
.end method
