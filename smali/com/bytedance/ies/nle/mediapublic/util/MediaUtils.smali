.class public final Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUDIO_INFO_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x10e

.field private static final DEGREE_90:I = 0x5a

.field public static final EXPECT_HEIGHT_VALUE:I = 0x780

.field public static final EXPECT_WIDTH_VALUE:I = 0x780

.field private static final HEIC_HEAD:[B

.field private static final IMAGE_BMP_HEAD:[B

.field private static final IMAGE_GIF87A_HEAD:[B

.field private static final IMAGE_GIF89A_HEAD:[B

.field private static final IMAGE_HEADERS:[[B

.field private static final IMAGE_JPEG_HEAD:[B

.field private static final IMAGE_PNG_HEAD:[B

.field public static final INSTANCE:Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;

.field private static final NLETempFolder:Ljava/lang/String; = "NLETemp"

.field private static final REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final RIFF_HEAD:[B

.field private static final TAG:Ljava/lang/String; = "MediaUtil"

.field private static final WEBP_HEAD:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;

    .line 149
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;

    .line 150
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->AUDIO_INFO_CACHE:Landroid/util/LruCache;

    const/4 v0, 0x4

    .line 163
    new-array v1, v0, [B

    fill-array-data v1, :array_5c

    sput-object v1, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->RIFF_HEAD:[B

    .line 164
    new-array v1, v0, [B

    fill-array-data v1, :array_62

    sput-object v1, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->WEBP_HEAD:[B

    .line 165
    new-array v0, v0, [B

    fill-array-data v0, :array_68

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->HEIC_HEAD:[B

    const/4 v0, 0x2

    .line 167
    new-array v1, v0, [B

    fill-array-data v1, :array_6e

    sput-object v1, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->IMAGE_JPEG_HEAD:[B

    const/16 v2, 0x8

    .line 176
    new-array v2, v2, [B

    fill-array-data v2, :array_74

    .line 168
    sput-object v2, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->IMAGE_PNG_HEAD:[B

    const/4 v3, 0x6

    .line 179
    new-array v4, v3, [B

    fill-array-data v4, :array_7c

    sput-object v4, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->IMAGE_GIF87A_HEAD:[B

    .line 182
    new-array v3, v3, [B

    fill-array-data v3, :array_84

    sput-object v3, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->IMAGE_GIF89A_HEAD:[B

    .line 185
    new-array v0, v0, [B

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->IMAGE_BMP_HEAD:[B

    .line 192
    filled-new-array {v1, v2, v4, v3, v0}, [[B

    move-result-object v0

    .line 187
    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->IMAGE_HEADERS:[[B

    return-void

    nop

    :array_5c
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_62
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_68
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_6e
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    nop

    :array_74
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_7c
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x37t
        0x61t
    .end array-data

    nop

    :array_84
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
    .end array-data

    nop

    :array_8c
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAUDIO_INFO_CACHE$p()Landroid/util/LruCache;
    .registers 1

    .line 147
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->AUDIO_INFO_CACHE:Landroid/util/LruCache;

    return-object v0
.end method

.method public static final convertImageToJpeg(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "imagePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 456
    :cond_18
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 457
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 458
    :try_start_24
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_3a

    .line 460
    :try_start_29
    invoke-static {p1, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_30
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2e

    const/4 p0, 0x1

    goto :goto_31

    :catchall_2e
    move-exception p0

    goto :goto_3c

    :catch_30
    const/4 p0, 0x0

    .line 464
    :goto_31
    :try_start_31
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_2e

    .line 458
    :try_start_33
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3a

    .line 457
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p0

    :catchall_3a
    move-exception p0

    goto :goto_42

    .line 458
    :goto_3c
    :try_start_3c
    throw p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v1

    :try_start_3e
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_3a

    .line 457
    :goto_42
    :try_start_42
    throw p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 467
    :cond_48
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 468
    :try_start_4d
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 469
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    .line 470
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 471
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_62

    .line 467
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return p1

    :catchall_62
    move-exception p0

    :try_start_63
    throw p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final convertJpegToMp4WithVEEditor(Ljava/lang/String;Ljava/lang/String;IIII)I
    .registers 27

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    .line 484
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_13

    return v4

    .line 486
    :cond_13
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java.io.tmpdir"

    const-string v7, "."

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "NLETemp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_42

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 488
    :cond_42
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 489
    invoke-virtual {v6, v3}, Lcom/ss/android/vesdk/VEEditor;->setDestroyVersion(Z)I

    const/4 v6, 0x1

    .line 492
    new-array v8, v6, [Ljava/lang/String;

    .line 493
    new-array v9, v6, [I

    .line 494
    new-array v10, v6, [I

    .line 495
    new-array v15, v6, [F

    .line 498
    aput-object v0, v8, v3

    .line 499
    aput v3, v9, v3

    .line 500
    aput p3, v10, v3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 501
    aput v0, v15, v3

    .line 504
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    invoke-direct {v0}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;-><init>()V

    .line 508
    iput v1, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    .line 509
    iput v2, v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    .line 511
    new-array v6, v6, [Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    .line 513
    aput-object v0, v6, v3

    .line 515
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/ss/android/vesdk/VEEditor;

    .line 520
    sget-object v17, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 521
    sget-object v18, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->CENTER_IN_PARENT:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 522
    sget-object v19, Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;->CENTER:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v6

    .line 515
    invoke-virtual/range {v7 .. v19}, Lcom/ss/android/vesdk/VEEditor;->initWithCanvas([Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;)I

    move-result v0

    if-eqz v0, :cond_8e

    return v0

    .line 525
    :cond_8e
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 v6, 0x2

    invoke-direct {v0, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    const/4 v6, 0x4

    .line 527
    invoke-virtual {v0, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    move/from16 v6, p6

    .line 528
    invoke-virtual {v0, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 529
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v9

    .line 533
    new-instance v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;-><init>()V

    .line 534
    sget-object v1, Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_AAC:Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->setCodec(Lcom/ss/android/vesdk/VEAudioEncodeSettings$ENCODE_STANDARD;)Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings$Builder;->Build()Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    move-result-object v10

    .line 536
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/ss/android/vesdk/VEEditor;

    .line 541
    new-instance v11, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$convertJpegToMp4WithVEEditor$isSuccess$1;

    invoke-direct {v11, v5}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$convertJpegToMp4WithVEEditor$isSuccess$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v8, 0x0

    move-object/from16 v7, p2

    .line 536
    invoke-virtual/range {v6 .. v11}, Lcom/ss/android/vesdk/VEEditor;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z

    move-result v0

    if-eqz v0, :cond_ca

    return v3

    :cond_ca
    return v4
.end method

.method public static final isJpeg(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 439
    :cond_12
    :try_start_12
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->IMAGE_JPEG_HEAD:[B

    array-length v2, v0

    new-array v2, v2, [B

    .line 440
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_2f

    .line 441
    :try_start_1c
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_28

    const/4 p0, 0x0

    .line 440
    :try_start_20
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 444
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_2f

    return p0

    :catchall_28
    move-exception p0

    .line 440
    :try_start_29
    throw p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    :try_start_2b
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_2f

    :catch_2f
    return v1
.end method


# virtual methods
.method public final convertJpegToMp4(Ljava/lang/String;Ljava/lang/String;IIII)I
    .registers 8

    const-string v0, "jpegPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mp4Path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->convertJpegToMp4WithVEEditor(Ljava/lang/String;Ljava/lang/String;IIII)I

    move-result p0

    return p0
.end method

.method public final getAudioFileInfo(Ljava/lang/String;)Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;
    .registers 3

    const-string p0, "strInVideo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x10

    .line 377
    new-array p0, p0, [I

    .line 378
    invoke-static {p1, p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioFileInfo(Ljava/lang/String;[I)I

    move-result p1

    if-nez p1, :cond_2d

    .line 380
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;

    invoke-direct {p1}, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;-><init>()V

    const/4 v0, 0x0

    .line 381
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->setSampleRate(I)V

    const/4 v0, 0x1

    .line 382
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->setChannelSize(I)V

    const/4 v0, 0x2

    .line 383
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->setSampleFormat(I)V

    const/4 v0, 0x3

    .line 384
    aget p0, p0, v0

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEAudioFileInfo;->setDuration(I)V

    return-object p1

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAudioMetaDataInfo(Ljava/lang/String;)Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;
    .registers 3

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$getAudioMetaDataInfo$getAudioInfo$1;-><init>(Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->AUDIO_INFO_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;

    if-nez p1, :cond_1b

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/util/AudioMetaDataInfo;

    return-object p0

    :cond_1b
    return-object p1
.end method

.method public final getExifOrientation(Ljava/lang/String;)I
    .registers 4

    const-string p0, "filepath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    goto :goto_18

    .line 222
    :cond_d
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_19

    :goto_18
    return v0

    .line 228
    :cond_19
    :try_start_19
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    const/4 p0, 0x0

    :goto_20
    const/4 p1, -0x1

    if-nez p0, :cond_24

    goto :goto_2a

    .line 233
    :cond_24
    const-string v1, "Orientation"

    invoke-virtual {p0, v1, p1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    :goto_2a
    const/4 p0, 0x3

    if-eq p1, p0, :cond_3b

    const/4 p0, 0x6

    if-eq p1, p0, :cond_38

    const/16 p0, 0x8

    if-eq p1, p0, :cond_35

    goto :goto_3d

    :cond_35
    const/16 v0, 0x10e

    goto :goto_3d

    :cond_38
    const/16 v0, 0x5a

    goto :goto_3d

    :cond_3b
    const/16 v0, 0xb4

    :goto_3d
    return v0
.end method

.method public final declared-synchronized getRealVideoMetaDataInfo(Ljava/lang/String;)Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;
    .registers 17

    move-object/from16 v1, p1

    monitor-enter p0

    :try_start_3
    const-string v0, "path"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;

    if-nez v0, :cond_119

    .line 286
    invoke-virtual/range {p0 .. p1}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 287
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 288
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 290
    invoke-virtual/range {p0 .. p1}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v4

    .line 291
    new-instance v2, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;

    move-object v3, v2

    .line 293
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 294
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 297
    const-string v10, "image"

    const/16 v11, 0x1e0

    const/4 v12, 0x0

    const/16 v5, 0xfa0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v14, v3

    move v3, v0

    move-object v0, v14

    .line 291
    invoke-direct/range {v0 .. v12}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3f
    move-object/from16 v1, p1

    goto/16 :goto_10f

    :catchall_43
    move-exception v0

    goto/16 :goto_11b

    .line 300
    :cond_46
    invoke-static/range {p1 .. p1}, Lcom/ss/android/vesdk/VEUtils;->getVideoFileInfo(Ljava/lang/String;)Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 301
    iget v1, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->width:I

    if-lez v1, :cond_7b

    iget v1, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->height:I

    if-lez v1, :cond_7b

    iget v1, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->maxDuration:I

    if-lez v1, :cond_7b

    .line 303
    new-instance v1, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;

    .line 305
    iget v2, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->width:I

    .line 306
    iget v3, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->height:I

    .line 307
    iget v4, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->rotation:I

    .line 308
    iget v5, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->maxDuration:I

    .line 309
    iget v6, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->bitrate:I

    .line 310
    iget v7, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->fps:I

    .line 311
    iget v8, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->codec:I

    .line 312
    iget v9, v0, Lcom/ss/android/vesdk/VEUtils$VEVideoFileInfo;->duration:I

    .line 313
    invoke-static {v8}, Lcom/ss/android/vesdk/VEUtils;->getVideoEncodeTypeByID(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "getVideoEncodeTypeByID(veInfo.codec)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    move-object/from16 v1, p1

    .line 303
    invoke-direct/range {v0 .. v10}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIILjava/lang/String;)V

    goto/16 :goto_10f

    :cond_7b
    move-object/from16 v1, p1

    .line 316
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_43

    .line 318
    :try_start_82
    invoke-virtual {v13, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x12

    .line 319
    invoke-virtual {v13, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_90

    move v0, v2

    goto :goto_94

    .line 321
    :cond_90
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_94
    const/16 v3, 0x13

    .line 322
    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9e

    move v3, v2

    goto :goto_a2

    .line 324
    :cond_9e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_a2
    const/16 v4, 0x18

    .line 325
    invoke-virtual {v13, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_ac

    move v4, v2

    goto :goto_b0

    .line 327
    :cond_ac
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_b0
    const/16 v5, 0x9

    .line 328
    invoke-virtual {v13, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_ba

    move v5, v2

    goto :goto_be

    .line 330
    :cond_ba
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_be
    const/16 v6, 0x14

    .line 331
    invoke-virtual {v13, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c8

    move v6, v2

    goto :goto_cc

    .line 333
    :cond_c8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_cc
    const/16 v7, 0x19

    .line 334
    invoke-virtual {v13, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_d6

    :goto_d4
    move v7, v2

    goto :goto_db

    .line 336
    :cond_d6
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_d4

    :goto_db
    const/16 v2, 0xc

    .line 337
    invoke-virtual {v13, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e5

    .line 339
    const-string v2, "unknown"

    :cond_e5
    move-object v10, v2

    move v2, v0

    goto :goto_ea

    :catchall_e8
    move-exception v0

    goto :goto_115

    .line 341
    :goto_ea
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;

    const/16 v11, 0x180

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_f4} :catch_f9
    .catchall {:try_start_82 .. :try_end_f4} :catchall_e8

    .line 360
    :try_start_f4
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_43

    goto/16 :goto_3f

    .line 352
    :catch_f9
    :try_start_f9
    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;

    const/16 v11, 0x3e0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;-><init>(Ljava/lang/String;IIIIIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_10c
    .catchall {:try_start_f9 .. :try_end_10c} :catchall_e8

    .line 360
    :try_start_10c
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 364
    :goto_10f
    sget-object v2, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_119

    .line 360
    :goto_115
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0
    :try_end_119
    .catchall {:try_start_10c .. :try_end_119} :catchall_43

    .line 366
    :cond_119
    :goto_119
    monitor-exit p0

    return-object v0

    :goto_11b
    :try_start_11b
    monitor-exit p0
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_43

    throw v0
.end method

.method public final getVideoFileInfo(Ljava/lang/String;)Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;
    .registers 3

    const-string p0, "strInVideo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x10

    .line 196
    new-array p0, p0, [I

    .line 197
    invoke-static {p1, p0}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 199
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;

    invoke-direct {p1}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;-><init>()V

    const/4 v0, 0x0

    .line 200
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setWidth(I)V

    const/4 v0, 0x1

    .line 201
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setHeight(I)V

    const/4 v0, 0x2

    .line 202
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setRotation(I)V

    const/4 v0, 0x3

    .line 203
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setDuration(I)V

    const/4 v0, 0x6

    .line 205
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setBitrate(I)V

    const/4 v0, 0x7

    .line 206
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setFps(I)V

    const/16 v0, 0x8

    .line 207
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setCodec(I)V

    const/16 v0, 0x9

    .line 208
    aget v0, p0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setKeyFrameCount(I)V

    const/16 v0, 0xa

    .line 209
    aget p0, p0, v0

    invoke-virtual {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/util/NLEVideoFileInfo;->setMaxDuration(I)V

    return-object p1

    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVideoSize(Ljava/lang/String;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "videoPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->getRealVideoMetaDataInfo(Ljava/lang/String;)Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;

    move-result-object p0

    .line 426
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getWidth()I

    move-result p1

    .line 427
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getHeight()I

    move-result v0

    .line 428
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getRotation()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_21

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getRotation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_29

    .line 429
    :cond_21
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getHeight()I

    move-result p1

    .line 430
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;->getWidth()I

    move-result v0

    .line 432
    :cond_29
    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final isImage(Ljava/lang/String;)Z
    .registers 13

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_12

    return v1

    :cond_12
    const/16 p0, 0xc

    .line 248
    :try_start_14
    new-array v2, p0, [B

    .line 249
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_a6

    .line 250
    :try_start_1b
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_9d

    const/4 v0, 0x0

    .line 249
    :try_start_1f
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 253
    sget-object v3, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->RIFF_HEAD:[B

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eqz v3, :cond_47

    .line 254
    sget-object v3, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->WEBP_HEAD:[B

    invoke-static {v4, p0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_47

    return v5

    .line 259
    :cond_47
    sget-object v3, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->IMAGE_HEADERS:[[B

    array-length v6, v3

    move v7, v1

    :cond_4b
    if-ge v7, v6, :cond_61

    aget-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    .line 260
    array-length v9, v8

    invoke-static {v1, v9}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_4b

    return v5

    .line 265
    :cond_61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v6, "getDefault()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ".HEIC"

    const/4 v6, 0x2

    invoke-static {p1, v3, v1, v6, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    .line 266
    sget-object p1, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->HEIC_HEAD:[B

    invoke-static {v4, p0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_8d

    goto :goto_9c

    .line 271
    :cond_8d
    const-string v3, " "

    sget-object v8, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$isImage$headerStr$1;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils$isImage$headerStr$1;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_9b} :catch_a6

    goto :goto_a6

    :cond_9c
    :goto_9c
    return v5

    :catchall_9d
    move-exception v0

    move-object p0, v0

    .line 249
    :try_start_9f
    throw p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception v0

    move-object p1, v0

    :try_start_a2
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a6} :catch_a6

    :catch_a6
    :goto_a6
    return v1
.end method

.method public final declared-synchronized removeRealVideoCache(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_4

    goto :goto_c

    .line 372
    :cond_4
    :try_start_4
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/util/MediaUtils;->REAL_VIDEO_INFO_CACHE:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/nle/mediapublic/util/VideoMetaDataInfo;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    .line 374
    :goto_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method
