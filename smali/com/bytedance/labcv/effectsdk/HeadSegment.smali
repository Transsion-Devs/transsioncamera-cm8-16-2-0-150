.class public Lcom/bytedance/labcv/effectsdk/HeadSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private inited:Z

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z

    return-void
.end method

.method private native nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I
.end method

.method private native nativeCreateHandle()I
.end method

.method private native nativeInitModel(Ljava/lang/String;)I
.end method

.method private native nativeProcess(Ljava/nio/ByteBuffer;IIIII[[FLcom/bytedance/labcv/effectsdk/BefHeadSegInfo;)I
.end method

.method private native nativeRelease()I
.end method

.method private native nativeSetParam(IF)I
.end method

.method private serializeFace106([Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;)[[F
    .registers 10

    if-eqz p1, :cond_3d

    .line 50
    array-length p0, p1

    if-nez p0, :cond_6

    goto :goto_3d

    .line 51
    :cond_6
    array-length p0, p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0xd4

    aput v2, v0, v1

    const/4 v2, 0x0

    aput p0, v0, v2

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    move v0, v2

    .line 53
    :goto_1b
    array-length v3, p1

    if-ge v0, v3, :cond_3c

    move v3, v2

    :goto_1f
    const/16 v4, 0x6a

    if-ge v3, v4, :cond_39

    .line 55
    aget-object v4, p0, v0

    mul-int/lit8 v5, v3, 0x2

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;->points_array:[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;

    aget-object v6, v6, v3

    iget v7, v6, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->x:F

    aput v7, v4, v5

    add-int/2addr v5, v1

    .line 56
    iget v6, v6, Lcom/bytedance/labcv/effectsdk/BefFaceInfo$FacePoint;->y:F

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_3c
    return-object p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 6

    monitor-enter p0

    .line 26
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z

    if-nez v0, :cond_2b

    .line 27
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeCreateHandle()I

    move-result v0

    if-nez v0, :cond_12

    .line 29
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeCheckLicense(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_2e

    :cond_12
    :goto_12
    const/4 p1, 0x1

    if-nez v0, :cond_24

    .line 31
    invoke-direct {p0, p2}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeInitModel(Ljava/lang/String;)I

    move-result v0

    .line 32
    sget-object p2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->BEF_AI_HS_ENABLE_TRACKING:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;I)I

    .line 33
    sget-object p2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->BEF_AI_HS_MAX_FACE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;I)I

    :cond_24
    if-nez v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    .line 35
    :goto_28
    iput-boolean p1, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_10

    goto :goto_2c

    :cond_2b
    const/4 v0, -0x1

    .line 37
    :goto_2c
    monitor-exit p0

    return v0

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_10

    throw p1
.end method

.method public isInited()Z
    .registers 1

    .line 104
    iget-boolean p0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z

    return p0
.end method

.method public process(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIILcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;[Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;)Lcom/bytedance/labcv/effectsdk/BefHeadSegInfo;
    .registers 18

    .line 71
    new-instance v8, Lcom/bytedance/labcv/effectsdk/BefHeadSegInfo;

    invoke-direct {v8}, Lcom/bytedance/labcv/effectsdk/BefHeadSegInfo;-><init>()V

    move-object/from16 v0, p7

    .line 73
    invoke-direct {p0, v0}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->serializeFace106([Lcom/bytedance/labcv/effectsdk/BefFaceInfo$Face106;)[[F

    move-result-object v7

    const/4 v9, 0x0

    if-nez v7, :cond_f

    return-object v9

    .line 79
    :cond_f
    invoke-virtual {p2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->getValue()I

    move-result v2

    move-object/from16 p2, p6

    iget v6, p2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$Rotation;->id:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 78
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeProcess(Ljava/nio/ByteBuffer;IIIII[[FLcom/bytedance/labcv/effectsdk/BefHeadSegInfo;)I

    move-result p0

    if-eqz p0, :cond_39

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "headseg failed with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "bef_byteeffect_ai"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_39
    return-object v8
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    .line 97
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z

    if-eqz v0, :cond_b

    .line 98
    invoke-direct {p0}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeRelease()I

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_10

    :cond_b
    :goto_b
    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/bytedance/labcv/effectsdk/HeadSegment;->inited:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_9

    .line 101
    monitor-exit p0

    return-void

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_9

    throw v0
.end method

.method public declared-synchronized setParam(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;I)I
    .registers 3

    monitor-enter p0

    .line 46
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$HeadSegmentParamType;->getValue()I

    move-result p1

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/effectsdk/HeadSegment;->nativeSetParam(IF)I

    move-result p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method
