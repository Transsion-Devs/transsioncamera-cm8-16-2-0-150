.class public Lcom/ss/android/vesdk/VEUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEUtils$CompatibleMode;,
        Lcom/ss/android/vesdk/VEUtils$ImgType;,
        Lcom/ss/android/vesdk/VEUtils$Resolution;,
        Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;,
        Lcom/ss/android/vesdk/VEUtils$PcmResampleHolder;,
        Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;,
        Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;,
        Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;,
        Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;,
        Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;,
        Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;,
        Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;,
        Lcom/ss/android/vesdk/VEUtils$AVFileType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VEUtils"

.field static dumpInfoCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertBitmapToRGBA(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .registers 2

    .line 2290
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->ConverBitmapToRGBA(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static ConvertRGBAToIMG(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$Resolution;Lcom/ss/android/vesdk/VEUtils$ImgType;)I
    .registers 4

    .line 2279
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->ConverRGBAToIMG(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static ConvertRGBAToPNG(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$Resolution;)I
    .registers 4

    .line 2268
    sget-object v0, Lcom/ss/android/vesdk/VEUtils$ImgType;->Img_png:Lcom/ss/android/vesdk/VEUtils$ImgType;

    invoke-static {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VEUtils;->ConvertRGBAToIMG(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$Resolution;Lcom/ss/android/vesdk/VEUtils$ImgType;)I

    move-result p0

    return p0
.end method

.method public static addVideoRotateByCommand(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVideoRotateByCommand... inFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEUtils"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1455
    const-string v1, "\\ "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1458
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ffmpeg -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -metadata:s:v rotate="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " -c copy "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    return p0
.end method

.method public static calcTargetRes([I[I[Lcom/ss/android/vesdk/ROTATE_DEGREE;I)Lcom/ss/android/vesdk/VESize;
    .registers 18

    move/from16 v0, p3

    .line 103
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    if-eqz p1, :cond_7e

    if-eqz p0, :cond_7e

    if-nez p2, :cond_10

    goto/16 :goto_7e

    .line 108
    :cond_10
    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    goto/16 :goto_7e

    :cond_16
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move v7, v6

    move v8, v7

    :goto_1b
    if-ge v6, v2, :cond_40

    .line 118
    aget v9, p1, v6

    .line 119
    aget v10, p0, v6

    .line 121
    aget-object v11, p2, v6

    sget-object v12, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_90:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    if-eq v11, v12, :cond_2b

    sget-object v12, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_270:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    if-ne v11, v12, :cond_2e

    :cond_2b
    move v13, v10

    move v10, v9

    move v9, v13

    :cond_2e
    int-to-float v11, v9

    int-to-float v12, v10

    div-float/2addr v11, v12

    .line 126
    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 127
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 128
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_40
    if-ne v2, v3, :cond_43

    goto :goto_4a

    :cond_43
    const p0, 0x3fe38e39

    .line 134
    invoke-static {v5, p0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :goto_4a
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v5, p0

    if-ltz p0, :cond_58

    .line 138
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float v0, p0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_5f

    .line 141
    :cond_58
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float p0, v0

    div-float/2addr p0, v5

    float-to-int p0, p0

    .line 146
    :goto_5f
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v5, "ve_enable_render_encode_resolution_align4"

    invoke-virtual {v2, v5, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_71

    const/4 v2, 0x4

    goto :goto_73

    :cond_71
    const/16 v2, 0x10

    :goto_73
    add-int/2addr p0, v2

    sub-int/2addr p0, v3

    neg-int v4, v2

    and-int/2addr p0, v4

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    and-int/2addr v0, v4

    .line 153
    iput p0, v1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 154
    iput v0, v1, Lcom/ss/android/vesdk/VESize;->height:I

    :cond_7e
    :goto_7e
    return-object v1
.end method

.method public static checkAudioFile(Ljava/lang/String;)I
    .registers 1

    .line 610
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->checkAudioFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static checkMVResourceIntegrity(Ljava/lang/String;)I
    .registers 1

    .line 2134
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->checkMVResourceIntegrity(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static checkMp3File(Ljava/lang/String;)I
    .registers 1

    .line 601
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->checkMp3File(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static clearResizeImageWithEffectCache()Z
    .registers 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2544
    invoke-static {v0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->resizeImageWithEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    move-result v0

    return v0
.end method

.method public static concatJpegWithMp4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 6

    .line 2321
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    const/16 v0, 0x21

    if-ge p3, v0, :cond_17

    goto :goto_53

    .line 2324
    :cond_17
    invoke-static {p0, p2, p3, p4}, Lcom/ss/android/vesdk/VEUtils;->convertJpegToMp4(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    .line 2325
    const-string p3, "VEUtils"

    if-eqz p0, :cond_34

    .line 2326
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "concatJpegWithMp4 error, convert failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 2329
    :cond_34
    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object p0

    .line 2330
    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VEUtils;->concatVideo([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_52

    .line 2332
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "concatJpegWithMp4 error, concatVideo failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    return p0

    :cond_53
    :goto_53
    const/16 p0, -0x64

    return p0
.end method

.method private static concatRecordData(Lcom/ss/android/vesdk/VERecordData;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 2139
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_14

    .line 2142
    const-string p0, "VEUtils"

    const-string p1, "frag count is 0"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    :cond_14
    move v1, v0

    .line 2146
    new-array v0, v1, [Ljava/lang/String;

    .line 2147
    new-array v2, v1, [Ljava/lang/String;

    .line 2148
    new-array v3, v1, [J

    move v4, v1

    .line 2149
    new-array v1, v4, [J

    .line 2150
    new-array v5, v4, [F

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v4, :cond_6c

    .line 2152
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget-object v7, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 2153
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget-wide v7, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    aput-wide v7, v1, v6

    .line 2154
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget-object v7, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudio:Ljava/lang/String;

    aput-object v7, v2, v6

    .line 2155
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget-wide v7, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudioLength:J

    aput-wide v7, v3, v6

    .line 2156
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    iget v7, v7, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mSpeed:F

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 2158
    :cond_6c
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecordData;->concatVideo:Ljava/lang/String;

    .line 2159
    iput-object p2, p0, Lcom/ss/android/vesdk/VERecordData;->concatAudio:Ljava/lang/String;

    .line 2161
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecordData;->isUseMusic()Z

    move-result v4

    iget-object v8, p0, Lcom/ss/android/vesdk/VERecordData;->concatVideo:Ljava/lang/String;

    iget-object v9, p0, Lcom/ss/android/vesdk/VERecordData;->concatAudio:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->concatRecordFrag([Ljava/lang/String;[J[Ljava/lang/String;[JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static concatRecordFrag([Ljava/lang/String;[J[Ljava/lang/String;[JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    .line 2215
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/16 v3, -0x72

    if-ge v2, v0, :cond_18

    aget-object v4, p0, v2

    .line 2216
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_15

    return v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2221
    :cond_18
    array-length v0, p2

    :goto_19
    if-ge v1, v0, :cond_2c

    aget-object v2, p2, v1

    .line 2222
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2223
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_29

    return v3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 2227
    :cond_2c
    invoke-static/range {p0 .. p9}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->concatRecordFrag([Ljava/lang/String;[J[Ljava/lang/String;[JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static concatRecordFrag([Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 18

    .line 2185
    array-length v1, p0

    new-array v1, v1, [J

    const-wide/16 v2, -0x1

    .line 2186
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 2187
    array-length v5, p1

    new-array v5, v5, [J

    .line 2188
    invoke-static {v5, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v3, v5

    move v5, p3

    .line 2189
    invoke-static/range {v0 .. v9}, Lcom/ss/android/vesdk/VEUtils;->concatRecordFrag([Ljava/lang/String;[J[Ljava/lang/String;[JZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static concatVideo([Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    .line 1506
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->concat([Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static convertJpegToMp4(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 5

    .line 2302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 2305
    :cond_d
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->convertJpegToMp4(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/16 p0, -0x64

    return p0
.end method

.method public static convertVideo2Gif(Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I
    .registers 13

    .line 1920
    iget-object v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1921
    iget-object v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    const-string v2, "\\ "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    .line 1923
    :cond_14
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    iget v2, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->fps:I

    .line 1925
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->width:I

    .line 1926
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->tempPngPath:Ljava/lang/String;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 1923
    const-string v2, "ffmpeg -y -i %s -vf fps=%d,scale=%d:-1:flags=lanczos,palettegen %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1928
    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result v1

    if-eqz v1, :cond_38

    return v1

    .line 1933
    :cond_38
    iget-object v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/ss/android/vesdk/VEUtils;->getVideoFileInfo(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;

    move-result-object v1

    if-nez v1, :cond_42

    const/4 p0, -0x1

    return p0

    .line 1938
    :cond_42
    iget v1, v1, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->width:I

    .line 1941
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkWidth:I

    if-gez v3, :cond_64

    .line 1943
    iget-object v3, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkPath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ss/android/ttve/nativePort/TEImageFactory;->getImageInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;

    move-result-object v2

    int-to-float v1, v1

    const/high16 v3, 0x44070000    # 540.0f

    div-float/2addr v1, v3

    if-eqz v2, :cond_5f

    .line 1946
    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->getWidth()I

    move-result v3

    if-lez v3, :cond_5f

    .line 1947
    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEImageFactory$ImageInfo;->getWidth()I

    move-result v2

    goto :goto_61

    :cond_5f
    const/16 v2, 0x116

    :goto_61
    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v3, v2

    .line 1953
    :cond_64
    iget-object v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 1954
    iget-object v4, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->tempPngPath:Ljava/lang/String;

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->setpts:F

    .line 1958
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->fps:I

    .line 1959
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->width:I

    .line 1960
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->outputPath:Ljava/lang/String;

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v1

    .line 1954
    const-string v2, "ffmpeg -y -i %s -i %s -filter_complex setpts=%f*PTS,fps=%d,scale=%d:-1:flags=lanczos[x];[x][1:v]paletteuse %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c4

    .line 1963
    :cond_8f
    iget-object v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkPath:Ljava/lang/String;

    move v4, v3

    iget-object v3, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->tempPngPath:Ljava/lang/String;

    .line 1968
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->setpts:F

    .line 1969
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->fps:I

    .line 1970
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkXMargin:I

    .line 1971
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->waterMarkYBottomMargin:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->width:I

    .line 1972
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->outputPath:Ljava/lang/String;

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    .line 1963
    const-string v2, "ffmpeg -y -i %s -i %s -i %s -filter_complex [1:v]scale=%d:-1[o1];[0:v]setpts=%f*PTS,fps=%d[o0];[o0][o1]overlay=x=%d:y=H-h-%d,scale=%d:-1:flags=lanczos[x];[x][2:v]paletteuse %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1975
    :goto_c4
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p1

    .line 1976
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->tempPngPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return p1
.end method

.method public static convertVideo2Webp(Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I
    .registers 6

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1991
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1992
    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->startInMs:I

    if-gtz v1, :cond_12

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->durationInMs:I

    if-lez v1, :cond_33

    .line 1993
    :cond_12
    const-string v1, " -accurate_seek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    const-string v1, " -ss "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->startInMs:I

    invoke-static {v1}, Lcom/ss/android/vesdk/VEUtils;->ms2TimeFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    const-string v1, " -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->durationInMs:I

    invoke-static {v1}, Lcom/ss/android/vesdk/VEUtils;->ms2TimeFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    :cond_33
    iget-object v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1998
    iget-object v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    const-string v3, "\\ "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    .line 2000
    :cond_47
    const-string v1, " -y -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2001
    const-string v1, " -vf scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2002
    const-string v1, " -r "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -loop 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUtils$Video2ImageParam;->outputPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    return p0
.end method

.method public static createRTAudioWaveformMgr(IIIFI)Lcom/ss/android/vesdk/VERTAudioWaveformMgr;
    .registers 11

    .line 1765
    new-instance v0, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/VERTAudioWaveformMgr;-><init>(IIIFI)V

    return-object v0
.end method

.method public static cropAudio(Ljava/lang/String;Ljava/lang/String;JJ)I
    .registers 9

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1333
    const-string v2, "\\ "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1335
    :cond_13
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -i "

    .line 1336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -ss "

    .line 1338
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    .line 1339
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " -t "

    .line 1340
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p4, v1

    .line 1341
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " -c copy "

    .line 1342
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string p0, "VEUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    return p0
.end method

.method public static curVideo(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2084
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7d

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1f

    goto :goto_7d

    .line 2087
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2088
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2090
    const-string v2, "\\ "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2092
    :cond_37
    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 2093
    :goto_40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_73

    .line 2094
    const-string v1, " -ss "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    const-string v1, " -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    const-string v1, " -acodec copy -vcodec copy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_40

    .line 2099
    :cond_73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    return p0

    :cond_7d
    :goto_7d
    const/16 p0, -0x64

    return p0
.end method

.method public static cutVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2061
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2063
    const-string v2, "\\ "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2065
    :cond_18
    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    const-string p0, " -ss "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    const-string p0, " -t "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    const-string p0, " -acodec copy -vcodec copy "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    return p0
.end method

.method public static detachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIII)I
    .registers 25

    .line 1215
    sget-object v12, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;->Legacy:Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

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

    invoke-static/range {v0 .. v12}, Lcom/ss/android/vesdk/VEUtils;->detachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIIILcom/ss/android/vesdk/VEUtils$CompatibleMode;)I

    move-result p0

    return p0
.end method

.method public static detachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIIILcom/ss/android/vesdk/VEUtils$CompatibleMode;)I
    .registers 13

    .line 1243
    invoke-virtual {p12}, Ljava/lang/Enum;->ordinal()I

    move-result p12

    .line 1242
    invoke-static/range {p0 .. p12}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->detachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIIII)I

    move-result p0

    .line 1244
    const-string p1, "te_edit_get_audio_frame_ret"

    int-to-long p2, p0

    const/4 p4, 0x4

    invoke-static {p4, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1245
    invoke-static {p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return p0
.end method

.method public static detectAudioMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEAudioMetricsListener;)I
    .registers 5

    .line 1374
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEAudioMetricsCallback;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TEAudioMetricsCallback;-><init>()V

    .line 1375
    invoke-virtual {v0, p3}, Lcom/ss/android/ttve/nativePort/TEAudioMetricsCallback;->setListener(Ljava/lang/Object;)V

    .line 1376
    invoke-static {p0, p1, p2, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->detectAudioMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static dumpNV21(Ljava/lang/String;II[B)V
    .registers 10

    .line 2491
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 2492
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2493
    new-instance p2, Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p3, 0x64

    invoke-virtual {v0, p2, p3, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 2494
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 2496
    :try_start_1f
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {p3, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 2498
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 2499
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    .line 2500
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_30} :catch_37
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception v0

    move-object p0, v0

    .line 2504
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3c

    :catch_37
    move-exception v0

    move-object p0, v0

    .line 2502
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3c
    return-void
.end method

.method public static execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I
    .registers 3

    .line 1543
    sget-object v0, Lcom/ss/android/vesdk/VEUtils;->dumpInfoCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;

    if-eqz v0, :cond_c

    .line 1544
    invoke-static {p0, p1, v0}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommandAndDumpInfo(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;)I

    move-result p0

    const/4 p1, 0x0

    .line 1545
    sput-object p1, Lcom/ss/android/vesdk/VEUtils;->dumpInfoCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;

    return p0

    .line 1549
    :cond_c
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$1;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/VEUtils$1;-><init>(Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)V

    .line 1559
    invoke-static {p0, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->executeFFmpegCommand(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;)I

    move-result p0

    return p0
.end method

.method public static execFFmpegCommandAndDumpInfo(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;)I
    .registers 4

    .line 1572
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$2;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/VEUtils$2;-><init>(Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)V

    .line 1580
    new-instance p1, Lcom/ss/android/vesdk/VEUtils$3;

    invoke-direct {p1, p2}, Lcom/ss/android/vesdk/VEUtils$3;-><init>(Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;)V

    .line 1589
    invoke-static {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->executeFFmpegCommandAndDumpInfo(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandListener;Lcom/ss/android/ttve/nativePort/TEVideoUtils$ExecuteCommandAndDumpInfoListener;)I

    move-result p0

    return p0
.end method

.method public static extractVideo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractVideo... inFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEUtils"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-static {p0}, Lcom/ss/android/vesdk/VEUtils;->isCanImport(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 1472
    const-string p0, "input file is not supported!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1475
    :cond_2a
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->extractVideo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static extractVideoByCommand(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractVideoByCommand... inFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEUtils"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-static {p0}, Lcom/ss/android/vesdk/VEUtils;->isCanImport(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 1430
    const-string p0, "input file is not supported!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1433
    :cond_2a
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1434
    const-string v1, "\\ "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1436
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ffmpeg -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -vcodec copy -an "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    return p0
.end method

.method public static findAudioSegmentStartTimeInOrigin(Ljava/lang/String;ILjava/lang/String;II)I
    .registers 5

    .line 2242
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->findAudioSegmentStartTimeInOrigin(Ljava/lang/String;ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static findBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 821
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->findBestRemuxSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAVFileInfoFromXml(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;
    .registers 8

    const/16 v0, 0x25

    .line 438
    new-array v0, v0, [I

    .line 439
    invoke-static {p0, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAVFileInfoFromXml(Ljava/lang/String;[I)I

    move-result p0

    if-nez p0, :cond_a6

    .line 442
    new-instance p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;

    invoke-direct {p0}, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;-><init>()V

    const/4 v1, 0x0

    .line 443
    aget v2, v0, v1

    iput v2, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->type:I

    const/4 v2, 0x1

    .line 444
    aget v3, v0, v2

    iput v3, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->numVideoStreams:I

    .line 446
    iget-object v3, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->videoStreamInfo:Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;

    const/4 v4, 0x2

    aget v4, v0, v4

    iput v4, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->duration:I

    const/4 v4, 0x3

    .line 447
    aget v4, v0, v4

    iput v4, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->startTime:I

    const/4 v4, 0x4

    .line 448
    aget v5, v0, v4

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->width:I

    const/4 v5, 0x5

    .line 449
    aget v5, v0, v5

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->height:I

    const/4 v5, 0x6

    .line 450
    aget v5, v0, v5

    int-to-float v5, v5

    const/4 v6, 0x7

    aget v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->pixelAspectRatio:F

    const/16 v5, 0x8

    .line 451
    aget v5, v0, v5

    int-to-float v5, v5

    const/16 v6, 0x9

    aget v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->frameRate:F

    const/16 v5, 0xa

    .line 452
    aget v5, v0, v5

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->rotation:I

    const/16 v5, 0xb

    .line 453
    aget v5, v0, v5

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->pixelFormat:I

    const/16 v5, 0xc

    .line 454
    aget v5, v0, v5

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;->codecId:I

    const/16 v3, 0xd

    .line 455
    aget v3, v0, v3

    if-ne v3, v2, :cond_60

    goto :goto_61

    :cond_60
    move v2, v1

    :goto_61
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->isHdr:Z

    const/16 v2, 0xe

    .line 457
    aget v2, v0, v2

    iput v2, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->numAudioStreams:I

    const/16 v2, 0xf

    :goto_6b
    if-ge v1, v4, :cond_9b

    .line 459
    iget-object v3, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->audioStreamInfos:[Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;

    new-instance v5, Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;

    invoke-direct {v5}, Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;-><init>()V

    aput-object v5, v3, v1

    .line 460
    iget-object v3, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->audioStreamInfos:[Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;

    aget-object v3, v3, v1

    add-int/lit8 v5, v2, 0x1

    aget v6, v0, v2

    iput v6, v3, Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;->duration:I

    add-int/lit8 v6, v2, 0x2

    .line 461
    aget v5, v0, v5

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;->sampleRate:I

    add-int/lit8 v5, v2, 0x3

    .line 462
    aget v6, v0, v6

    iput v6, v3, Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;->channelCount:I

    add-int/lit8 v6, v2, 0x4

    .line 463
    aget v5, v0, v5

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;->sampleFormat:I

    add-int/lit8 v2, v2, 0x5

    .line 464
    aget v5, v0, v6

    iput v5, v3, Lcom/ss/android/vesdk/VEUtils$VEAudioStreamInfo;->codecId:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :cond_9b
    add-int/lit8 v1, v2, 0x1

    .line 467
    aget v2, v0, v2

    iput v2, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->duration:I

    .line 468
    aget v0, v0, v1

    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$VEAVFileInfo;->dataRate:I

    return-object p0

    .line 472
    :cond_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAVFileInfoFromXml error with code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEUtils"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAudioBeatAlgorithmResult(Ljava/lang/String;Ljava/lang/String;III)Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;
    .registers 7

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioBeatAlgorithmResult trimIn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trimOut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mvTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEUtils"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioAlgorithmResult(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;

    sub-int/2addr p3, p2

    .line 2043
    invoke-virtual {p0, p3, p4}, Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;->resizeBeatTrackingNum(II)I

    .line 2044
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAudioBeatAlgorithmResult time = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;->bitsTime:[F

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAudioBeatAlgorithmResult value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;->bitsValue:[I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getAudioFileInfo(Ljava/lang/String;[I)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 625
    const-string v2, "iesve_veutils_get_audio_info"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 626
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioFileInfo(Ljava/lang/String;[I)I

    move-result v0

    .line 627
    const-string v1, ".aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 628
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 629
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0xc

    .line 630
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 631
    const-string v2, "audio/aac"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 632
    const-string p0, "VEUtils"

    const-string v2, "getAudioFileInfo use Android sys to get aac duration because ffmpeg is not accurate"

    invoke-static {p0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 633
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    .line 634
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, p1, v2

    .line 636
    :cond_3f
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_42
    return v0
.end method

.method public static getAudioFileInfo(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;
    .registers 3

    const/16 v0, 0x10

    .line 577
    new-array v0, v0, [I

    .line 578
    invoke-static {p0, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioFileInfo(Ljava/lang/String;[I)I

    move-result p0

    if-nez p0, :cond_29

    .line 580
    new-instance p0, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;

    invoke-direct {p0}, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;-><init>()V

    const/4 v1, 0x0

    .line 581
    aget v1, v0, v1

    iput v1, p0, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->sampleRate:I

    const/4 v1, 0x1

    .line 582
    aget v1, v0, v1

    iput v1, p0, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->channelSize:I

    const/4 v1, 0x2

    .line 583
    aget v1, v0, v1

    iput v1, p0, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->sampleFormat:I

    const/4 v1, 0x3

    .line 584
    aget v1, v0, v1

    iput v1, p0, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->duration:I

    const/4 v1, 0x4

    .line 585
    aget v0, v0, v1

    iput v0, p0, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->bitRate:I

    return-object p0

    .line 588
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioFileInfo error with code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEUtils"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAudioFileInfoForAllTracks(Ljava/lang/String;[[I)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioFileInfoForAllTracks(Ljava/lang/String;[[I)I

    move-result p0

    return p0
.end method

.method public static getAudioFileInfoForAllTracks(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 649
    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v3, 0x0

    const/16 v4, 0x20

    aput v4, v1, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 650
    invoke-static {p0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioFileInfoForAllTracks(Ljava/lang/String;[[I)I

    move-result p0

    if-ltz p0, :cond_41

    .line 652
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_20
    if-ge v5, p0, :cond_40

    .line 654
    new-instance v6, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;

    invoke-direct {v6}, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;-><init>()V

    .line 655
    aget-object v7, v1, v5

    aget v8, v7, v3

    iput v8, v6, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->sampleRate:I

    .line 656
    aget v8, v7, v2

    iput v8, v6, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->channelSize:I

    .line 657
    aget v8, v7, v0

    iput v8, v6, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->sampleFormat:I

    const/4 v8, 0x3

    .line 658
    aget v7, v7, v8

    iput v7, v6, Lcom/ss/android/vesdk/VEUtils$VEAudioFileInfo;->duration:I

    .line 659
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_40
    return-object v4

    .line 663
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioFileInfoForAllTracks error with code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEUtils"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public static getAudioFromRecordData(Ljava/lang/String;Lcom/ss/android/vesdk/VERecordData;III)I
    .registers 11

    .line 1138
    sget-object v5, Lcom/ss/android/vesdk/VEUtils$CompatibleMode;->Legacy:Lcom/ss/android/vesdk/VEUtils$CompatibleMode;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/ss/android/vesdk/VEUtils;->getAudioFromRecordData(Ljava/lang/String;Lcom/ss/android/vesdk/VERecordData;IIILcom/ss/android/vesdk/VEUtils$CompatibleMode;)I

    move-result p0

    return p0
.end method

.method public static getAudioFromRecordData(Ljava/lang/String;Lcom/ss/android/vesdk/VERecordData;IIILcom/ss/android/vesdk/VEUtils$CompatibleMode;)I
    .registers 31

    const/16 v0, -0x64

    .line 1155
    const-string v1, "VEUtils"

    if-eqz p1, :cond_a3

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_12

    goto/16 :goto_a3

    .line 1159
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1161
    new-array v3, v2, [Ljava/lang/String;

    .line 1162
    new-array v4, v2, [J

    .line 1163
    new-array v5, v2, [J

    .line 1164
    new-array v6, v2, [J

    .line 1165
    new-array v7, v2, [J

    .line 1166
    new-array v2, v2, [F

    .line 1170
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-wide/from16 v18, v9

    :cond_33
    :goto_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_77

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    .line 1171
    iget-boolean v10, v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    if-eqz v10, :cond_33

    .line 1172
    iget-object v10, v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudio:Ljava/lang/String;

    aput-object v10, v3, v11

    .line 1173
    invoke-virtual {v9}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->getCutTrimIn()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v10, v12

    int-to-long v12, v10

    aput-wide v12, v4, v11

    .line 1174
    invoke-virtual {v9}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->getCutTrimOut()J

    move-result-wide v12

    div-long/2addr v12, v14

    long-to-int v10, v12

    int-to-long v12, v10

    aput-wide v12, v5, v11

    .line 1175
    iget v9, v9, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mSpeed:F

    aput v9, v2, v11

    .line 1176
    aget-wide v12, v4, v11

    long-to-float v10, v12

    mul-float/2addr v10, v9

    float-to-int v10, v10

    int-to-long v12, v10

    aput-wide v12, v6, v11

    .line 1177
    aget-wide v12, v5, v11

    long-to-float v10, v12

    mul-float/2addr v10, v9

    float-to-int v9, v10

    int-to-long v9, v9

    aput-wide v9, v7, v11

    .line 1178
    aget-wide v12, v6, v11

    sub-long/2addr v9, v12

    add-long v18, v18, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_77
    if-nez v11, :cond_7f

    .line 1183
    const-string v2, "getAudioFromRecordData There are no valid clips!"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1187
    :cond_7f
    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    .line 1188
    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v14

    .line 1189
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v15

    .line 1190
    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v20

    const-wide/16 v16, 0x0

    move-object/from16 v12, p0

    move/from16 v21, p2

    move/from16 v22, p3

    move/from16 v23, p4

    move-object/from16 v24, p5

    .line 1192
    invoke-static/range {v12 .. v24}, Lcom/ss/android/vesdk/VEUtils;->detachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIIILcom/ss/android/vesdk/VEUtils$CompatibleMode;)I

    move-result v0

    return v0

    .line 1156
    :cond_a3
    :goto_a3
    const-string v2, "Get AudioFromRecordData parameter error!"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getFileAudio(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1390
    invoke-static {p0, p1, p2, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getFileAudio(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)I

    move-result p0

    return p0
.end method

.method public static getFileBestStreamAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 1404
    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getFileAudio(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)I

    move-result p0

    const/4 p1, 0x0

    .line 1405
    const-string v2, "VEUtils"

    if-eqz p0, :cond_24

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileBestStreamAudio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 1409
    :cond_24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3d

    .line 1410
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v1, :cond_35

    .line 1411
    const-string p0, "getFileBestStreamAudio, find more than one stream"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    const/4 p0, 0x0

    .line 1413
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1415
    :cond_3d
    const-string p0, "getFileBestStreamAudio error, outFiles.size == 0 "

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getFileType(Ljava/lang/String;)I
    .registers 1

    .line 2343
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getFileType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInfostickerConvertTotemplate(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 2480
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getInfostickerConvertTotemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMD5FileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 221
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getMD5FileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMVAlgorithmConfigs(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/vesdk/VEMVAlgorithmConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/vesdk/VEMVAlgorithmConfig;"
        }
    .end annotation

    .line 2109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_f

    goto :goto_16

    .line 2112
    :cond_f
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getMVAlgorithmConfigs(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEMVAlgorithmConfig;

    return-object p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMVAlgorithmConfigsWithMultiImage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 3
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

    .line 2122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_f

    goto :goto_14

    .line 2125
    :cond_f
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getMVAlgorithmConfigsWithMultiImage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMetaData(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 1
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

    .line 2523
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getMetaData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getMusicDefaultAlgorithm(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 2023
    const-string v0, "VEUtils"

    if-eqz p0, :cond_30

    if-eqz p1, :cond_30

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_30

    .line 2028
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMusicDefaultAlgorithm musicPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " algorithmPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getMusicDefaultAlgorithm(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2024
    :cond_30
    :goto_30
    const-string p0, "getMusicDefaultAlgorithm failed path is wrong"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public static getMusicWaveData(Ljava/lang/String;II)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .registers 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v3, 0xa

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 698
    invoke-static/range {v0 .. v5}, Lcom/ss/android/vesdk/VEUtils;->getMusicWaveData(Ljava/lang/String;IIIII)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getMusicWaveData(Ljava/lang/String;IIII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .registers 11

    const/16 v3, 0xa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 713
    invoke-static/range {v0 .. v5}, Lcom/ss/android/vesdk/VEUtils;->getMusicWaveData(Ljava/lang/String;IIIII)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getMusicWaveData(Ljava/lang/String;IIIII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .registers 12

    if-nez p1, :cond_4

    .line 729
    sget p1, Lcom/ss/android/ttve/model/VEWaveformVisualizer;->Default:I

    :cond_4
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 732
    invoke-static/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioWaveData(Ljava/lang/String;IIIII)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_12

    return-object p1

    .line 737
    :cond_12
    invoke-virtual {p0}, Lcom/ss/android/ttve/model/VEMusicWaveBean;->getWaveBean()[F

    move-result-object p2

    .line 738
    array-length p2, p2

    if-nez p2, :cond_1a

    return-object p1

    :cond_1a
    return-object p0
.end method

.method public static getQREncodedData(Ljava/lang/String;IILcom/ss/android/vesdk/VEListener$VEQrImageListener;)I
    .registers 5

    .line 1622
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$5;

    invoke-direct {v0, p3}, Lcom/ss/android/vesdk/VEUtils$5;-><init>(Lcom/ss/android/vesdk/VEListener$VEQrImageListener;)V

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->getQREncodedData(Ljava/lang/String;IILjava/util/Map;Lcom/ss/android/ttve/nativePort/TEEffectUtils$QrImageListener;)I

    move-result p0

    return p0
.end method

.method public static getQREncodedData(Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEImageListener;)I
    .registers 3

    .line 1602
    new-instance v0, Lcom/ss/android/vesdk/VEUtils$4;

    invoke-direct {v0, p1}, Lcom/ss/android/vesdk/VEUtils$4;-><init>(Lcom/ss/android/vesdk/VEListener$VEImageListener;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->getQREncodedData(Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;)I

    move-result p0

    return p0
.end method

.method public static getResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;
    .registers 4

    .line 756
    array-length v0, p0

    if-nez v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 760
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getResampleMusicWaveData([FII)Lcom/ss/android/ttve/model/VEMusicWaveBean;

    move-result-object p0

    return-object p0
.end method

.method public static getVEVideoFileInfo(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;
    .registers 2

    .line 309
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVEVideoFileInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;

    if-nez p0, :cond_10

    .line 311
    const-string p0, "VEUtils"

    const-string v0, "getVideoFileInfo error!!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_10
    return-object p0
.end method

.method public static getVideoEncodeTypeByID(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2c

    const/16 v0, 0xd

    if-eq p0, v0, :cond_29

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_26

    const/16 v0, 0x8c

    if-eq p0, v0, :cond_23

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_20

    const/16 v0, 0xae

    if-eq p0, v0, :cond_1d

    .line 509
    const-string p0, "unknown"

    return-object p0

    .line 497
    :cond_1d
    const-string p0, "bytevc1"

    return-object p0

    .line 506
    :cond_20
    const-string p0, "vp9"

    return-object p0

    .line 503
    :cond_23
    const-string p0, "vp8"

    return-object p0

    .line 494
    :cond_26
    const-string p0, "h264"

    return-object p0

    .line 491
    :cond_29
    const-string p0, "mpeg4"

    return-object p0

    .line 488
    :cond_2c
    const-string p0, "h263"

    return-object p0

    .line 500
    :cond_2f
    const-string p0, "mpeg2"

    return-object p0
.end method

.method public static getVideoFileInfo(Ljava/lang/String;[I)I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    const-string v0, "iesve_veutils_get_video_info"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 349
    invoke-static {p0, v2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;

    if-nez p0, :cond_18

    .line 351
    const-string p0, "VEUtils"

    const-string p1, "getVideoFileInfo2 error!!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 355
    :cond_18
    array-length v0, p1

    const/16 v2, 0xc

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5a

    goto :goto_58

    :pswitch_24
    const/16 v0, 0xb

    .line 358
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->bitDepth:I

    aput v3, p1, v0

    :pswitch_2a
    const/16 v0, 0xa

    .line 360
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->maxDuration:I

    aput v3, p1, v0

    :pswitch_30
    const/16 v0, 0x9

    .line 362
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->keyFrameCount:I

    aput v3, p1, v0

    :pswitch_36
    const/16 v0, 0x8

    .line 364
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->codec:I

    aput v3, p1, v0

    :pswitch_3c
    const/4 v0, 0x7

    .line 366
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->fps:I

    aput v3, p1, v0

    :pswitch_41
    const/4 v0, 0x6

    .line 368
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->bitrate:I

    aput v3, p1, v0

    :pswitch_46
    const/4 v0, 0x3

    .line 372
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->duration:I

    aput v3, p1, v0

    :pswitch_4b
    const/4 v0, 0x2

    .line 374
    iget v3, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->rotation:I

    aput v3, p1, v0

    .line 376
    :pswitch_50
    iget v0, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->height:I

    aput v0, p1, v1

    .line 378
    :pswitch_54
    iget p0, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->width:I

    aput p0, p1, v2

    :goto_58
    return v2

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_50
        :pswitch_4b
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method

.method public static getVideoFileInfo(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;
    .registers 3

    const/4 v0, 0x0

    .line 326
    invoke-static {p0, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;

    if-nez p0, :cond_11

    .line 328
    const-string p0, "VEUtils"

    const-string v1, "getVideoFileInfo error!!!"

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_11
    return-object p0
.end method

.method public static getVideoFrameData(Ljava/lang/String;IIIILcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;Lcom/ss/android/vesdk/VEFrameDataAvailableListerner;)I
    .registers 8

    move-object v0, p6

    .line 1043
    new-instance p6, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {p6}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    .line 1044
    invoke-virtual {p6, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setFrameDataListener(Ljava/lang/Object;)V

    .line 1046
    invoke-static/range {p0 .. p6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFrameData(Ljava/lang/String;IIIILcom/ss/android/ttve/nativePort/TEVideoUtils$FrameDataType;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I
    .registers 13

    .line 941
    sget-object v6, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/ss/android/vesdk/VEUtils;->getVideoFrames(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;Lcom/ss/android/vesdk/ROTATE_DEGREE;)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;Lcom/ss/android/vesdk/ROTATE_DEGREE;)I
    .registers 10

    move-object v0, p5

    .line 959
    new-instance p5, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    .line 960
    invoke-virtual {p5, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 961
    const-string v2, "iesve_veutils_extract_video_frames"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 963
    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    invoke-static/range {p0 .. p6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFrames(Ljava/lang/String;[IIIZLjava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames(Ljava/lang/String;[IIIZZIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I
    .registers 9

    .line 1074
    invoke-static/range {p0 .. p8}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFramesMore(Ljava/lang/String;[IIIZZIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames(Ljava/lang/String;[ILcom/ss/android/vesdk/VEFrameAvailableListener;)I
    .registers 10

    .line 836
    new-instance v5, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {v5}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    .line 837
    invoke-virtual {v5, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 838
    const-string v1, "iesve_veutils_extract_video_frames"

    invoke-static {v1, p2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 840
    sget-object p2, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFrames(Ljava/lang/String;[IIIZLjava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames2(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I
    .registers 9

    move-object v0, p5

    .line 981
    new-instance p5, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    .line 982
    invoke-virtual {p5, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 983
    const-string v2, "iesve_veutils_extract_video_frames"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 985
    invoke-static/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFrames2(Ljava/lang/String;[IIIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoFrames3(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I
    .registers 9

    move-object v0, p5

    .line 1012
    new-instance p5, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    .line 1013
    invoke-virtual {p5, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1014
    const-string v2, "iesve_veutils_extract_video_frames"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1016
    invoke-static/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFrames3(Ljava/lang/String;[IIIZLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getVideoReverseSize(Ljava/lang/String;)J
    .registers 5

    .line 1739
    invoke-static {p0}, Lcom/ss/android/vesdk/VEUtils;->getVideoFileInfo(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;

    move-result-object p0

    if-nez p0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1745
    :cond_9
    iget p0, p0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->duration:I

    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    const-wide/16 v2, 0x1388

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    .line 1746
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getVideoThumb(Lcom/ss/android/vesdk/VERecordData;IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;)I
    .registers 17

    .line 904
    sget-object v0, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 905
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, ""

    const/4 v2, 0x0

    move v3, v2

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    .line 906
    iget-boolean v5, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    if-eqz v5, :cond_e

    .line 907
    iget-object v1, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    .line 908
    iget-object v0, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mRotate:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 909
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->getCutTrimOut()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->getCutTrimIn()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v3, v5

    .line 910
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->getCutTrimIn()J

    move-result-wide v4

    div-long/2addr v4, v7

    long-to-int v4, v4

    sub-int v5, p1, v2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lt p1, v2, :cond_46

    add-int v5, v2, v3

    if-gt p1, v5, :cond_46

    move v3, v4

    :cond_43
    move-object v10, v0

    move-object v4, v1

    goto :goto_49

    :cond_46
    add-int/2addr v2, v3

    move v3, v4

    goto :goto_e

    .line 919
    :goto_49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_60

    if-gez v3, :cond_52

    goto :goto_60

    .line 924
    :cond_52
    filled-new-array {v3}, [I

    move-result-object v5

    move v6, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v4 .. v10}, Lcom/ss/android/vesdk/VEUtils;->getVideoFrames(Ljava/lang/String;[IIIZLcom/ss/android/vesdk/VEFrameAvailableListener;Lcom/ss/android/vesdk/ROTATE_DEGREE;)I

    move-result p0

    return p0

    .line 920
    :cond_60
    :goto_60
    const-string p0, "VEUtils"

    const-string p1, "Timestamp is not in the valid time range!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public static getVideoThumb(Ljava/lang/String;ILcom/ss/android/vesdk/VEFrameAvailableListener;ZIIJI)I
    .registers 12

    move-object v0, p2

    .line 1099
    new-instance p2, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;

    invoke-direct {p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;-><init>()V

    .line 1100
    invoke-virtual {p2, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtilsCallback;->setListener(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1101
    const-string v2, "iesve_veutils_extract_video_thumb"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1103
    invoke-static/range {p0 .. p8}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoThumb(Ljava/lang/String;ILjava/lang/Object;ZIIJI)I

    move-result p0

    return p0
.end method

.method public static initAREffect()I
    .registers 1

    .line 2514
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->initAREffect()I

    move-result v0

    return v0
.end method

.method public static isByteVC110Bit(Ljava/lang/String;)I
    .registers 6

    .line 794
    const-string v0, "csd-0"

    :try_start_2
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 795
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 796
    :goto_b
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge p0, v2, :cond_41

    .line 797
    invoke-virtual {v1, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 798
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 799
    const-string v4, "video/hevc"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 800
    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 801
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 802
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 803
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 804
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isByteVC110Bit([B)I

    move-result p0

    return p0

    :cond_3e
    add-int/lit8 p0, p0, 0x1

    goto :goto_b

    .line 807
    :cond_41
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p0

    .line 809
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_49
    const/16 p0, -0xc8

    return p0
.end method

.method public static isCanImport(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 781
    const-string v2, "iesve_veutils_if_video_support_import"

    invoke-static {v2, v0, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 782
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isCanImport(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isCanTransCode(Ljava/lang/String;II)I
    .registers 4

    .line 1654
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isCanTransCode(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1c

    .line 1656
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCanTransCode not supported!  path="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "VEUtils"

    invoke-static {p2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return p1
.end method

.method public static isCanTransCodeWithResult(Ljava/lang/String;II[Ljava/lang/String;)I
    .registers 4

    .line 1684
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isCanTransCodeWithResult(Ljava/lang/String;II[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1c

    .line 1686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isCanTransCodeWithResult not supported!  path="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "VEUtils"

    invoke-static {p2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return p1
.end method

.method public static isMultiAudioTrackSupport([Ljava/lang/String;)Z
    .registers 1

    .line 231
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isMultiAudioTrackSupport([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSupportGLES3()Z
    .registers 1

    .line 770
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->isSupportGLES3()Z

    move-result v0

    return v0
.end method

.method public static isSupportHDRCapability()Z
    .registers 8

    const/4 v0, 0x0

    .line 2445
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 2446
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    const-string v3, "VEUtils"

    if-ne v1, v2, :cond_24

    .line 2447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay() returned error 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_24
    const/4 v2, 0x2

    .line 2451
    new-array v4, v2, [I

    const/4 v5, 0x1

    .line 2453
    invoke-static {v1, v4, v0, v4, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v4

    if-eqz v4, :cond_54

    const/16 v4, 0x3055

    .line 2458
    invoke-static {v1, v4}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v4

    .line 2459
    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2461
    const-string v1, "EGL_KHR_gl_colorspace"

    const-string v6, "EGL_EXT_gl_colorspace_bt2020_pq"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    move v6, v0

    :goto_40
    if-ge v6, v2, :cond_4e

    .line 2466
    aget-object v7, v1, v6

    .line 2467
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4b

    return v0

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 2470
    :cond_4e
    const-string v0, "This device supports the HDR capability"

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 2454
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize() returned error 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static mixAudio(Ljava/util/ArrayList;Ljava/lang/String;Lcom/ss/android/vesdk/VEMixAudioListener;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ss/android/vesdk/VEMixAudioListener;",
            ")I"
        }
    .end annotation

    .line 1489
    new-instance v0, Lcom/ss/android/ttve/nativePort/TEAudioUtilsCallback;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TEAudioUtilsCallback;-><init>()V

    .line 1490
    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/nativePort/TEAudioUtilsCallback;->setListener(Ljava/lang/Object;)V

    .line 1492
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->mixAudio(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)I

    move-result p0

    .line 1493
    const-string p1, "te_composition_audio_ret"

    int-to-long v0, p0

    const/4 p2, 0x4

    invoke-static {p2, p1, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1494
    invoke-static {p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return p0
.end method

.method private static ms2TimeFormat(I)Ljava/lang/String;
    .registers 11

    .line 2008
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    .line 2010
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 2011
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2012
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2013
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v4, v5, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2008
    const-string v1, "%02d:%02d:%02d.%03d"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3c

    .line 189
    :cond_13
    const-string v0, "iesve_veutils_combine_audio_and_video_start"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 190
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->mux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 191
    new-instance p1, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    if-nez p0, :cond_28

    .line 192
    const-string p2, "succ"

    goto :goto_2a

    :cond_28
    const-string p2, "fail"

    :goto_2a
    const-string v0, "iesve_veutils_combine_audio_and_video_finish_result"

    invoke-virtual {p1, v0, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 193
    const-string p2, "iesve_veutils_combine_audio_and_video_finish_reason"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 194
    const-string p2, "iesve_veutils_combine_audio_and_video_finish"

    invoke-static {p2, v2, p1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    return p0

    :cond_3c
    :goto_3c
    const/16 p0, -0x64

    return p0
.end method

.method public static processAudioTuning([Ljava/lang/String;[I[IFFLjava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 1361
    invoke-static/range {p0 .. p6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->processAudioTuning([Ljava/lang/String;[I[IFFLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static releaseGetFramesReader()I
    .registers 1

    .line 1026
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->releaseGetFramesReader()I

    move-result v0

    return v0
.end method

.method public static resizeImageWithEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2534
    invoke-static {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->resizeImageWithEffect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    move-result p0

    return p0
.end method

.method public static reverseAudio(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1700
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1701
    const-string v1, "\\ "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1703
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ffmpeg -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -af areverse "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    return p0
.end method

.method public static reverseAudioSafe(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 1719
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1720
    const-string v1, "\\ "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1723
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ffmpeg -i "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    if-nez p0, :cond_58

    .line 1726
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -af areverse "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    :cond_58
    return p0
.end method

.method public static saveBitmapToPath(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .registers 4

    const/16 v0, 0x64

    .line 2389
    invoke-static {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VEUtils;->saveBitmapToPath(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public static saveBitmapToPath(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V
    .registers 9

    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "saving"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VEUtils"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2408
    :try_start_1c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_61
    .catchall {:try_start_1c .. :try_end_21} :catchall_5e

    .line 2409
    :try_start_21
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_5c
    .catchall {:try_start_21 .. :try_end_26} :catchall_5a

    .line 2410
    :try_start_26
    invoke-virtual {p0, p2, p3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2411
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_57
    .catchall {:try_start_26 .. :try_end_2c} :catchall_54

    .line 2419
    :try_start_2c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 2422
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2427
    :goto_34
    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 2430
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2434
    :goto_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " saved!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_54
    move-exception p0

    move-object v0, v4

    goto :goto_80

    :catch_57
    move-exception p0

    move-object v0, v4

    goto :goto_63

    :catchall_5a
    move-exception p0

    goto :goto_80

    :catch_5c
    move-exception p0

    goto :goto_63

    :catchall_5e
    move-exception p0

    move-object v3, v0

    goto :goto_80

    :catch_61
    move-exception p0

    move-object v3, v0

    .line 2413
    :goto_63
    :try_start_63
    const-string p1, "Error when saving bitmap..."

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_5a

    if-eqz v0, :cond_75

    .line 2419
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_75

    :catch_71
    move-exception p0

    .line 2422
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_75
    :goto_75
    if-eqz v3, :cond_7f

    .line 2427
    :try_start_77
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_7f

    :catch_7b
    move-exception p0

    .line 2430
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7f
    :goto_7f
    return-void

    :goto_80
    if-eqz v0, :cond_8a

    .line 2419
    :try_start_82
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    .line 2422
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8a
    :goto_8a
    if-eqz v3, :cond_94

    .line 2427
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception p1

    .line 2430
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2432
    :cond_94
    :goto_94
    throw p0
.end method

.method public static saveCompressedImage(Ljava/lang/String;Ljava/lang/String;III)I
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_8

    if-lez p3, :cond_8

    move v8, v0

    goto :goto_9

    :cond_8
    move v8, v1

    .line 2360
    :goto_9
    sget-object v5, Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;->INVALID:Lcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v2 .. v8}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmap(Ljava/lang/String;IILcom/ss/android/vesdk/utils/BitmapLoader$ImageRotation;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2361
    const-string p2, "VEUtils"

    if-eqz p0, :cond_4d

    if-nez p4, :cond_2e

    .line 2364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0.png"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2365
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_43

    :cond_2e
    if-ne p4, v1, :cond_47

    .line 2367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0.jpeg"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2368
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2373
    :goto_43
    invoke-static {p0, p1, p2}, Lcom/ss/android/vesdk/VEUtils;->saveBitmapToPath(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    return v0

    .line 2370
    :cond_47
    const-string p0, "Target format is wrongly configured, generate compressed image failed!"

    invoke-static {p2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2375
    :cond_4d
    const-string p0, "Bitmap is empty, generate compressed image failed!"

    invoke-static {p2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static saveVideoFrames(Ljava/lang/String;[IIIZLjava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move p6, p7

    const/16 p7, 0x46

    invoke-static/range {p0 .. p7}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->saveVideoFrames(Ljava/lang/String;[IIIZLjava/lang/String;II)I

    move-result p0

    .line 882
    const-string p1, "te_edit_save_frame_without_effect_ret"

    int-to-long p2, p0

    const/4 p4, 0x4

    invoke-static {p4, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 883
    invoke-static {p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return p0
.end method

.method public static saveVideoFrames(Ljava/lang/String;[IIIZLjava/lang/String;Ljava/lang/String;II)I
    .registers 20

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v3 .. v10}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->saveVideoFrames(Ljava/lang/String;[IIIZLjava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_43

    .line 868
    invoke-static {p0}, Lcom/ss/android/vesdk/VEUtils;->getFileType(Ljava/lang/String;)I

    move-result p4

    sget-object v2, Lcom/ss/android/vesdk/VEUtils$AVFileType;->type_Image:Lcom/ss/android/vesdk/VEUtils$AVFileType;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEUtils$AVFileType;->getValue()I

    move-result v2

    if-ne p4, v2, :cond_43

    .line 869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move/from16 v9, p7

    invoke-static {p0, p1, p2, p3, v9}, Lcom/ss/android/vesdk/VEUtils;->saveCompressedImage(Ljava/lang/String;Ljava/lang/String;III)I

    move-result p1

    .line 871
    :cond_43
    const-string p0, "te_edit_save_frame_without_effect_ret"

    int-to-long p2, p1

    const/4 p4, 0x4

    invoke-static {p4, p0, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 872
    invoke-static {p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return p1
.end method

.method public static setVEExecFFmpegAndDumpInfoCommandCallback(Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;)V
    .registers 1

    .line 88
    sput-object p0, Lcom/ss/android/vesdk/VEUtils;->dumpInfoCallback:Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandAndDumpInfoCallback;

    return-void
.end method

.method public static splitVideo(Ljava/lang/String;[Ljava/lang/String;[IZ)I
    .registers 4

    .line 211
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->splitVideo(Ljava/lang/String;[Ljava/lang/String;[IZ)I

    move-result p0

    return p0
.end method

.method public static transCodeAudio(Ljava/lang/String;IILjava/lang/String;II)I
    .registers 13

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1283
    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->transCodeAudioFile(Ljava/lang/String;IILjava/lang/String;III)I

    move-result p0

    .line 1284
    const-string p1, "te_edit_get_audio_frame_ret"

    int-to-long p2, p0

    const/4 p4, 0x4

    invoke-static {p4, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1285
    invoke-static {p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return p0
.end method

.method public static transCodeAudio(Ljava/lang/String;Ljava/lang/String;FIII)I
    .registers 18

    .line 1263
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x1

    new-array v2, p1, [J

    const/4 v0, 0x0

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v0

    move-wide v4, v3

    new-array v3, p1, [J

    aput-wide v4, v3, v0

    new-array v8, p1, [F

    aput p2, v8, v0

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->detachAudioFromVideos(Ljava/lang/String;[Ljava/lang/String;[J[JJJ[FIII)I

    move-result p0

    .line 1265
    const-string p1, "te_edit_get_audio_frame_ret"

    int-to-long p2, p0

    const/4 v0, 0x4

    invoke-static {v0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1266
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return p0
.end method

.method public static transCodeAudio(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 11

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1124
    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->transCodeAudioFile(Ljava/lang/String;IILjava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public static transCodeAudio(Ljava/lang/String;Ljava/lang/String;III)I
    .registers 8

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    const-string v1, "ffmpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1304
    const-string v2, "\\ "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1306
    :cond_18
    const-string v2, " -i "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, -0x1

    if-eq p2, p0, :cond_2b

    .line 1308
    const-string v2, " -ac "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2b
    if-eq p3, p0, :cond_35

    .line 1311
    const-string p2, " -ab "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_35
    if-eq p4, p0, :cond_3f

    .line 1314
    const-string p0, " -ar "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1316
    :cond_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    const-string p0, "VEUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEUtils;->execFFmpegCommand(Ljava/lang/String;Lcom/ss/android/vesdk/VEUtils$VEExecFFmpegCommandCallback;)I

    move-result p0

    return p0
.end method

.method public static trimToDraft(Ljava/lang/String;[ILjava/lang/String;[I)I
    .registers 4

    .line 172
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->trimVideoFile(Ljava/lang/String;[ILjava/lang/String;[I)I

    move-result p0

    return p0
.end method
