.class public Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final MaxSkeletonNum:I

.field private mInited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    :try_start_0
    const-string v0, "byteeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->MaxSkeletonNum:I

    return-void
.end method

.method private native nativeCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetParamI(II)I
.end method


# virtual methods
.method public detect(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;)Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;
    .registers 16

    .line 42
    iget-boolean v1, p0, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->mInited:Z

    const/4 v8, 0x0

    if-nez v1, :cond_6

    return-object v8

    .line 44
    :cond_6
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;

    invoke-direct {v7}, Lcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;-><init>()V

    .line 46
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    iget v6, p6, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->nativeDetect(Ljava/nio/ByteBuffer;IIIIILcom/bytedance/labcv/effectsdk/BefBachSkeletonInfo;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native detect return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bef_byteeffect_ai"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_33
    return-object v7
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->nativeCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p2, 0x1

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 32
    :goto_9
    iput-boolean p2, p0, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->mInited:Z

    return p1
.end method

.method public isInited()Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->mInited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->mInited:Z

    if-eqz v0, :cond_7

    .line 56
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->nativeRelease()I

    :cond_7
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->mInited:Z

    return-void
.end method

.method public setParamI(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$BachSkeletonParamType;I)I
    .registers 4

    .line 37
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->mInited:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 38
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$BachSkeletonParamType;->getValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/BachSkeletonDetect;->nativeSetParamI(II)I

    move-result p0

    return p0
.end method
