.class public Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private frameDataListener:Lcom/ss/android/vesdk/VEFrameDataAvailableListerner;

.field private frameListener:Lcom/ss/android/vesdk/VEFrameAvailableListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateBuffer(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 59
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static allocateFrame(II)Ljava/nio/ByteBuffer;
    .registers 2

    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x4

    .line 54
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static onFrameAvailable(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .registers 7

    .line 27
    instance-of v0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 28
    check-cast p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    .line 29
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->frameListener:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    if-eqz p0, :cond_13

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    return v1
.end method

.method public static onFrameAvailable2(Ljava/lang/Object;[BIII)Z
    .registers 7

    .line 45
    instance-of v0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 46
    check-cast p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    .line 47
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->frameListener:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    if-eqz p0, :cond_17

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v1
.end method

.method public static onFrameDataAvailable(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIII)Z
    .registers 14

    .line 36
    instance-of v0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 37
    check-cast p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    .line 38
    iget-object v2, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->frameDataListener:Lcom/ss/android/vesdk/VEFrameDataAvailableListerner;

    if-eqz v2, :cond_18

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/vesdk/VEFrameDataAvailableListerner;->processFrame(Ljava/nio/ByteBuffer;IIII)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v1
.end method


# virtual methods
.method public getFrameAvailableListener()Lcom/ss/android/vesdk/VEFrameAvailableListener;
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->frameListener:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    return-object p0
.end method

.method public onFrameAvailable(Ljava/nio/ByteBuffer;III)Z
    .registers 5

    .line 22
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->frameListener:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEFrameAvailableListener;->processFrame(Ljava/nio/ByteBuffer;III)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setFrameDataListener(Ljava/lang/Object;)V
    .registers 2

    .line 71
    check-cast p1, Lcom/ss/android/vesdk/VEFrameDataAvailableListerner;

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->frameDataListener:Lcom/ss/android/vesdk/VEFrameDataAvailableListerner;

    return-void
.end method

.method public setListener(Ljava/lang/Object;)V
    .registers 2

    .line 63
    check-cast p1, Lcom/ss/android/vesdk/VEFrameAvailableListener;

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->frameListener:Lcom/ss/android/vesdk/VEFrameAvailableListener;

    return-void
.end method
