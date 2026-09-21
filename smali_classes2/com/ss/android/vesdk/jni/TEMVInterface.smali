.class public Lcom/ss/android/vesdk/jni/TEMVInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEMVInterface"


# instance fields
.field private mHostTrackIndex:I

.field private mNative:J


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mHostTrackIndex:I

    .line 26
    iput-wide p1, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    return-void
.end method

.method private native nativeAddAudioTrackMV(JLjava/lang/String;IIIIIZF)I
.end method

.method private native nativeAddVideoTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[II[Lcom/ss/android/vesdk/VESize;II[ZF)I
.end method

.method private native nativeGetMVOriginalBackgroundAudio(J)Ljava/lang/Object;
.end method

.method private native nativeGetServerAlgorithmConfig(J)Ljava/lang/Object;
.end method

.method private native nativeInitMVResources(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IIZZZ[Ljava/lang/String;IIII)Ljava/lang/Object;
.end method

.method private native nativeInitVideoEditorMV(J[Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FIZ)I
.end method

.method private native nativeInitVideoEditorMVLoadCache(J[Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI[Z[Ljava/lang/String;)I
.end method

.method private native nativeSetAudioBeatAlgorithmResult(JLcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;)I
.end method

.method private native nativeSetExternalAlgorithmResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeSetMVDataJson(JLjava/lang/String;)I
.end method


# virtual methods
.method public addAudioTrackForMV(Ljava/lang/String;IIIIIZF)I
    .registers 20

    .line 91
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 93
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, -0x64

    return p0

    .line 97
    :cond_13
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeAddAudioTrackMV(JLjava/lang/String;IIIIIZF)I

    move-result p0

    return p0
.end method

.method public addVideoTrackForMV([Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[II[Lcom/ss/android/vesdk/VESize;I[ZF)I
    .registers 30

    move-object/from16 v1, p0

    .line 82
    iget-wide v2, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_c

    const/4 v0, -0x1

    return v0

    .line 84
    :cond_c
    iget v13, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mHostTrackIndex:I

    if-gez v13, :cond_13

    const/16 v0, -0x69

    return v0

    :cond_13
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    .line 87
    invoke-direct/range {v1 .. v16}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeAddVideoTrack(J[Ljava/lang/String;[Ljava/lang/String;[I[I[I[I[II[Lcom/ss/android/vesdk/VESize;II[ZF)I

    move-result v0

    return v0
.end method

.method public clearNative()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    return-void
.end method

.method public getMVOriginalBackgroundAudio()Ljava/lang/Object;
    .registers 5

    .line 117
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 118
    const-string p0, "TEMVInterface"

    const-string v0, "getMVOriginalBackgroundAudio error, mNative == 0"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeGetMVOriginalBackgroundAudio(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getServerAlgorithmConfig()Ljava/lang/Object;
    .registers 5

    .line 134
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 135
    const-string p0, "TEMVInterface"

    const-string v0, "getServerAlgorithmConfig error, mNative == 0"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeGetServerAlgorithmConfig(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public initMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IIZZZ[Ljava/lang/String;IIII)Ljava/lang/Object;
    .registers 35

    move-object/from16 v1, p0

    .line 78
    iget-wide v2, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    invoke-direct/range {v1 .. v18}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeInitMVResources(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;IIZZZ[Ljava/lang/String;IIII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initVideoEditor2([Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FIZ)I
    .registers 37

    move-object/from16 v1, p0

    .line 33
    iget-wide v2, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_d

    const/16 v0, -0x70

    return v0

    :cond_d
    move-object/from16 v4, p1

    if-nez p14, :cond_1c

    .line 38
    array-length v0, v4

    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    move-object/from16 v17, v0

    goto :goto_1e

    :cond_1c
    move-object/from16 v17, p14

    .line 41
    :goto_1e
    iget-wide v2, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v18, p15

    move/from16 v19, p16

    invoke-direct/range {v1 .. v19}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeInitVideoEditorMV(J[Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FIZ)I

    move-result v0

    if-gez v0, :cond_43

    return v0

    .line 47
    :cond_43
    iput v0, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public initVideoEditor2([Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI[Z[Ljava/lang/String;)I
    .registers 39

    move-object/from16 v1, p0

    .line 56
    iget-wide v2, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_d

    const/16 v0, -0x70

    return v0

    :cond_d
    move-object/from16 v4, p1

    if-nez p14, :cond_1c

    .line 61
    array-length v0, v4

    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 62
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    move-object/from16 v17, v0

    goto :goto_1e

    :cond_1c
    move-object/from16 v17, p14

    .line 64
    :goto_1e
    iget-wide v2, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    invoke-direct/range {v1 .. v20}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeInitVideoEditorMVLoadCache(J[Ljava/lang/String;[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[Ljava/lang/String;[[Ljava/lang/String;[FI[Z[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_45

    return v0

    .line 70
    :cond_45
    iput v0, v1, Lcom/ss/android/vesdk/jni/TEMVInterface;->mHostTrackIndex:I

    const/4 v0, 0x0

    return v0
.end method

.method public setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12

    .line 126
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_12

    .line 127
    const-string p0, "TEMVInterface"

    const-string p1, "setExternalAlgorithmResult error, mNative == 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    :cond_12
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 130
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeSetExternalAlgorithmResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setMVAudioBeatAlgorithmResult(Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;)I
    .registers 6

    .line 109
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 110
    const-string p0, "TEMVInterface"

    const-string p1, "setExternalAlgorithmResult error, mNative == 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 113
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeSetAudioBeatAlgorithmResult(JLcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;)I

    move-result p0

    return p0
.end method

.method public setMVDataJson(Ljava/lang/String;)I
    .registers 6

    .line 101
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEMVInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 102
    const-string p0, "TEMVInterface"

    const-string p1, "setExternalAlgorithmResult error, mNative == 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 105
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEMVInterface;->nativeSetMVDataJson(JLjava/lang/String;)I

    move-result p0

    return p0
.end method
