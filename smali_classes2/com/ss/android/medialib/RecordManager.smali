.class public Lcom/ss/android/medialib/RecordManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordManager"

.field private static volatile fbManager:Lcom/ss/android/medialib/RecordManager;


# instance fields
.field private mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ss/android/medialib/RecordManager;
    .registers 3

    .line 27
    const-class v0, Lcom/ss/android/medialib/RecordManager;

    monitor-enter v0

    .line 28
    :try_start_3
    sget-object v1, Lcom/ss/android/medialib/RecordManager;->fbManager:Lcom/ss/android/medialib/RecordManager;

    if-nez v1, :cond_1e

    .line 29
    const-class v1, Lcom/ss/android/medialib/RecordManager;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    .line 30
    :try_start_a
    sget-object v2, Lcom/ss/android/medialib/RecordManager;->fbManager:Lcom/ss/android/medialib/RecordManager;

    if-nez v2, :cond_18

    .line 31
    new-instance v2, Lcom/ss/android/medialib/RecordManager;

    invoke-direct {v2}, Lcom/ss/android/medialib/RecordManager;-><init>()V

    sput-object v2, Lcom/ss/android/medialib/RecordManager;->fbManager:Lcom/ss/android/medialib/RecordManager;

    goto :goto_18

    :catchall_16
    move-exception v2

    goto :goto_1a

    .line 32
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

    .line 34
    :cond_1e
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1c

    .line 35
    sget-object v0, Lcom/ss/android/medialib/RecordManager;->fbManager:Lcom/ss/android/medialib/RecordManager;

    return-object v0

    .line 34
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1c

    throw v1
.end method


# virtual methods
.method public addPCMData([BI)I
    .registers 5

    .line 451
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const-wide/16 v0, 0x0

    .line 452
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->addPCMData([BIJ)I

    move-result p0

    return p0
.end method

.method public bindEffectAudioProcessor(IIZ)I
    .registers 4

    .line 782
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 783
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->bindEffectAudioProcessor(IIZ)I

    move-result p0

    return p0
.end method

.method public cancelAll()V
    .registers 1

    .line 722
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 723
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->cancelAll()V

    return-void
.end method

.method public changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 684
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 685
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeMusicPath(Ljava/lang/String;)I
    .registers 2

    .line 250
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 251
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->changeMusicPath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public changeOutputVideoSize(II)V
    .registers 3

    .line 727
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 728
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->changeOutputVideoSize(II)V

    return-void
.end method

.method public changeSurface(Landroid/view/Surface;)I
    .registers 2

    .line 216
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 217
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->changeSurface(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public chooseSlamFace(I)V
    .registers 2

    .line 673
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 674
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->chooseSlamFace(I)V

    return-void
.end method

.method public clearFragFile()I
    .registers 1

    .line 479
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 480
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->clearFragFile()I

    move-result p0

    return p0
.end method

.method public closeWavFile(Z)I
    .registers 3

    .line 457
    iget-object v0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 458
    :cond_6
    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/RecordInvoker;->closeWavFile(Z)I

    move-result p1

    .line 460
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordManager;->save()I

    return p1
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 433
    iget-object v0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 434
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 428
    iget-object v0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 429
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public createEncoder()V
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 202
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->createEncoder()V

    return-void
.end method

.method public deleteLastFrag()I
    .registers 1

    .line 474
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->deleteLastFrag()I

    move-result p0

    return p0
.end method

.method public enableAbandonFirstFrame(Z)V
    .registers 2

    .line 648
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 649
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableAbandonFirstFrame(Z)V

    return-void
.end method

.method public enableEffect(Z)V
    .registers 2

    .line 639
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 640
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableEffect(Z)V

    return-void
.end method

.method public enableEffectBGM(Z)V
    .registers 2

    .line 630
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 631
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableEffectBGM(Z)V

    return-void
.end method

.method public enableTTFaceDetect(Z)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public getAudioEndTime()J
    .registers 3

    .line 261
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_7

    const-wide/16 v0, -0x1

    return-wide v0

    .line 262
    :cond_7
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getAudioEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndFrameTime()J
    .registers 3

    .line 469
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_7

    const-wide/16 v0, -0x1

    return-wide v0

    .line 470
    :cond_7
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getEndFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .registers 1

    .line 757
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 758
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;

    move-result-object p0

    return-object p0
.end method

.method public getReactionCamRotation()F
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 98
    :cond_7
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getReactionCamRotation()F

    move-result p0

    return p0
.end method

.method public getReactionCameraPosInRecordPixel()[I
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getReactionCameraPosInRecordPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionCameraPosInViewPixel()[I
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getReactionCameraPosInViewPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionPosMarginInViewPixel()[I
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 113
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getReactionPosMarginInViewPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getSlamFaceCount()I
    .registers 1

    .line 667
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 668
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getSlamFaceCount()I

    move-result p0

    return p0
.end method

.method public initAudioConfig(IIIII)I
    .registers 6

    .line 439
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 440
    :cond_6
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->initAudioConfig(IIIII)I

    move-result p0

    return p0
.end method

.method public initAudioPlayer(Landroid/content/Context;Ljava/lang/String;J)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/RecordManager;->initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZ)I

    move-result p0

    return p0
.end method

.method public initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZ)I
    .registers 13

    .line 245
    iget-object v0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 246
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I

    move-result p0

    return p0
.end method

.method public initBeautyPlay(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)I
    .registers 9

    .line 62
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    move-object p6, p7

    move p7, p8

    .line 63
    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/medialib/RecordInvoker;->initBeautyPlay(IILjava/lang/String;IILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public initBeautyPlayOnlyPreview(Lcom/ss/android/medialib/qr/ScanSettings;)I
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 68
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->initBeautyPlayOnlyPreview(Lcom/ss/android/medialib/qr/ScanSettings;)I

    move-result p0

    return p0
.end method

.method public initDuet(Ljava/lang/String;FFFZ)V
    .registers 14

    .line 679
    iget-object v0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 680
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->initDuet(Ljava/lang/String;FFFZZI)V

    return-void
.end method

.method public initImageDrawer(I)I
    .registers 2

    .line 777
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 778
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->initImageDrawer(I)I

    move-result p0

    return p0
.end method

.method public initMediaCodecSurface(Landroid/view/Surface;)I
    .registers 2

    .line 502
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 503
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->initMediaCodecSurface(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public initReaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 702
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 703
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->initReaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initWavFile(IID)I
    .registers 5

    .line 445
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 446
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->initWavFile(IID)I

    move-result p0

    return p0
.end method

.method public isStickerEnabled()Z
    .registers 1

    .line 737
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 738
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->isStickerEnabled()Z

    move-result p0

    return p0
.end method

.method public onAudioCallback([BI)V
    .registers 3

    .line 521
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 522
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->onAudioCallback([BI)V

    return-void
.end method

.method public onDrawFrame(I[F)I
    .registers 4

    .line 271
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/medialib/RecordInvoker;->onDrawFrame(I[FZ)I

    move-result p0

    return p0
.end method

.method public onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;)I
    .registers 3

    .line 276
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/medialib/RecordInvoker;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;Z)I

    move-result p0

    return p0
.end method

.method public onDrawFrameTime(D)I
    .registers 3

    .line 281
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 282
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->onDrawFrameTime(D)I

    move-result p0

    return p0
.end method

.method public pauseEffectAudio(Z)V
    .registers 2

    .line 619
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 620
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->pauseEffectAudio(Z)V

    return-void
.end method

.method public posInReactionRegion(II)Z
    .registers 3

    .line 137
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 138
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->posInReactionRegion(II)Z

    move-result p0

    return p0
.end method

.method public previewDuetVideo()Z
    .registers 1

    .line 689
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_9

    .line 690
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->previewDuetVideo()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public processTouchEvent(FF)I
    .registers 3

    .line 580
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 581
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->processTouchEvent(FF)I

    move-result p0

    return p0
.end method

.method public registerFaceResultCallback(ZLcom/ss/android/medialib/RecordInvoker$FaceResultCallback;)V
    .registers 3

    .line 747
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 748
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->registerFaceResultCallback(ZLcom/ss/android/medialib/RecordInvoker$FaceResultCallback;)V

    return-void
.end method

.method public registerHandDetectCallback([ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V
    .registers 3

    .line 762
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 763
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->registerHandDetectCallback([ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V

    return-void
.end method

.method public releaseEncoder()V
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 207
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->releaseEncoder()V

    return-void
.end method

.method public renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;)I
    .registers 5

    .line 732
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 733
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;)I

    move-result p0

    return p0
.end method

.method public resetPerfStats()V
    .registers 1

    .line 491
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 492
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->resetPerfStats()V

    return-void
.end method

.method public resetStartTime(JJ)I
    .registers 5

    const/4 p0, -0x1

    return p0
.end method

.method public rotateReactionWindow(F)F
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 93
    :cond_7
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->rotateReactionWindow(F)F

    move-result p0

    return p0
.end method

.method public save()I
    .registers 1

    .line 413
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 414
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->save()I

    move-result p0

    return p0
.end method

.method public scaleReactionWindow(F)[I
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->scaleReactionWindow(F)[I

    move-result-object p0

    return-object p0
.end method

.method public sendEffectMsg(IJJLjava/lang/String;)V
    .registers 7

    .line 717
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 718
    :cond_5
    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->sendEffectMsg(IJJLjava/lang/String;)V

    return-void
.end method

.method public setAlgorithmChangeMsg(IZ)V
    .registers 3

    .line 707
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 708
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setAlgorithmChangeMsg(IZ)V

    return-void
.end method

.method public setBeautyFace(ILjava/lang/String;)I
    .registers 3

    .line 334
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 335
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setBeautyFace(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setBeautyFace(ILjava/lang/String;FF)V
    .registers 5

    .line 326
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 327
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->setBeautyFace(ILjava/lang/String;FF)V

    return-void
.end method

.method public setBeautyFaceIntensity(FF)I
    .registers 3

    .line 346
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 347
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setBeautyFaceIntensity(FF)I

    move-result p0

    return p0
.end method

.method public setBeautyInvoker(Lcom/ss/android/medialib/RecordInvoker;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    return-void
.end method

.method public setDetectInterval(I)V
    .registers 2

    .line 610
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 611
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDetectInterval(I)V

    return-void
.end method

.method public setDetectionMode(Z)V
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 163
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDetectionMode(Z)V

    return-void
.end method

.method public setDeviceRotation([F)V
    .registers 2

    .line 295
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 296
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDeviceRotation([F)V

    return-void
.end method

.method public setDropFrames(I)V
    .registers 2

    .line 657
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 658
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDropFrames(I)V

    return-void
.end method

.method public setDuetCameraPaused(Z)V
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 128
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDuetCameraPaused(Z)V

    return-void
.end method

.method public setEffectBuildChainType(I)V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 73
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setEffectBuildChainType(I)V

    return-void
.end method

.method public setFaceMakeUp(Ljava/lang/String;FF)I
    .registers 4

    .line 374
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 375
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setFaceMakeUp(Ljava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)I
    .registers 3

    .line 300
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 301
    invoke-virtual {p0, p1, p1, v0}, Lcom/ss/android/medialib/RecordInvoker;->setFilter(Ljava/lang/String;Ljava/lang/String;F)I

    const/4 p0, 0x0

    return p0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 306
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 307
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setFilter(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setFilterIntensity(F)I
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 322
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setFilterIntensity(F)I

    move-result p0

    return p0
.end method

.method public setFilterPos(F)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 316
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setFilterPos(F)I

    move-result p0

    return p0
.end method

.method public setForceAlgorithmCnt(I)V
    .registers 2

    .line 802
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_7

    .line 803
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setForceAlgorithmCnt(I)V

    :cond_7
    return-void
.end method

.method public setHandDetectLowpower(Z)I
    .registers 2

    .line 712
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 713
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setHandDetectLowpower(Z)I

    move-result p0

    return p0
.end method

.method public setHardEncoderStatus(Z)I
    .registers 2

    .line 423
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 424
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setHardEncoderStatus(Z)I

    move-result p0

    return p0
.end method

.method public setIntensityByType(IF)I
    .registers 3

    .line 388
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 389
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setModeChangeState(I)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 212
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setModeChangeState(I)V

    return-void
.end method

.method public setMusicNodes(Ljava/lang/String;)I
    .registers 2

    .line 767
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 768
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setMusicNodes(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMusicTime(JJ)I
    .registers 12

    .line 256
    iget-object v0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const-wide/16 v3, -0x1

    move-wide v1, p1

    move-wide v5, p3

    .line 257
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->setMusicTime(JJJ)I

    move-result p0

    return p0
.end method

.method public setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V
    .registers 2

    .line 526
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 527
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V

    return-void
.end method

.method public setPlayLength(J)I
    .registers 3

    .line 496
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 497
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setPlayLength(J)I

    move-result p0

    return p0
.end method

.method public setPreviewDuetVideoPaused(Z)V
    .registers 2

    .line 696
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_7

    .line 697
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setPreviewDuetVideoPaused(Z)V

    :cond_7
    return-void
.end method

.method public setPreviewSizeRatio(FII)V
    .registers 4

    .line 266
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 267
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setPreviewSizeRatio(FII)V

    return-void
.end method

.method public setReactionBorderParam(II)V
    .registers 3

    .line 117
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 118
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setReactionBorderParam(II)V

    return-void
.end method

.method public setReactionMaskImage(Ljava/lang/String;Z)Z
    .registers 3

    .line 122
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 123
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setReactionMaskImage(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setReactionPosMargin(IIII)V
    .registers 5

    .line 132
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 133
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->setReactionPosMargin(IIII)V

    return-void
.end method

.method public setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 792
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 793
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 787
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 788
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReshape(Ljava/lang/String;FF)I
    .registers 4

    .line 361
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 362
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setReshape(Ljava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setRunningErrorCallback(Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)V
    .registers 2

    .line 797
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 798
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setRunningErrorCallback(Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)V

    return-void
.end method

.method public setSharedTextureStatus(Z)Z
    .registers 2

    .line 379
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSharedTextureStatus(Z)Z

    move-result p0

    return p0
.end method

.method public setSkinTone(Ljava/lang/String;)I
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 384
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSkinTone(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSlamFace(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 662
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 663
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSlamFace(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public setSticker(Landroid/graphics/Bitmap;II)I
    .registers 4

    .line 742
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 743
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setSticker(Landroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method

.method public setTextureDeltaListener(Lcom/ss/android/medialib/listener/TextureTimeListener;)V
    .registers 2

    .line 605
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 606
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setTextureTimeListener(Lcom/ss/android/medialib/listener/TextureTimeListener;)V

    return-void
.end method

.method public setUseMusic(I)V
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 153
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setUseMusic(I)V

    return-void
.end method

.method public setVideoQuality(II)I
    .registers 3

    .line 393
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 394
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setVideoQuality(II)I

    move-result p0

    return p0
.end method

.method public shotScreen(Ljava/lang/String;[IZLcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I
    .registers 15

    .line 531
    iget-object v0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 532
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->shotScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I

    move-result p0

    return p0
.end method

.method public slamDeviceConfig(ZIZZZZLjava/lang/String;)I
    .registers 8

    .line 549
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 550
    :cond_6
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/ss/android/medialib/RecordInvoker;->slamDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestAcc(DDDD)I
    .registers 9

    .line 553
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 554
    :cond_6
    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessIngestAcc(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGra(DDDD)I
    .registers 9

    .line 563
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 564
    :cond_6
    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessIngestGra(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGyr(DDDD)I
    .registers 9

    .line 558
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 559
    :cond_6
    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessIngestGyr(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestOri([DD)I
    .registers 4

    .line 568
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_9

    .line 569
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessIngestOri([DD)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public slamProcessPanEvent(FFFFF)I
    .registers 6

    .line 590
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 591
    :cond_6
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessPanEvent(FFFFF)I

    move-result p0

    return p0
.end method

.method public slamProcessRotationEvent(FF)I
    .registers 3

    .line 600
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 601
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessRotationEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessScaleEvent(FF)I
    .registers 3

    .line 595
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 596
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessScaleEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEvent(FF)I
    .registers 3

    .line 575
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 576
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessTouchEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEventByType(IFFI)I
    .registers 5

    .line 585
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 586
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessTouchEventByType(IFFI)I

    move-result p0

    return p0
.end method

.method public startPlay(IILjava/lang/String;II)I
    .registers 6

    .line 191
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 192
    :cond_6
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->startPlay(IILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public startPlay(Landroid/view/Surface;Ljava/lang/String;II)I
    .registers 5

    .line 174
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 175
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->startPlay(Landroid/view/Surface;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public startPlay(Landroid/view/Surface;Ljava/lang/String;ZII)I
    .registers 6

    .line 186
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 187
    :cond_6
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->startPlay(Landroid/view/Surface;Ljava/lang/String;ZII)I

    move-result p0

    return p0
.end method

.method public startRecord(DZFIIZ)I
    .registers 18

    .line 398
    iget-object v0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 399
    :cond_6
    const-string v8, ""

    const/4 v9, 0x1

    const-string v7, ""

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->startRecord(DZFIILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public stopPlay()I
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 197
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->stopPlay()I

    move-result p0

    return p0
.end method

.method public stopRecord(Z)I
    .registers 2

    .line 408
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 409
    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->stopRecord(Z)I

    move-result p0

    return p0
.end method

.method public tryRestore(ILjava/lang/String;)I
    .registers 3

    .line 403
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 404
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->tryRestore(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unRegisterFaceResultCallback()V
    .registers 1

    .line 752
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 753
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->unRegisterFaceResultCallback()V

    return-void
.end method

.method public uninitAudioPlayer()V
    .registers 1

    .line 511
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 512
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->uninitAudioPlayer()V

    return-void
.end method

.method public uninitBeautyPlay()I
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 148
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->uninitBeautyPlay()I

    move-result p0

    return p0
.end method

.method public updateReactionBGAlpha(F)V
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 143
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->updateReactionBGAlpha(F)V

    return-void
.end method

.method public updateReactionCameraPos(IIII)[I
    .registers 5

    .line 82
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->updateReactionCameraPos(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public updateReactionCameraPosWithRotation(IIIIF)[I
    .registers 6

    .line 77
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_6
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->updateReactionCameraPosWithRotation(IIIIF)[I

    move-result-object p0

    return-object p0
.end method

.method public updateRotation(FFF)V
    .registers 4

    .line 286
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 287
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->updateRotation(FFF)V

    return-void
.end method

.method public useLargeMattingModel(Z)V
    .registers 2

    .line 772
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 773
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->useLargeMattingModel(Z)V

    return-void
.end method

.method public writeFile(Ljava/nio/ByteBuffer;III)I
    .registers 5

    .line 418
    iget-object p0, p0, Lcom/ss/android/medialib/RecordManager;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 419
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->writeFile(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method
