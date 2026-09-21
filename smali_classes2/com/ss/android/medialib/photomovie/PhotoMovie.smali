.class public final Lcom/ss/android/medialib/photomovie/PhotoMovie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/AVCEncoderMarkInterface;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/photomovie/PhotoMovie$IPhotoMovieListener;,
        Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;,
        Lcom/ss/android/medialib/photomovie/PhotoMovie$ProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoMovie"

.field private static mPhotoMovieListener:Lcom/ss/android/medialib/photomovie/PhotoMovie$IPhotoMovieListener;

.field protected static volatile mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;


# instance fields
.field private mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 31
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    .line 50
    sput-object p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    return-void
.end method

.method public static calulateDuration(Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;)I
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->inputImages:[Ljava/lang/String;

    array-length v0, p0

    if-nez v0, :cond_7

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_7
    array-length p0, p0

    mul-int/lit16 p0, p0, 0x9c4

    add-int/lit16 p0, p0, -0x1f4

    return p0
.end method

.method public static createPlayer(Landroid/content/Context;)Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;
    .registers 2

    .line 34
    new-instance v0, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/photomovie/PhotoMoviePlayer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance()Lcom/ss/android/medialib/photomovie/PhotoMovie;
    .registers 3

    .line 38
    const-class v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;

    monitor-enter v0

    .line 39
    :try_start_3
    sget-object v1, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    if-nez v1, :cond_1e

    .line 40
    const-class v1, Lcom/ss/android/medialib/photomovie/PhotoMovie;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    .line 41
    :try_start_a
    sget-object v2, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    if-nez v2, :cond_18

    .line 42
    new-instance v2, Lcom/ss/android/medialib/photomovie/PhotoMovie;

    invoke-direct {v2}, Lcom/ss/android/medialib/photomovie/PhotoMovie;-><init>()V

    sput-object v2, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    goto :goto_18

    :catchall_16
    move-exception v2

    goto :goto_1a

    .line 43
    :cond_18
    :goto_18
    monitor-exit v1

    goto :goto_1e

    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_16

    :try_start_1b
    throw v2

    :catchall_1c
    move-exception v1

    goto :goto_22

    .line 45
    :cond_1e
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1c

    .line 46
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    return-object v0

    .line 45
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1c

    throw v1
.end method

.method private static native nativeSynthetise([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;Ljava/lang/String;FIIILcom/ss/android/medialib/photomovie/PhotoMovie$ProgressCallback;)I
.end method

.method public static onNativeCallback_InitMarkHardEncoder(IIIIIZ)Landroid/view/Surface;
    .registers 14

    .line 245
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    if-eqz v0, :cond_11

    .line 246
    sget-object v1, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->onInitMarkHardEncoder(IIIIIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onNativeCallback_InitMarkHardEncoderRet(I)V
    .registers 2

    .line 270
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    if-eqz v0, :cond_9

    .line 271
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->onInitMarkHardEncoderRet(I)V

    :cond_9
    return-void
.end method

.method public static onNativeCallback_MarkParam(FIFFFFFF)V
    .registers 18

    .line 300
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    if-eqz v0, :cond_13

    .line 301
    sget-object v1, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->onMarkParam(FIFFFFFF)V

    :cond_13
    return-void
.end method

.method public static onNativeCallback_MarkencodeTexture(IIIIZ)I
    .registers 12

    .line 285
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    if-eqz v0, :cond_10

    .line 286
    sget-object v1, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->onMarkEncodeData(IIIIZ)I

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static onNativeCallback_UninitMarkHardEncoder()V
    .registers 1

    .line 253
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    if-eqz v0, :cond_9

    .line 254
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mSingleton:Lcom/ss/android/medialib/photomovie/PhotoMovie;

    invoke-virtual {v0}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->onUninitMarkHardEncoder()V

    :cond_9
    return-void
.end method

.method private native onWriteFile([BIIII)V
.end method

.method private native setCodecConfig([BI)I
.end method

.method private native setColorFormat(I)I
.end method

.method private native setHardEncoderMarkStatus(Z)I
.end method

.method private static native setMarkParams([Ljava/lang/String;Ljava/lang/String;ZIIIIII)V
.end method

.method public static setPhotoMovieListener(Lcom/ss/android/medialib/photomovie/PhotoMovie$IPhotoMovieListener;)V
    .registers 1

    .line 401
    sput-object p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mPhotoMovieListener:Lcom/ss/android/medialib/photomovie/PhotoMovie$IPhotoMovieListener;

    return-void
.end method

.method private native swapGlBuffer()V
.end method


# virtual methods
.method public onInitMarkHardEncoder(IIIIIIZ)Landroid/view/Surface;
    .registers 14

    .line 314
    sget-object p4, Lcom/ss/android/medialib/photomovie/PhotoMovie;->TAG:Ljava/lang/String;

    const-string p5, "onInitMarkHardEncoder == enter"

    invoke-static {p4, p5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "width = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\theight = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object p5, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    if-nez p5, :cond_2e

    .line 319
    new-instance p5, Lcom/ss/android/medialib/AVCEncoderMark;

    invoke-direct {p5}, Lcom/ss/android/medialib/AVCEncoderMark;-><init>()V

    iput-object p5, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    .line 322
    :cond_2e
    iget-object p5, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    invoke-virtual {p5, p0}, Lcom/ss/android/medialib/AVCEncoderMark;->setEncoderCaller(Lcom/ss/android/medialib/AVCEncoderMarkInterface;)V

    .line 323
    iget-object v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/AVCEncoderMark;->initAVCEncoderMark(IIIIZ)Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_48

    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    const/4 p2, 0x0

    .line 327
    invoke-direct {p0, p2}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->setHardEncoderMarkStatus(Z)I

    return-object p1

    .line 330
    :cond_48
    const-string p2, "====== initAVCEncoder succeed ======"

    invoke-static {p4, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 331
    invoke-direct {p0, p2}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->setHardEncoderMarkStatus(Z)I

    .line 334
    const-string p0, "onInitMarkHardEncoder == exit"

    invoke-static {p4, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onInitMarkHardEncoder(IIIIIZ)Landroid/view/Surface;
    .registers 13

    .line 224
    iget-object p4, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    if-nez p4, :cond_b

    .line 225
    new-instance p4, Lcom/ss/android/medialib/AVCEncoderMark;

    invoke-direct {p4}, Lcom/ss/android/medialib/AVCEncoderMark;-><init>()V

    iput-object p4, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    .line 228
    :cond_b
    iget-object p4, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    invoke-virtual {p4, p0}, Lcom/ss/android/medialib/AVCEncoderMark;->setEncoderCaller(Lcom/ss/android/medialib/AVCEncoderMarkInterface;)V

    .line 229
    iget-object v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    const/4 v4, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/AVCEncoderMark;->initAVCEncoderMark(IIIIZ)Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    .line 232
    iput-object p1, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    const/4 p2, 0x0

    .line 233
    invoke-direct {p0, p2}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->setHardEncoderMarkStatus(Z)I

    return-object p1

    .line 236
    :cond_25
    sget-object p2, Lcom/ss/android/medialib/photomovie/PhotoMovie;->TAG:Ljava/lang/String;

    const-string p3, "====== initAVCEncoder succeed ======"

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 237
    invoke-direct {p0, p2}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->setHardEncoderMarkStatus(Z)I

    return-object p1
.end method

.method public onInitMarkHardEncoder(IIIIZ)Landroid/view/Surface;
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    .line 341
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->onInitMarkHardEncoder(IIIIIIZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public onInitMarkHardEncoderRet(I)V
    .registers 2

    .line 261
    sget-object p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mPhotoMovieListener:Lcom/ss/android/medialib/photomovie/PhotoMovie$IPhotoMovieListener;

    if-eqz p0, :cond_7

    .line 262
    invoke-interface {p0, p1}, Lcom/ss/android/medialib/photomovie/PhotoMovie$IPhotoMovieListener;->onInitMarkHardEncoderRet(I)V

    :cond_7
    return-void
.end method

.method public onMarkEncodeData(IIIIZ)I
    .registers 6

    .line 277
    iget-object p0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    if-eqz p0, :cond_9

    .line 278
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/AVCEncoderMark;->encode(IIIIZ)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onMarkEncoderData(IIIIZ)I
    .registers 6

    .line 373
    iget-object p0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    if-eqz p0, :cond_9

    .line 374
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/AVCEncoderMark;->encode(IIIIZ)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onMarkEncoderData(Ljava/nio/ByteBuffer;IZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onMarkEncoderData([BIZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onMarkParam(FIFFFFFF)V
    .registers 9

    .line 293
    iget-object p0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    if-eqz p0, :cond_7

    .line 294
    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/AVCEncoderMark;->setMarkParam(FIFFFFFF)V

    :cond_7
    return-void
.end method

.method public onMarkSetCodecConfig([B)V
    .registers 3

    .line 395
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->setCodecConfig([BI)I

    return-void
.end method

.method public onMarkSwapGlBuffers()V
    .registers 1

    .line 390
    invoke-direct {p0}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->swapGlBuffer()V

    return-void
.end method

.method public onMarkWriteFile([BIII)V
    .registers 11

    .line 383
    array-length v2, p1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->onWriteFile([BIIII)V

    .line 384
    sget-object p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->TAG:Ljava/lang/String;

    const-string p1, "onEncoderData: ..."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUninitMarkHardEncoder()V
    .registers 3

    .line 347
    sget-object v0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->TAG:Ljava/lang/String;

    const-string v1, "onUninitMarkHardEncoder == enter"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    if-eqz v1, :cond_16

    .line 350
    invoke-virtual {v1}, Lcom/ss/android/medialib/AVCEncoderMark;->uninitAVCEncoderMark()V

    const/4 v1, 0x0

    .line 351
    iput-object v1, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie;->mAVCEncoderMark:Lcom/ss/android/medialib/AVCEncoderMark;

    .line 352
    const-string p0, "====== uninitAVCEncoder ======"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_16
    const-string p0, "onUninitMarkHardEncoder == exit"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorFormatMark(I)V
    .registers 2

    .line 307
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->setColorFormat(I)I

    return-void
.end method

.method public setMarkParam([Ljava/lang/String;Ljava/lang/String;ZIIIIII)V
    .registers 10

    .line 196
    invoke-static/range {p1 .. p9}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->setMarkParams([Ljava/lang/String;Ljava/lang/String;ZIIIIII)V

    return-void
.end method

.method public synthetise(Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;)I
    .registers 19

    move-object/from16 v0, p1

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_31

    .line 144
    iget-object v3, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->inputImages:[Ljava/lang/String;

    iget-object v4, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->inputAudio:Ljava/lang/String;

    iget-object v5, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->outputVideo:Ljava/lang/String;

    iget-object v6, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->metaDataKeys:[Ljava/lang/String;

    iget-object v7, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->metaDataValues:[Ljava/lang/String;

    iget-object v8, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->resolution:[I

    iget v9, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->orientation:I

    iget-object v10, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->leftFilterPath:Ljava/lang/String;

    iget-object v11, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->rightFilterPath:Ljava/lang/String;

    iget v12, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->position:F

    iget-object v1, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->transitionParams:Lcom/ss/android/medialib/photomovie/TransitionParams;

    iget v13, v1, Lcom/ss/android/medialib/photomovie/TransitionParams;->id:I

    iget v14, v1, Lcom/ss/android/medialib/photomovie/TransitionParams;->photoTime:I

    iget v15, v1, Lcom/ss/android/medialib/photomovie/TransitionParams;->transitionTime:I

    iget-object v0, v0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->progressCallback:Lcom/ss/android/medialib/photomovie/PhotoMovie$ProgressCallback;

    move-object/from16 v16, v0

    invoke-static/range {v3 .. v16}, Lcom/ss/android/medialib/photomovie/PhotoMovie;->nativeSynthetise([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;Ljava/lang/String;FIIILcom/ss/android/medialib/photomovie/PhotoMovie$ProgressCallback;)I

    move-result v0

    return v0

    .line 142
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t synthetise photomovie in main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
