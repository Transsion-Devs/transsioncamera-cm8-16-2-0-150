.class public Lcom/effectsar/labcv/effectsdk/SkySegment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;
    }
.end annotation


# instance fields
.field private hasSky:Z

.field private inited:Z

.field private mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    :try_start_0
    const-string v0, "effect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->inited:Z

    .line 24
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->hasSky:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle()I
.end method

.method private native nativeDetect(Ljava/nio/ByteBuffer;IIIIIZZ[B)I
.end method

.method private native nativeGetShape([I)I
.end method

.method private native nativeInit(Ljava/lang/String;)I
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetParam(II)I
.end method


# virtual methods
.method public detectSky(Ljava/nio/ByteBuffer;Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;IIILcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;ZZ)Lcom/effectsar/labcv/effectsdk/BefSkyInfo;
    .registers 24

    .line 124
    iget-boolean v1, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->inited:Z

    const/4 v10, 0x0

    if-nez v1, :cond_6

    return-object v10

    .line 127
    :cond_6
    new-instance v11, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;

    invoke-direct {v11}, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;-><init>()V

    .line 128
    new-instance v12, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;

    invoke-direct {v12, p0}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;-><init>(Lcom/effectsar/labcv/effectsdk/SkySegment;)V

    const/4 v1, 0x3

    .line 129
    new-array v1, v1, [I

    .line 130
    invoke-direct {p0, v1}, Lcom/effectsar/labcv/effectsdk/SkySegment;->nativeGetShape([I)I

    move-result v2

    .line 131
    const-string v13, "nativeDetect return "

    const-string v14, "bef_effect_ai"

    if-nez v2, :cond_84

    const/4 v2, 0x0

    .line 132
    aget v3, v1, v2

    # setter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->width:I
    invoke-static {v12, v3}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$002(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;I)I

    const/4 v3, 0x1

    .line 133
    aget v3, v1, v3

    # setter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->height:I
    invoke-static {v12, v3}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$102(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;I)I

    const/4 v3, 0x2

    .line 134
    aget v1, v1, v3

    # setter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->channel:I
    invoke-static {v12, v1}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$202(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;I)I

    .line 135
    # getter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->width:I
    invoke-static {v12}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$000(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)I

    move-result v1

    # getter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->height:I
    invoke-static {v12}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$100(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)I

    move-result v3

    mul-int/2addr v1, v3

    # getter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->channel:I
    invoke-static {v12}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$200(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)I

    move-result v3

    mul-int/2addr v1, v3

    new-array v1, v1, [B

    # setter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->buffer:[B
    invoke-static {v12, v1}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$302(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;[B)[B

    .line 136
    # getter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->buffer:[B
    invoke-static {v12}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$300(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)[B

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 v1, p6

    iget v6, v1, Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$Rotation;->id:I

    # getter for: Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->buffer:[B
    invoke-static {v12}, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->access$300(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)[B

    move-result-object v9

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/effectsar/labcv/effectsdk/SkySegment;->nativeDetect(Ljava/nio/ByteBuffer;IIIIIZZ[B)I

    move-result v1

    if-eqz v1, :cond_7b

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 146
    :cond_7b
    invoke-virtual {v11, v12}, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;->setSkyMask(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)V

    .line 147
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->hasSky:Z

    invoke-virtual {v11, v0}, Lcom/effectsar/labcv/effectsdk/BefSkyInfo;->setHasSky(Z)V

    return-object v11

    .line 138
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/effectsar/labcv/effectsdk/SkySegment;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    .line 62
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->inited:Z

    if-nez v0, :cond_1c

    .line 63
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/SkySegment;->nativeCreateHandle()I

    move-result v0

    if-nez v0, :cond_e

    .line 65
    invoke-direct {p0, p1, p3, p4}, Lcom/effectsar/labcv/effectsdk/SkySegment;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    :cond_e
    if-nez v0, :cond_14

    .line 68
    invoke-direct {p0, p2}, Lcom/effectsar/labcv/effectsdk/SkySegment;->nativeInit(Ljava/lang/String;)I

    move-result v0

    :cond_14
    if-nez v0, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 71
    :goto_19
    iput-boolean p1, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->inited:Z

    return v0

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method public isInited()Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->inited:Z

    return p0
.end method

.method public release()V
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->inited:Z

    if-eqz v0, :cond_7

    .line 91
    invoke-direct {p0}, Lcom/effectsar/labcv/effectsdk/SkySegment;->nativeRelease()V

    :cond_7
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment;->inited:Z

    return-void
.end method

.method public setParam(II)I
    .registers 3

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/effectsar/labcv/effectsdk/SkySegment;->nativeSetParam(II)I

    move-result p0

    return p0
.end method
