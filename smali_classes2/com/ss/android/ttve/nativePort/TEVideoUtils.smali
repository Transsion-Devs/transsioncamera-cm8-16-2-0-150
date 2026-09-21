.class public final Lcom/ss/android/ttve/nativePort/TEVideoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;,
        Lcom/ss/android/ttve/nativePort/TEVideoUtils$CompileProbeListener2;,
        Lcom/ss/android/ttve/nativePort/TEVideoUtils$CompileProbeListener;,
        Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandAndDumpInfoListener;,
        Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;
    }
.end annotation


# static fields
.field private static getFrameInterval:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    const-wide/16 v0, 0x3e8

    .line 516
    sput-wide v0, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getFrameInterval:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConverBitmapToRGBA(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .registers 2

    .line 474
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeConverBitmapToRGBA(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static ConverRGBAToIMG(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 4

    .line 470
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeConverRGBAToIMG(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static applyLensNightEnhance(IIIILjava/lang/String;Ljava/lang/String;[[B)[B
    .registers 16

    const/4 v0, 0x0

    if-lez p0, :cond_20

    if-gtz p1, :cond_6

    goto :goto_20

    .line 501
    :cond_6
    array-length v1, p6

    if-ge p3, v1, :cond_a

    return-object v0

    :cond_a
    mul-int v1, p0, p1

    mul-int/lit8 v1, v1, 0x3

    .line 505
    div-int/lit8 v1, v1, 0x2

    new-array v8, v1, [B

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 506
    invoke-static/range {v1 .. v8}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeApplyLensNightEnhance(IIIILjava/lang/String;Ljava/lang/String;[[B[B)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object v8

    :cond_20
    :goto_20
    return-object v0
.end method

.method public static checkAudioFile(Ljava/lang/String;)I
    .registers 1

    .line 136
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCheckAudioFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static checkMVResourceIntegrity(Ljava/lang/String;)I
    .registers 1

    .line 533
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCheckMVResourceIntegrity(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static checkMp3File(Ljava/lang/String;)I
    .registers 1

    .line 127
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCheckMp3File(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static clearWavSeg(Ljava/lang/String;II)I
    .registers 3

    .line 292
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeClearWavSeg(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeConcat([Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static concat([Ljava/lang/String;Ljava/lang/String;I)I
    .registers 3

    .line 65
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeConcat([Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static concatRecordFrag([Ljava/lang/String;[J[Ljava/lang/String;[JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 18

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    .line 543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "TEVideoUtils"

    if-nez v2, :cond_88

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    array-length v2, p0

    if-eqz v2, :cond_88

    array-length v2, p1

    array-length v4, p0

    if-ne v2, v4, :cond_88

    array-length v2, p0

    array-length v4, p2

    if-ne v2, v4, :cond_88

    array-length v2, p0

    array-length v4, p3

    if-eq v2, v4, :cond_22

    goto :goto_88

    .line 548
    :cond_22
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 549
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v7, -0x72

    if-nez v4, :cond_55

    .line 551
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_55

    .line 552
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "create video output dir failed. Output Video Directory: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 557
    :cond_55
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 558
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_83

    .line 560
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_83

    .line 561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "create audio output dir failed. Output audio Directory: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 566
    :cond_83
    invoke-static/range {p0 .. p9}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeConcatRecordFrag([Ljava/lang/String;[J[Ljava/lang/String;[JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 544
    :cond_88
    :goto_88
    const-string p0, "ConmatRecordFrag parameter error!"

    invoke-static {v3, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public static convertJpegToMp4(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 4

    .line 478
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeConvertJpegToMp4(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static createCurveSpeedUtils([F[F)J
    .registers 2

    .line 172
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCreateCurveSpeedUtils([F[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static createGetFrameHandler(Ljava/lang/String;)J
    .registers 3

    .line 346
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCreateGetFrameHandler(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createRTAudioWaveformMgr(IIFI)J
    .registers 4

    .line 177
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCreateRTAudioWaveformMgr(IIFI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static deleteRTAudioWaveformMgr(J)I
    .registers 2

    .line 181
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeDeleteRTAudioWaveformMgr(J)I

    move-result p0

    return p0
.end method

.method public static detachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIII)I
    .registers 25

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 396
    invoke-static/range {v0 .. v12}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeDetachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIIII)I

    move-result p0

    return p0
.end method

.method public static detachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIIII)I
    .registers 13

    .line 405
    invoke-static/range {p0 .. p12}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeDetachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIIII)I

    move-result p0

    return p0
.end method

.method public static detectAudioMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .registers 4

    .line 272
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeDetectAudioMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static executeFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I
    .registers 2

    .line 410
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeExecuteFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I

    move-result p0

    return p0
.end method

.method public static executeFFmpegCommandAndDumpInfo(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandAndDumpInfoListener;)I
    .registers 3

    .line 414
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeExecuteFFmpegCommandAndDumpInfo(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandAndDumpInfoListener;)I

    move-result p0

    return p0
.end method

.method public static extractVideo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 280
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeExtractVideo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static findAudioSegmentStartTimeInOrigin(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 5

    .line 466
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeFindAudioSegmentStartTimeInOrigin(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static findBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 250
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeFindBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    return-object p0

    .line 252
    :cond_11
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 v0, -0xcd

    const-string v1, "This file does not support re-packaging for the time being!"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 248
    :cond_1b
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 v0, -0x64

    const-string v1, "Please check the input parameters!"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static generateMuteWav(Ljava/lang/String;III)I
    .registers 4

    .line 288
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGenerateMuteWav(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static getAVFileInfoFromXml(Ljava/lang/String;[I)I
    .registers 2

    .line 111
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAVFileInfoFromXml(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public static getAudioAlgorithmResult(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;
    .registers 4

    .line 462
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAudioAlgorithmResult(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAudioFileInfo(Ljava/lang/String;[I)I
    .registers 2

    .line 123
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAudioFileInfo(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public static getAudioFileInfoForAllTracks(Ljava/lang/String;[[I)I
    .registers 2

    .line 160
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAudioFileInfoForAllTracks(Ljava/lang/String;[[I)I

    move-result p0

    return p0
.end method

.method public static getAudioVolume([BIII)D
    .registers 4

    .line 143
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAudioVolume([BIII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getAudioWaveData(Ljava/lang/String;IIIII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .registers 6

    .line 164
    invoke-static/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetAudioWaveData(Ljava/lang/String;IIIII)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getFileAudio(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 276
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetFileAudio(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)I

    move-result p0

    return p0
.end method

.method public static getFileType(Ljava/lang/String;)I
    .registers 1

    .line 338
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetFileType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getFrameWithHandler(JIIIZ)Landroid/graphics/Bitmap;
    .registers 15

    const/4 v0, 0x2

    .line 351
    new-array v0, v0, [I

    .line 352
    invoke-static {p0, p1, p3, p4, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetDstBitmapSize(JII[I)V

    const/4 v3, 0x0

    .line 354
    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v8, 0x0

    if-nez v4, :cond_16

    return-object v8

    .line 358
    :cond_16
    aget v3, v0, v3

    aget v6, v0, v5

    move-wide v1, p0

    move v7, p5

    move v5, v3

    move-object v3, v4

    move v4, p2

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetFrameWithHandler(JLandroid/graphics/Bitmap;IIIZ)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 361
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 362
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2e
    return-object v8

    :cond_2f
    return-object v3
.end method

.method public static getInfostickerConvertTotemplate(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 482
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetInfostickerConvertTotemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMD5FileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 81
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetMD5FileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMVAlgorithmConfigs(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 521
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 522
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 523
    invoke-static {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetMVAlgorithmConfigs(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMVAlgorithmConfigsWithMultiImage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 528
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 529
    invoke-static {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetMVAlgorithmConfigsWithMultiImage(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaData(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    invoke-static {p0, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetMetaData(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p0

    if-eqz p0, :cond_14

    .line 573
    const-string p0, "TEVideoUtils"

    const-string v0, "failed to get MetaData"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 576
    :cond_14
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 577
    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_34

    mul-int/lit8 v2, v1, 0x2

    .line 578
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_34
    return-object p0
.end method

.method public static getMusicDefaultAlgorithm(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 458
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetMusicDefaultAlgorithm(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .registers 3

    .line 168
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getVEVideoFileInfo(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 95
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVEFileInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoFrameData(Ljava/lang/String;IIIILcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;Ljava/lang/Object;)I
    .registers 7

    .line 314
    invoke-virtual {p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;->getValue()I

    move-result p5

    invoke-static/range {p0 .. p6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVideoFrameData(Ljava/lang/String;IIIIILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames(Ljava/lang/String;[IIIZLjava/lang/Object;I)I
    .registers 7

    .line 318
    invoke-static/range {p0 .. p6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVideoFrame(Ljava/lang/String;[IIIZLjava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames2(Ljava/lang/String;[IIIZLjava/lang/Object;)I
    .registers 6

    .line 322
    invoke-static/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVideoFrame2(Ljava/lang/String;[IIIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames3(Ljava/lang/String;[IIIZLjava/lang/Object;)I
    .registers 6

    .line 326
    invoke-static/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVideoFrame3(Ljava/lang/String;[IIIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoFramesMore(Ljava/lang/String;[IIIZZIZLjava/lang/Object;)I
    .registers 9

    .line 342
    invoke-static/range {p0 .. p8}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVideoFrameMore(Ljava/lang/String;[IIIZZIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoThumb(Ljava/lang/String;ILjava/lang/Object;ZIIJI)I
    .registers 9

    .line 382
    invoke-static/range {p0 .. p8}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeGetVideoThumb(Ljava/lang/String;ILjava/lang/Object;ZIIJI)I

    move-result p0

    return p0
.end method

.method public static initAREffect()I
    .registers 1

    .line 296
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeInitAREffect()I

    move-result v0

    return v0
.end method

.method public static initResampleContext(IIII)J
    .registers 4

    .line 426
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeInitResampleContext(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isByteVC110Bit([B)I
    .registers 1

    .line 224
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsByteVC110Bit([B)I

    move-result p0

    return p0
.end method

.method public static isCanImport(Ljava/lang/String;)I
    .registers 2

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, -0x64

    return p0

    .line 214
    :cond_9
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsCanImport(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isCanImportFd(IJJ)I
    .registers 5

    if-gtz p0, :cond_5

    const/16 p0, -0x64

    return p0

    .line 239
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsCanImportFd(IJJ)I

    move-result p0

    return p0
.end method

.method public static isCanTransCode(Ljava/lang/String;II)I
    .registers 3

    .line 418
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsCanTransCode(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static isCanTransCodeWithResult(Ljava/lang/String;II[Ljava/lang/String;)I
    .registers 4

    .line 422
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsCanTransCodeWithResult(Ljava/lang/String;II[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isFrameCanDrop(Ljava/nio/ByteBuffer;IZ)Z
    .registers 3

    .line 243
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsFrameCanDrop(Ljava/nio/ByteBuffer;IZ)Z

    move-result p0

    return p0
.end method

.method public static isMultiAudioTrackSupport([Ljava/lang/String;)Z
    .registers 1

    .line 85
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsMultiAudioTrackSupport([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportGLES3()Z
    .registers 1

    .line 201
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeIsSupportGLES3()Z

    move-result v0

    return v0
.end method

.method public static loadModel(ILjava/lang/String;)J
    .registers 2

    .line 148
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeLoadModel(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static mixAudio(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 284
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeMixAudio(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static mux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 73
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeMux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native nativeApplyLensNightEnhance(IIIILjava/lang/String;Ljava/lang/String;[[B[B)Z
.end method

.method public static native nativeCancelCompileProbe()V
.end method

.method private static native nativeCheckAudioFile(Ljava/lang/String;)I
.end method

.method private static native nativeCheckMVResourceIntegrity(Ljava/lang/String;)I
.end method

.method private static native nativeCheckMp3File(Ljava/lang/String;)I
.end method

.method private static native nativeClearWavSeg(Ljava/lang/String;II)I
.end method

.method public static native nativeCompileProbe(Ljava/lang/String;Ljava/lang/String;IIJJIIIJDLcom/ss/android/ttve/nativePort/TEVideoUtils$CompileProbeListener;Lcom/ss/android/ttve/nativePort/TEVideoUtils$CompileProbeListener2;I)I
.end method

.method private static native nativeConcat([Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native nativeConcatRecordFrag([Ljava/lang/String;[J[Ljava/lang/String;[JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeConverBitmapToRGBA(Landroid/graphics/Bitmap;Ljava/lang/String;)I
.end method

.method public static native nativeConverRGBAToIMG(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native nativeConvertJpegToMp4(Ljava/lang/String;Ljava/lang/String;IZ)I
.end method

.method public static native nativeCreateCurveSpeedUtils([F[F)J
.end method

.method private static native nativeCreateGetFrameHandler(Ljava/lang/String;)J
.end method

.method private static native nativeCreateRTAudioWaveformMgr(IIFI)J
.end method

.method public static native nativeCurveSpeedDestroy(J)V
.end method

.method private static native nativeDeleteRTAudioWaveformMgr(J)I
.end method

.method public static native nativeDetachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIIII)I
.end method

.method private static native nativeDetectAudioMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method private static native nativeExecuteFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I
.end method

.method private static native nativeExecuteFFmpegCommandAndDumpInfo(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandAndDumpInfoListener;)I
.end method

.method private static native nativeExtractVideo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeFindAudioSegmentStartTimeInOrigin(Ljava/lang/String;ILjava/lang/String;II)I
.end method

.method private static native nativeFindBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGenerateMuteWav(Ljava/lang/String;III)I
.end method

.method private static native nativeGetAVFileInfoFromXml(Ljava/lang/String;[I)I
.end method

.method private static native nativeGetAudioAlgorithmResult(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;
.end method

.method private static native nativeGetAudioFileInfo(Ljava/lang/String;[I)I
.end method

.method private static native nativeGetAudioFileInfoForAllTracks(Ljava/lang/String;[[I)I
.end method

.method private static native nativeGetAudioVolume([BIII)D
.end method

.method private static native nativeGetAudioWaveData(Ljava/lang/String;IIIII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
.end method

.method public static native nativeGetAveCurveSpeed(J)D
.end method

.method public static native nativeGetCurveSpeedWithSeqDelta(JJ)D
.end method

.method private static native nativeGetDstBitmapSize(JII[I)V
.end method

.method private static native nativeGetFileAudio(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation
.end method

.method private static native nativeGetFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;
.end method

.method private static native nativeGetFileType(Ljava/lang/String;)I
.end method

.method private static native nativeGetFrameWithHandler(JLandroid/graphics/Bitmap;IIIZ)I
.end method

.method private static native nativeGetInfostickerConvertTotemplate(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetMD5FileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetMVAlgorithmConfigs(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method private static native nativeGetMVAlgorithmConfigsWithMultiImage(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native nativeGetMetaData(Ljava/lang/String;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native nativeGetMusicDefaultAlgorithm(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeGetResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
.end method

.method private static native nativeGetVEFileInfo(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native nativeGetVideoFrame(Ljava/lang/String;[IIIZLjava/lang/Object;I)I
.end method

.method private static native nativeGetVideoFrame2(Ljava/lang/String;[IIIZLjava/lang/Object;)I
.end method

.method private static native nativeGetVideoFrame3(Ljava/lang/String;[IIIZLjava/lang/Object;)I
.end method

.method private static native nativeGetVideoFrameData(Ljava/lang/String;IIIIILjava/lang/Object;)I
.end method

.method private static native nativeGetVideoFrameMore(Ljava/lang/String;[IIIZZIZLjava/lang/Object;)I
.end method

.method private static native nativeGetVideoThumb(Ljava/lang/String;ILjava/lang/Object;ZIIJI)I
.end method

.method private static native nativeInitAREffect()I
.end method

.method private static native nativeInitResampleContext(IIII)J
.end method

.method private static native nativeIsByteVC110Bit([B)I
.end method

.method private static native nativeIsCanImport(Ljava/lang/String;)I
.end method

.method private static native nativeIsCanImportFd(IJJ)I
.end method

.method private static native nativeIsCanTransCode(Ljava/lang/String;II)I
.end method

.method private static native nativeIsCanTransCodeWithResult(Ljava/lang/String;II[Ljava/lang/String;)I
.end method

.method private static native nativeIsFrameCanDrop(Ljava/nio/ByteBuffer;IZ)Z
.end method

.method private static native nativeIsMultiAudioTrackSupport([Ljava/lang/String;)Z
.end method

.method private static native nativeIsSupportGLES3()Z
.end method

.method private static native nativeLoadModel(ILjava/lang/String;)J
.end method

.method public static native nativeMapSeqDeltaToTrimDelta(JJ)J
.end method

.method public static native nativeMapTrimDeltaToSeqDelta(JJ)J
.end method

.method private static native nativeMixAudio(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation
.end method

.method private static native nativeMux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativePcmResampleFilter(J[B[BII)I
.end method

.method private static native nativeProcessAudioTuning([Ljava/lang/String;[I[IFFLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeRTAudioWaveformFinish(J)I
.end method

.method private static native nativeRTAudioWaveformGetPoints(J[FII)I
.end method

.method private static native nativeRTAudioWaveformProcess(J[[FII)I
.end method

.method private static native nativeRTAudioWaveformReset(J)I
.end method

.method private static native nativeReleaseGetFrameHandler(J)V
.end method

.method private static native nativeReleaseGetFramesReader()I
.end method

.method private static native nativeReleaseResampleContext(J)V
.end method

.method private static native nativeResetModel(J)V
.end method

.method private static native nativeReverseAllIFrameVideoAndMuxAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeReverseAllIFrameVideoAndMuxAudio2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;)I
.end method

.method private static native nativeReverseAllIVideo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeReverseAllIVideo2(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;)I
.end method

.method private static native nativeSaveVideoFrames(Ljava/lang/String;[IIIZLjava/lang/String;II)I
.end method

.method public static native nativeSetCurveSpeedData(J[F[F)I
.end method

.method public static native nativeSetSeqDuration(JJ)V
.end method

.method private static native nativeSplitVideo(Ljava/lang/String;[Ljava/lang/String;[IZ)I
.end method

.method private static native nativeTransCodecAudioFile(Ljava/lang/String;IILjava/lang/String;III)I
.end method

.method private static native nativeTrimFile(Ljava/lang/String;Ljava/lang/String;[I[I)I
.end method

.method private static native nativeVoiceActivityDetection([BJII)D
.end method

.method public static pcmResampleFilter(J[B[BII)I
    .registers 6

    .line 430
    invoke-static/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativePcmResampleFilter(J[B[BII)I

    move-result p0

    return p0
.end method

.method public static processAudioTuning([Ljava/lang/String;[I[IFFLjava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 268
    invoke-static/range {p0 .. p6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeProcessAudioTuning([Ljava/lang/String;[I[IFFLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static releaseGetFrameHandler(J)V
    .registers 2

    .line 371
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeReleaseGetFrameHandler(J)V

    return-void
.end method

.method public static releaseGetFramesReader()I
    .registers 1

    .line 330
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeReleaseGetFramesReader()I

    move-result v0

    return v0
.end method

.method public static releaseResampleContext(J)V
    .registers 2

    .line 434
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeReleaseResampleContext(J)V

    return-void
.end method

.method public static resetModel(J)V
    .registers 2

    .line 156
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeResetModel(J)V

    return-void
.end method

.method public static reverseAllIVideo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 438
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeReverseAllIVideo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static reverseAllIVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;)I
    .registers 3

    .line 446
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeReverseAllIVideo2(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;)I

    move-result p0

    return p0
.end method

.method public static reverseAllIVideoAndMuxAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 442
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeReverseAllIFrameVideoAndMuxAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static reverseAllIVideoAndMuxAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;)I
    .registers 4

    .line 450
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeReverseAllIFrameVideoAndMuxAudio2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;)I

    move-result p0

    return p0
.end method

.method public static rtAudioWaveformFinish(J)I
    .registers 2

    .line 197
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeRTAudioWaveformFinish(J)I

    move-result p0

    return p0
.end method

.method public static rtAudioWaveformGetPoints(J[FII)I
    .registers 5

    .line 189
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeRTAudioWaveformGetPoints(J[FII)I

    move-result p0

    return p0
.end method

.method public static rtAudioWaveformProcess(J[[FII)I
    .registers 5

    .line 185
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeRTAudioWaveformProcess(J[[FII)I

    move-result p0

    return p0
.end method

.method public static rtAudioWaveformReset(J)I
    .registers 2

    .line 193
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeRTAudioWaveformReset(J)I

    move-result p0

    return p0
.end method

.method public static saveVideoFrames(Ljava/lang/String;[IIIZLjava/lang/String;II)I
    .registers 8

    .line 334
    invoke-static/range {p0 .. p7}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeSaveVideoFrames(Ljava/lang/String;[IIIZLjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static splitVideo(Ljava/lang/String;[Ljava/lang/String;[IZ)I
    .registers 4

    .line 77
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeSplitVideo(Ljava/lang/String;[Ljava/lang/String;[IZ)I

    move-result p0

    return p0
.end method

.method public static transCodeAudioFile(Ljava/lang/String;IILjava/lang/String;III)I
    .registers 9

    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x64

    if-eqz v0, :cond_9

    return v1

    .line 261
    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 264
    :cond_10
    invoke-static/range {p0 .. p6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeTransCodecAudioFile(Ljava/lang/String;IILjava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static trimVideoFile(Ljava/lang/String;[ILjava/lang/String;[I)I
    .registers 4

    .line 454
    invoke-static {p0, p2, p1, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeTrimFile(Ljava/lang/String;Ljava/lang/String;[I[I)I

    move-result p0

    return p0
.end method

.method public static voiceActivityDetection([BJII)D
    .registers 5

    .line 152
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeVoiceActivityDetection([BJII)D

    move-result-wide p0

    return-wide p0
.end method
