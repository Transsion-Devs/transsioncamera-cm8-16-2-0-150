.class public Lcom/ss/android/medialib/FFMpegManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/FFMpegManager$PhotoMovieParams;,
        Lcom/ss/android/medialib/FFMpegManager$RencodeParams;,
        Lcom/ss/android/medialib/FFMpegManager$EncoderListener;
    }
.end annotation


# static fields
.field private static final SHORT_VIDEO_DURATION:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "FFMpegManager"

.field private static volatile mpegManager:Lcom/ss/android/medialib/FFMpegManager;


# instance fields
.field private mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-direct {v0}, Lcom/ss/android/medialib/FFMpegInvoker;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    return-void
.end method

.method public static getInstance()Lcom/ss/android/medialib/FFMpegManager;
    .registers 3

    .line 22
    const-class v0, Lcom/ss/android/medialib/FFMpegManager;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/ss/android/medialib/FFMpegManager;->mpegManager:Lcom/ss/android/medialib/FFMpegManager;

    if-nez v1, :cond_1e

    .line 24
    const-class v1, Lcom/ss/android/medialib/FFMpegManager;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    .line 25
    :try_start_a
    sget-object v2, Lcom/ss/android/medialib/FFMpegManager;->mpegManager:Lcom/ss/android/medialib/FFMpegManager;

    if-nez v2, :cond_18

    .line 26
    new-instance v2, Lcom/ss/android/medialib/FFMpegManager;

    invoke-direct {v2}, Lcom/ss/android/medialib/FFMpegManager;-><init>()V

    sput-object v2, Lcom/ss/android/medialib/FFMpegManager;->mpegManager:Lcom/ss/android/medialib/FFMpegManager;

    goto :goto_18

    :catchall_16
    move-exception v2

    goto :goto_1a

    .line 27
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

    .line 29
    :cond_1e
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1c

    .line 30
    sget-object v0, Lcom/ss/android/medialib/FFMpegManager;->mpegManager:Lcom/ss/android/medialib/FFMpegManager;

    return-object v0

    .line 29
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1c

    throw v1
.end method


# virtual methods
.method public addFastReverseVideo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 205
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/FFMpegInvoker;->addFastReverseVideo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkAudioFile(Ljava/lang/String;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/FFMpegInvoker;->checkAudioFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkMp3File(Ljava/lang/String;)I
    .registers 2

    .line 267
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/FFMpegInvoker;->checkMp3File(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFrameCover(Ljava/lang/String;III)Lcom/ss/android/medialib/model/CoverInfo;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/FFMpegInvoker;->getFrameCover(Ljava/lang/String;IIII)Lcom/ss/android/medialib/model/CoverInfo;

    move-result-object p0

    return-object p0
.end method

.method public initVideoToGraph(Ljava/lang/String;)[I
    .registers 3

    .line 62
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/ss/android/medialib/FFMpegInvoker;->initVideoToGraph(Ljava/lang/String;II)[I

    move-result-object p0

    return-object p0
.end method

.method public initVideoToGraph(Ljava/lang/String;II)[I
    .registers 4

    .line 57
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/FFMpegInvoker;->initVideoToGraph(Ljava/lang/String;II)[I

    move-result-object p0

    return-object p0
.end method

.method public isCanImport(Ljava/lang/String;)I
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/FFMpegManager;->isCanImport(Ljava/lang/String;JJ)I

    move-result p0

    return p0
.end method

.method public isCanImport(Ljava/lang/String;JJ)I
    .registers 6

    .line 232
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/FFMpegInvoker;->isCanImport(Ljava/lang/String;JJ)I

    move-result p0

    return p0
.end method

.method public remuxVideo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 163
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/FFMpegInvoker;->remuxVideo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public rencodeAndSplitFile(Lcom/ss/android/medialib/FFMpegManager$RencodeParams;)I
    .registers 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 169
    invoke-static {v1}, Lcom/ss/android/medialib/AVCEncoder;->setDrainWaitTimeout(I)V

    move-object/from16 v1, p0

    .line 170
    iget-object v1, v1, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    iget-object v2, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->readfrom:Ljava/lang/String;

    iget-object v3, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->saveto:Ljava/lang/String;

    iget-object v4, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->outputWav:Ljava/lang/String;

    iget-wide v5, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->inpoint:J

    iget-wide v7, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->outpoint:J

    iget v9, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->screenWidth:I

    .line 177
    iget-boolean v10, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->fullScreen:Z

    iget v11, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->pos:I

    iget-object v12, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->userDevice:Ljava/lang/String;

    iget v13, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->rotateAngle:I

    iget-object v14, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->comment:Ljava/lang/String;

    .line 182
    # getter for: Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->speed:F
    invoke-static {v0}, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->access$000(Lcom/ss/android/medialib/FFMpegManager$RencodeParams;)F

    move-result v15

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->fullFrame:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->isCPUEncode:Z

    move/from16 v18, v1

    iget v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->minDurationInMs:I

    move/from16 v19, v1

    iget v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->width:I

    move/from16 v20, v1

    iget v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->height:I

    move/from16 v21, v1

    iget v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->quality:I

    move/from16 v22, v1

    iget v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->gop:I

    move/from16 v23, v1

    iget v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->preset:I

    move/from16 v24, v1

    iget v1, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->maxrate:I

    iget-object v0, v0, Lcom/ss/android/medialib/FFMpegManager$RencodeParams;->encoderListener:Lcom/ss/android/medialib/FFMpegManager$EncoderListener;

    move/from16 v25, v24

    move/from16 v24, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v25

    move-object/from16 v25, v0

    .line 170
    invoke-virtual/range {v1 .. v25}, Lcom/ss/android/medialib/FFMpegInvoker;->rencodeAndSplitFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIILjava/lang/String;ILjava/lang/String;FZZIIIIIIILcom/ss/android/medialib/FFMpegManager$EncoderListener;)I

    move-result v0

    const/16 v1, 0x2710

    .line 193
    invoke-static {v1}, Lcom/ss/android/medialib/AVCEncoder;->setDrainWaitTimeout(I)V

    return v0
.end method

.method public resampleCycleAudioToWav(Ljava/lang/String;Ljava/lang/String;JJ)I
    .registers 7

    .line 256
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/medialib/FFMpegInvoker;->resampleCycleAudioToWav(Ljava/lang/String;Ljava/lang/String;JJ)I

    move-result p0

    return p0
.end method

.method public setMetaCall(Lcom/ss/android/medialib/MetaInterface;)V
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/FFMpegInvoker;->setMetaInterface(Lcom/ss/android/medialib/MetaInterface;)V

    return-void
.end method

.method public setmFFMpagCaller(Lcom/ss/android/medialib/FFMpegInterface;)V
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/FFMpegInvoker;->setmFFMpagCaller(Lcom/ss/android/medialib/FFMpegInterface;)V

    return-void
.end method

.method public stopGetFrameThumbnail()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/FFMpegInvoker;->stopGetFrameThumbnail()V

    return-void
.end method

.method public stopReverseVideo()I
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/FFMpegInvoker;->stopReverseVideo()I

    move-result p0

    return p0
.end method

.method public uninitVideoToGraph()I
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/ss/android/medialib/FFMpegManager;->mFFMpegInvoker:Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/FFMpegInvoker;->uninitVideoToGraph()I

    move-result p0

    return p0
.end method
