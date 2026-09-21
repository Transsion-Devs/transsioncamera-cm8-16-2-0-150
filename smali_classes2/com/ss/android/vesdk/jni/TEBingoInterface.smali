.class public Lcom/ss/android/vesdk/jni/TEBingoInterface;
.super Lcom/ss/android/ttve/nativePort/TENativeServiceBase;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEBingoInterface"


# instance fields
.field private mHostTrackIndex:I

.field private mNative:J

.field private mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/nativePort/TEInterface;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mHostTrackIndex:I

    .line 28
    iput-object p1, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 29
    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    return-void
.end method

.method private native nativeAddVidoeClipWithAlgorithm(J[Ljava/lang/String;)I
.end method

.method private native nativeCancelExtractVideoFrames(JI)I
.end method

.method private native nativeCheckScoresFile(JLjava/lang/String;)I
.end method

.method private native nativeDeleteVideoClipWithAlgorithm(JI)I
.end method

.method private native nativeExtractVideoFrames(JIIIII)I
.end method

.method private native nativeGenAISolve(J)I
.end method

.method private native nativeGenRandomSolve(J)I
.end method

.method private native nativeGetAllVideoRangeData(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetClipPath(JI)Ljava/lang/String;
.end method

.method private native nativeInitBingoAlgorithm(J)I
.end method

.method private native nativeInitVideoEditorWithAlgorithm(J[Ljava/lang/String;I)I
.end method

.method private native nativeInitVideoEditorWithAlgorithmLoadCache(J[Ljava/lang/String;I[Z[Ljava/lang/String;)I
.end method

.method private native nativeMoveVideoClipWithAlgorithm(JII)I
.end method

.method private native nativeProcessBingoFrames(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I
.end method

.method private native nativeRemoveAllVideoSound(J)I
.end method

.method private native nativeRemoveMusic(JI)I
.end method

.method private native nativeRestoreAllVideoSound(J)I
.end method

.method private native nativeSetAIRotation(JII)I
.end method

.method private native nativeSetInterimScoresToFile(JLjava/lang/String;)I
.end method

.method private native nativeSetMusicAndResult(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method private native nativeSetMusicAndResultLoadCache(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Z[Ljava/lang/String;)I
.end method

.method private native nativeSetMusicCropRatio(JI)I
.end method

.method private native nativeUpdateAlgorithmFromNormal(J)I
.end method


# virtual methods
.method public addVidoeClipWithAlgorithm([Ljava/lang/String;)I
    .registers 6

    .line 71
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 75
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeAddVidoeClipWithAlgorithm(J[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cancelExtractVideoFrames(I)I
    .registers 6

    .line 204
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 207
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeCancelExtractVideoFrames(JI)I

    move-result p0

    return p0
.end method

.method public checkScoresFile(Ljava/lang/String;)I
    .registers 6

    .line 189
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 192
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeCheckScoresFile(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public clearNative()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 238
    iput-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    return-void
.end method

.method public deleteVideoClipWithAlgorithm(I)I
    .registers 6

    .line 80
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 84
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeDeleteVideoClipWithAlgorithm(JI)I

    move-result p0

    return p0
.end method

.method public extractVideoFrames(IIIIILcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)I
    .registers 16

    .line 211
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 215
    :cond_b
    new-instance v0, Lcom/ss/android/vesdk/jni/TEBingoInterface$1;

    invoke-direct {v0, p0, p6}, Lcom/ss/android/vesdk/jni/TEBingoInterface$1;-><init>(Lcom/ss/android/vesdk/jni/TEBingoInterface;Lcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)V

    .line 224
    iget-object p6, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p6, v0}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setExtractFrameProcessCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$ExtractFrameProcessCallback;)V

    .line 226
    iget-wide v2, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeExtractVideoFrames(JIIIII)I

    move-result p0

    return p0
.end method

.method public genAISolve()I
    .registers 5

    .line 138
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 141
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeGenAISolve(J)I

    move-result p0

    return p0
.end method

.method public getAllVideoRangeData()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;",
            ">;"
        }
    .end annotation

    .line 154
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeGetAllVideoRangeData(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getClipPath(I)Ljava/lang/String;
    .registers 6

    .line 196
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 197
    const-string p0, ""

    return-object p0

    .line 199
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeGetClipPath(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRandomSolve()I
    .registers 5

    .line 146
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 149
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeGenRandomSolve(J)I

    move-result p0

    return p0
.end method

.method public initBingoAlgorithm()I
    .registers 5

    .line 33
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 37
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeInitBingoAlgorithm(J)I

    move-result p0

    return p0
.end method

.method public initVideoEditorWithAlgorithm([Ljava/lang/String;I)I
    .registers 7

    .line 41
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 45
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeInitVideoEditorWithAlgorithm(J[Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_12

    return p1

    .line 50
    :cond_12
    iput p1, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public initVideoEditorWithAlgorithm([Ljava/lang/String;I[Z[Ljava/lang/String;)I
    .registers 12

    .line 56
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 60
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeInitVideoEditorWithAlgorithmLoadCache(J[Ljava/lang/String;I[Z[Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_17

    return p0

    .line 65
    :cond_17
    iput p0, v0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mHostTrackIndex:I

    const/4 p0, 0x0

    return p0
.end method

.method public moveVideoClipWithAlgorithm(II)I
    .registers 7

    .line 89
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 93
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeMoveVideoClipWithAlgorithm(JII)I

    move-result p0

    return p0
.end method

.method public processBingoFrames(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I
    .registers 16

    .line 230
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 233
    invoke-direct/range {v0 .. v8}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeProcessBingoFrames(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeAllVideoSound()I
    .registers 5

    .line 124
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 127
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeRemoveAllVideoSound(J)I

    move-result p0

    return p0
.end method

.method public removeMusic(I)I
    .registers 6

    .line 116
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 119
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeRemoveMusic(JI)I

    move-result p0

    return p0
.end method

.method public restoreAllVideoSound()I
    .registers 5

    .line 131
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 134
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeRestoreAllVideoSound(J)I

    move-result p0

    return p0
.end method

.method public setAIRotation(II)I
    .registers 7

    .line 168
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 171
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeSetAIRotation(JII)I

    move-result p0

    return p0
.end method

.method public setInterimScoresToFile(Ljava/lang/String;)I
    .registers 6

    .line 182
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 185
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeSetInterimScoresToFile(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMusicAndResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 24

    .line 99
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v5, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 102
    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeSetMusicAndResult(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public setMusicAndResultLoadCache(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Z[Ljava/lang/String;)I
    .registers 28

    .line 108
    iget-wide v1, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object/from16 v5, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 111
    invoke-direct/range {v0 .. v14}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeSetMusicAndResultLoadCache(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Z[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMusicCropRatio(I)I
    .registers 6

    .line 175
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 178
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeSetMusicCropRatio(JI)I

    move-result p0

    return p0
.end method

.method public updateAlgorithmFromNormal()I
    .registers 5

    .line 161
    iget-wide v0, p0, Lcom/ss/android/vesdk/jni/TEBingoInterface;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 164
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/jni/TEBingoInterface;->nativeUpdateAlgorithmFromNormal(J)I

    move-result p0

    return p0
.end method
