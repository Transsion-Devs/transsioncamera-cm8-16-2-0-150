.class public final Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;
.super Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptureShotRequest"
.end annotation


# instance fields
.field private mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

.field private mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

.field private mBstAIFrameSlFilterGuard:Ljava/lang/Object;

.field private mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCapturePreviewTimeStamp:J

.field private mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

.field private mLiveVideoSaveCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

.field private mOrientationHint:I

.field private mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

.field private mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;ILcom/transsion/camera/app/common/livephoto/PhotoTaskData;Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;Lcom/bst/aiframesl/BstAIFrameSlFilter;JLjava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V
    .registers 11

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/livephoto/util/BackgroundTaskScheduler$CancellableTask;-><init>()V

    if-nez p2, :cond_11

    if-nez p1, :cond_11

    .line 241
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "CaptureShotRequest: videoEncoderCaptureShot or audioEncoderCaptureShot is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_11
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    .line 245
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    .line 246
    iput p3, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mOrientationHint:I

    .line 247
    iput-object p4, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    .line 248
    iput-object p5, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLiveVideoSaveCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    .line 249
    iput-object p6, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    const/4 p1, 0x2

    .line 250
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    .line 251
    iput-wide p7, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mCapturePreviewTimeStamp:J

    .line 252
    iput-object p9, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    iput-object p10, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    return-void
.end method

.method private createTempFileDirIfNeed()Ljava/io/File;
    .registers 5

    .line 202
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "live_photo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_47

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 206
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createTempFileDirIfNeed] tempFileDir: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_45
    const/4 p0, 0x0

    return-object p0

    :cond_47
    return-object v1
.end method

.method private renameVideoFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 6

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    if-eqz v0, :cond_61

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "live_video_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-wide v1, v1, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p2, :cond_3e

    .line 220
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    :cond_3e
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_60

    .line 225
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "renameVideoFile: tempFile rename to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_60
    return-object v1

    :cond_61
    return-object p1
.end method


# virtual methods
.method public run()V
    .registers 27

    move-object/from16 v1, p0

    .line 83
    const-string v0, ".mp4"

    const-string v2, "live_video_"

    const-string v3, "CaptureShotRequest: failed to release the media muxer: "

    const-wide/16 v4, 0x0

    .line 123
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    .line 89
    :try_start_f
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v9}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getCacheDir()Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    iget-object v9, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    if-eqz v9, :cond_5f

    iget-object v9, v9, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    if-eqz v9, :cond_5f

    .line 92
    new-instance v9, Landroid/util/Size;

    iget-object v10, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object v10, v10, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    const-string/jumbo v11, "width"

    .line 93
    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    iget-object v11, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    iget-object v11, v11, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    const-string v12, "height"

    .line 94
    invoke-virtual {v11, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    goto :goto_60

    :catchall_55
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_2ca

    :catch_5a
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_282

    :cond_5f
    move-object v9, v7

    .line 96
    :goto_60
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v10

    iget-boolean v10, v10, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoMovementLocusSupport:Z

    if-eqz v10, :cond_8c

    .line 98
    invoke-direct {v1}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->createTempFileDirIfNeed()Ljava/io/File;

    move-result-object v8

    .line 99
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v8

    move-object v8, v11

    goto :goto_8d

    :cond_8c
    move-object v2, v7

    .line 101
    :goto_8d
    iget v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mOrientationHint:I

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-ne v0, v12, :cond_95

    .line 102
    iput v11, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mOrientationHint:I

    :cond_95
    if-nez v10, :cond_a3

    .line 105
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    if-eqz v0, :cond_a0

    goto :goto_a3

    :cond_a0
    move-object/from16 v18, v7

    goto :goto_b3

    .line 106
    :cond_a3
    :goto_a3
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v13

    .line 107
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 106
    invoke-static {v13, v14, v0, v9}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->create(JLjava/io/File;Landroid/util/Size;)Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    move-result-object v0
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_b1} :catch_5a
    .catchall {:try_start_f .. :try_end_b1} :catchall_55

    move-object/from16 v18, v0

    .line 110
    :goto_b3
    :try_start_b3
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CaptureShotRequest: tempFile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    new-instance v14, Landroid/media/MediaMuxer;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0, v11}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_d8} :catch_281
    .catchall {:try_start_b3 .. :try_end_d8} :catchall_27f

    .line 112
    :try_start_d8
    iget v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mOrientationHint:I

    invoke-virtual {v14, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 115
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    if-nez v0, :cond_e3

    move v0, v12

    goto :goto_e9

    :cond_e3
    iget-object v0, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    invoke-virtual {v14, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 116
    :goto_e9
    iget-object v7, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    if-nez v7, :cond_ef

    move v7, v12

    goto :goto_f5

    :cond_ef
    iget-object v7, v7, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->format:Landroid/media/MediaFormat;

    invoke-virtual {v14, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    .line 118
    :goto_f5
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v9

    const-string v10, "CaptureShotRequest: start muxer"

    invoke-static {v9, v10}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->start()V

    .line 122
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    new-instance v10, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;

    filled-new-array {v6, v6}, [Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v10, v6}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;-><init>([Ljava/lang/Object;)V

    .line 125
    iget-object v6, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    if-eqz v6, :cond_149

    if-eq v0, v12, :cond_149

    .line 126
    iget-object v6, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v6, :cond_149

    .line 127
    new-instance v13, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;

    iget-object v15, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    move-wide/from16 v24, v4

    iget-wide v4, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mCapturePreviewTimeStamp:J

    iget-object v11, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mBstAIFrameSlFilter:Lcom/bst/aiframesl/BstAIFrameSlFilter;

    iget-object v12, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mBstAIFrameSlFilterReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v16, v0

    iget-object v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mBstAIFrameSlFilterGuard:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-wide/from16 v19, v4

    move-object/from16 v17, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-direct/range {v13 .. v23}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveVideoFileDataWriter;-><init>(Landroid/media/MediaMuxer;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;ILcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;JLcom/bst/aiframesl/BstAIFrameSlFilter;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V

    move-object/from16 v0, v17

    invoke-interface {v6, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14c

    :catchall_141
    move-exception v0

    move-object v7, v14

    goto/16 :goto_2ca

    :catch_145
    move-exception v0

    move-object v7, v14

    goto/16 :goto_282

    :cond_149
    move-wide/from16 v24, v4

    move-object v0, v10

    .line 132
    :goto_14c
    iget-object v4, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    if-eqz v4, :cond_165

    const/4 v4, -0x1

    if-eq v7, v4, :cond_165

    .line 133
    iget-object v4, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v4, :cond_165

    .line 134
    new-instance v5, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;

    iget-object v6, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mAudioCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    invoke-direct {v5, v14, v6, v7, v0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveAudioFileDataWriter;-><init>(Landroid/media/MediaMuxer;Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;ILcom/transsion/camera/feature/setting/livephoto/writer/LiveFileDataWriter$StatusNotifier;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_165
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v4, "CaptureShotRequest: waiting"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    move v6, v5

    const/4 v0, 0x0

    :goto_175
    if-ge v0, v4, :cond_1ce

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v10, v0, 0x1

    check-cast v7, Ljava/util/concurrent/Future;
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_17f} :catch_145
    .catchall {:try_start_d8 .. :try_end_17f} :catchall_141

    if-nez v7, :cond_184

    move v0, v10

    const/4 v6, 0x0

    goto :goto_175

    .line 148
    :cond_184
    :try_start_184
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_18e
    .catch Ljava/lang/InterruptedException; {:try_start_184 .. :try_end_18e} :catch_199
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_184 .. :try_end_18e} :catch_197
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_18e} :catch_145
    .catchall {:try_start_184 .. :try_end_18e} :catchall_141

    cmp-long v0, v11, v24

    if-lez v0, :cond_194

    move v0, v5

    goto :goto_195

    :cond_194
    const/4 v0, 0x0

    :goto_195
    and-int/2addr v6, v0

    goto :goto_1cc

    :catch_197
    move-exception v0

    goto :goto_19b

    :catch_199
    move-exception v0

    goto :goto_1b4

    .line 153
    :goto_19b
    :try_start_19b
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CaptureShotRequest: during writing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1cc

    .line 151
    :goto_1b4
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CaptureShotRequest: write video is interrupted and the video may be corrupted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1cc
    move v0, v10

    goto :goto_175

    .line 157
    :cond_1ce
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CaptureShotRequest: stop muxer, isDurationLongEnough: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->stop()V

    .line 159
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLiveVideoSaveCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    if-eqz v0, :cond_258

    if-nez v6, :cond_1f5

    .line 161
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;->onLiveVideoSaveCancelled(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    goto :goto_258

    .line 163
    :cond_1f5
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mVideoCaptureShot:Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;

    if-nez v0, :cond_1fc

    const-wide/16 v4, -0x1

    goto :goto_1fe

    :cond_1fc
    iget-wide v4, v0, Lcom/transsion/camera/feature/setting/livephoto/encoder/LiveMediaEncoder$CaptureShot;->time:J

    .line 164
    :goto_1fe
    invoke-direct {v1, v8, v2}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->renameVideoFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v18, :cond_24d

    .line 166
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual/range {v18 .. v18}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->getCamFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setCamFilePath(Ljava/lang/String;)V

    .line 167
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual/range {v18 .. v18}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->getGyroFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setGyroFilePath(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLivePhotoAIFrameSelectionSupport:Z

    if-eqz v2, :cond_24d

    .line 169
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    .line 170
    invoke-virtual {v8}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "_merge.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_24d

    .line 172
    iget-object v6, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->setBstMergeFilePath(Ljava/lang/String;)V

    .line 176
    :cond_24d
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLiveVideoSaveCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    iget-object v6, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v6, v0, v4, v5}, Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;->onLiveVideoSaveCompleted(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;J)V
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_258} :catch_145
    .catchall {:try_start_19b .. :try_end_258} :catchall_141

    .line 187
    :cond_258
    :goto_258
    :try_start_258
    invoke-virtual {v14}, Landroid/media/MediaMuxer;->release()V
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_25b} :catch_25c

    goto :goto_272

    .line 189
    :catch_25c
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    :goto_272
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_279

    .line 193
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_279
    if-eqz v18, :cond_2c9

    .line 196
    :goto_27b
    invoke-virtual/range {v18 .. v18}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->close()V

    goto :goto_2c9

    :catchall_27f
    move-exception v0

    goto :goto_2ca

    :catch_281
    move-exception v0

    .line 180
    :goto_282
    :try_start_282
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CaptureShotRequest: failed to save video: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v2, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLiveVideoSaveCallback:Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    if-eqz v2, :cond_2a3

    .line 182
    iget-object v4, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mLivePhotoTaskData:Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;

    invoke-interface {v2, v4, v0}, Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;->onLiveVideoSaveException(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/Throwable;)V
    :try_end_2a3
    .catchall {:try_start_282 .. :try_end_2a3} :catchall_27f

    :cond_2a3
    if-eqz v7, :cond_2bf

    .line 187
    :try_start_2a5
    invoke-virtual {v7}, Landroid/media/MediaMuxer;->release()V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2a8} :catch_2a9

    goto :goto_2bf

    .line 189
    :catch_2a9
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    :cond_2bf
    :goto_2bf
    iget-object v0, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2c6

    .line 193
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_2c6
    if-eqz v18, :cond_2c9

    goto :goto_27b

    :cond_2c9
    :goto_2c9
    return-void

    :goto_2ca
    if-eqz v7, :cond_2e6

    .line 187
    :try_start_2cc
    invoke-virtual {v7}, Landroid/media/MediaMuxer;->release()V
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_2cf} :catch_2d0

    goto :goto_2e6

    .line 189
    :catch_2d0
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    :cond_2e6
    :goto_2e6
    iget-object v1, v1, Lcom/transsion/camera/feature/setting/livephoto/LiveMediaRecorder$CaptureShotRequest;->mSampleWriterExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2ed

    .line 193
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_2ed
    if-eqz v18, :cond_2f2

    .line 196
    invoke-virtual/range {v18 .. v18}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->close()V

    .line 198
    :cond_2f2
    throw v0
.end method
