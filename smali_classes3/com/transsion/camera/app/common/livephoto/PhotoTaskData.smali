.class public Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBstMergeFilePath:Ljava/lang/String;

.field private final mCacheDir:Ljava/io/File;

.field private mCamFilePath:Ljava/lang/String;

.field private mCoverFrameTimestamp:J

.field private mExposureStartTime:J

.field private mExposureTime:J

.field private mGyroFilePath:Ljava/lang/String;

.field private mGyroTimeStampValues:Ljava/util/List;

.field private mIsAIFrame:Z

.field private mIsAIZoomSR:Z

.field private mIsBgImage:Z

.field private mIsLiveShotTask:Z

.field private mJpegBitmap:Landroid/graphics/Bitmap;

.field private mJpegImageData:[B

.field private mJpegTimestamp:J

.field private mLowQualityPicture:Z

.field private mPictureFilled:Z

.field private mRollingShutterTime:J

.field private mTimestamp:J

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PhotoTaskData"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mCacheDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public declared-synchronized convertToLivePhotoInfo(Z)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;
    .registers 10

    monitor-enter p0

    .line 221
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getJpegTimestamp()J

    move-result-wide v0

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getCoverFrameTimestamp()J

    move-result-wide v2

    .line 223
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getLiveVideoPath()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getCamFilePath()Ljava/lang/String;

    move-result-object v6

    .line 226
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getGyroFilePath()Ljava/lang/String;

    move-result-object v7

    move v5, p1

    .line 220
    invoke-static/range {v0 .. v7}, Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;->getInstance(JJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/taps/entity/LivePhotoInfo;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception v0

    move-object p1, v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1c

    throw p1
.end method

.method public declared-synchronized fillJpegData([B)V
    .registers 3

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegImageData:[B

    if-nez v0, :cond_32

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mPictureFilled:Z

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegImageData:[B

    .line 101
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda0;-><init>()V

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData$$ExternalSyntheticLambda1;-><init>()V

    .line 103
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 104
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mLowQualityPicture:Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 105
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    goto :goto_3b

    .line 107
    :cond_32
    :try_start_32
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "fillJpegData, jpeg data already set"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_30

    .line 108
    monitor-exit p0

    return-void

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_30

    throw p1
.end method

.method public declared-synchronized fillVideoPath(Ljava/lang/String;J)V
    .registers 8

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mVideoPath:Ljava/lang/String;

    if-nez v0, :cond_44

    if-eqz p1, :cond_14

    .line 86
    const-string v0, "empty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_14

    :cond_10
    const/4 v0, 0x0

    goto :goto_15

    :catchall_12
    move-exception p1

    goto :goto_66

    :cond_14
    :goto_14
    const/4 v0, 0x1

    .line 87
    :goto_15
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mVideoPath:Ljava/lang/String;

    .line 88
    iput-wide p2, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mCoverFrameTimestamp:J

    .line 89
    sget-object v1, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillVideoPath: isVideoEmpty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", videoPath = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_39

    .line 91
    const-string p1, "[empty]"

    :cond_39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_64

    .line 93
    :cond_44
    sget-object p2, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fillVideoPath failed: mVideoPath: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mVideoPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoPath: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_12

    .line 95
    :goto_64
    monitor-exit p0

    return-void

    :goto_66
    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_12

    throw p1
.end method

.method public getBstMergeFilePath()Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mBstMergeFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getCacheDir()Ljava/io/File;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mCacheDir:Ljava/io/File;

    return-object p0
.end method

.method public getCamFilePath()Ljava/lang/String;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mCamFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getCoverFrameTimestamp()J
    .registers 3

    monitor-enter p0

    .line 81
    :try_start_1
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mCoverFrameTimestamp:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getExposureTime()J
    .registers 3

    .line 172
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mExposureTime:J

    return-wide v0
.end method

.method public getGyroFilePath()Ljava/lang/String;
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mGyroFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getGyroTimeStampValues()Ljava/util/List;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mGyroTimeStampValues:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized getJpegBitmap()Landroid/graphics/Bitmap;
    .registers 2

    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getJpegImageData()[B
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegImageData:[B

    return-object p0
.end method

.method public declared-synchronized getJpegTimestamp()J
    .registers 3

    monitor-enter p0

    .line 156
    :try_start_1
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegTimestamp:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getLiveVideoPath()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mVideoPath:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getRollingShutterTime()J
    .registers 3

    .line 180
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mRollingShutterTime:J

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 196
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mTimestamp:J

    return-wide v0
.end method

.method public declared-synchronized isAIFrame()Z
    .registers 2

    monitor-enter p0

    .line 69
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mIsAIFrame:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isAIZoomSR()Z
    .registers 2

    monitor-enter p0

    .line 77
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mIsAIZoomSR:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isBgImage()Z
    .registers 2

    monitor-enter p0

    .line 147
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mIsBgImage:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isJpegDataReady()Z
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegImageData:[B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isLiveShotTask()Z
    .registers 2

    monitor-enter p0

    .line 61
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mIsLiveShotTask:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isLowQualityPicture()Z
    .registers 2

    monitor-enter p0

    .line 115
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mLowQualityPicture:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized isPictureFilled()Z
    .registers 2

    monitor-enter p0

    .line 111
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mPictureFilled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public refillJpegData([B)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegImageData:[B

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mPictureFilled:Z

    return-void
.end method

.method public releaseImageData()V
    .registers 2

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mVideoPath:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegImageData:[B

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mPictureFilled:Z

    return-void
.end method

.method public declared-synchronized saveJpegInfo(Landroid/graphics/Bitmap;ZJ)V
    .registers 8

    monitor-enter p0

    .line 134
    :try_start_1
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegTimestamp:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_25

    .line 135
    sget-object v0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveJpegInfo: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", check timestamp please"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_25

    :catchall_23
    move-exception p1

    goto :goto_2d

    .line 137
    :cond_25
    :goto_25
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegBitmap:Landroid/graphics/Bitmap;

    .line 138
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mIsBgImage:Z

    .line 139
    iput-wide p3, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegTimestamp:J
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_23

    .line 140
    monitor-exit p0

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_23

    throw p1
.end method

.method public declared-synchronized setAIFrame(Z)V
    .registers 2

    monitor-enter p0

    .line 65
    :try_start_1
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mIsAIFrame:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 66
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setAIZoomSR(Z)V
    .registers 2

    monitor-enter p0

    .line 73
    :try_start_1
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mIsAIZoomSR:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 74
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setBstMergeFilePath(Ljava/lang/String;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mBstMergeFilePath:Ljava/lang/String;

    return-void
.end method

.method public setCamFilePath(Ljava/lang/String;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mCamFilePath:Ljava/lang/String;

    return-void
.end method

.method public setExposureStartTime(J)V
    .registers 3

    .line 192
    iput-wide p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mExposureStartTime:J

    return-void
.end method

.method public setExposureTime(J)V
    .registers 3

    .line 176
    iput-wide p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mExposureTime:J

    return-void
.end method

.method public setGyroFilePath(Ljava/lang/String;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mGyroFilePath:Ljava/lang/String;

    return-void
.end method

.method public setGyroTimeStampValues(Ljava/util/List;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mGyroTimeStampValues:Ljava/util/List;

    return-void
.end method

.method public declared-synchronized setJpegTimestamp(J)V
    .registers 5

    monitor-enter p0

    .line 151
    :try_start_1
    iput-wide p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegTimestamp:J

    .line 152
    sget-object p1, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setJpegTimestamp: mJpegTimestamp = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mJpegTimestamp:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 153
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public declared-synchronized setLiveShotTask(Z)V
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mIsLiveShotTask:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 58
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setRollingShutterTime(J)V
    .registers 3

    .line 184
    iput-wide p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mRollingShutterTime:J

    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    .line 200
    iput-wide p1, p0, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->mTimestamp:J

    return-void
.end method
