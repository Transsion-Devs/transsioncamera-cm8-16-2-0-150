.class public Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;
.super Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithm;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PIXEL_VALUE:I = 0x1e

.field private static final LICENSE_SRC_NAME:Ljava/lang/String; = "SZMOBILEFACESDK_438CE934-EBD7-457F-9E01-58340A5891B8.lic"

.field private static final OUTPUT_DIR:Ljava/lang/String; = "/sdcard/DCIM/"

.field private static final SDK_ININT_SUCESS:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

.field private mCvHandTrackCallback:Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

.field private mDiffPixel:I

.field private mFaceInfosTemp:[Lcom/tetras/hand/model/CvHandInfo;

.field private mFileDir:Ljava/lang/String;

.field private mFps:I

.field private mHandInfos:[Lcom/tetras/hand/model/CvHandInfo;

.field private mHandSwipeStatusInfo:Ljava/lang/String;

.field private mHandType:[Ljava/lang/String;

.field private mIsCreateTrack:Z

.field private mIsDetAllowed:Z

.field private mIsDetectSwipe:Z

.field private mIsFrontCamera:Z

.field private mIsKilled:Z

.field private volatile mIsNv21DataReady:Z

.field private mIsResetCvFaceTrack:Z

.field private mIsSaveFrameData:Z

.field private volatile mIsTracking:Z

.field private mIsTwoThread:Z

.field private mNv21:[B

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStartTime:J

.field private mTrackThread:Ljava/lang/Thread;

.field private mTrackTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GestureDetAlgImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 19

    move-object/from16 v0, p0

    .line 66
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithm;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 49
    iput-object v1, v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFaceInfosTemp:[Lcom/tetras/hand/model/CvHandInfo;

    const/16 v1, 0x1e

    .line 51
    iput v1, v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCurrentTime:J

    .line 59
    const-string v1, ""

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFileDir:Ljava/lang/String;

    .line 60
    iput-object v1, v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mHandSwipeStatusInfo:Ljava/lang/String;

    .line 61
    const-string/jumbo v15, "\u6211\u7231\u4f60"

    const-string/jumbo v16, "\u672a\u77e5"

    const-string v2, "OK"

    const-string/jumbo v3, "\u526a\u5200"

    const-string/jumbo v4, "\u70b9\u8d5e"

    const-string/jumbo v5, "\u5e03"

    const-string/jumbo v6, "\u624b\u67aa"

    const-string/jumbo v7, "\u7231\u5fc3"

    const-string/jumbo v8, "\u6258\u4e3e"

    const-string/jumbo v9, "\u62f3\u5934"

    const-string/jumbo v10, "\u4f5c\u63d6"

    const-string/jumbo v11, "\u6bd4\u5fc3"

    const-string/jumbo v12, "\u6307\u5c16"

    const-string v13, "666"

    const-string/jumbo v14, "\u53cc\u624b\u5408\u5341"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mHandType:[Ljava/lang/String;

    move-object/from16 v1, p1

    .line 67
    iput-object v1, v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculateFPS()V
    .registers 5

    .line 402
    iget v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFps:I

    if-nez v0, :cond_11

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mStartTime:J

    .line 404
    iget v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFps:I

    return-void

    .line 405
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFps:I

    return-void

    .line 408
    :cond_22
    iget v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFps:I

    return-void
.end method

.method private checkLicense()I
    .registers 4

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mContext:Landroid/content/Context;

    const-string v0, "SZMOBILEFACESDK_438CE934-EBD7-457F-9E01-58340A5891B8.lic"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/FileUtil;->getAssertData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    .line 151
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "no license file !!!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    :cond_11
    invoke-static {p0}, Lcom/tetras/hand/CvLicenseHelper;->initLicense(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2e

    .line 155
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "license Check Failed resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 157
    :cond_2e
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "license Check success !"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private declared-synchronized doHandTrack([BII)V
    .registers 9

    monitor-enter p0

    .line 236
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsKilled:Z

    if-nez v0, :cond_b9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_b9

    .line 239
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsNv21DataReady:Z

    if-eqz v0, :cond_ac

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsTracking:Z

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->resetTrack()Z

    .line 243
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->doTrack([B)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mHandInfos:[Lcom/tetras/hand/model/CvHandInfo;

    .line 244
    sget-boolean v1, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isOpenSmoothing:Z

    if-eqz v1, :cond_28

    .line 245
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->postHandInfo([Lcom/tetras/hand/model/CvHandInfo;)V

    goto :goto_28

    :catchall_25
    move-exception p1

    goto/16 :goto_bb

    .line 247
    :cond_28
    :goto_28
    sget-boolean v0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isSaveFrameData:Z

    if-eqz v0, :cond_5b

    .line 248
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsSaveFrameData:Z

    if-nez v0, :cond_5b

    .line 249
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SampleConfig.mIsSaveFrameData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isSaveFrameData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCurrentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_5b

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCurrentTime:J

    .line 256
    :cond_5b
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsDetectSwipe:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_8d

    .line 257
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->updateHandSwipeStatus()I

    move-result v0

    if-eq v0, v1, :cond_8d

    .line 259
    invoke-static {v0}, Lcom/tetras/hand/model/CvHandStatusCode;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mHandSwipeStatusInfo:Ljava/lang/String;

    .line 260
    sget-object v2, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateHandSwipeStatus():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mHandSwipeStatusInfo:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    :cond_8d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrackCallback:Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

    if-eqz v0, :cond_a5

    .line 264
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mHandInfos:[Lcom/tetras/hand/model/CvHandInfo;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;->onGestureDetected([Lcom/tetras/hand/model/CvHandInfo;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 266
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->reset()V

    .line 268
    sget-boolean v0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isDebug:Z

    if-eqz v0, :cond_a5

    const/16 v0, 0x11

    .line 269
    invoke-static {v1, p1, p2, p3, v0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->dumpFile(I[BIII)V

    :cond_a5
    const/4 p1, 0x0

    .line 274
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsTracking:Z

    .line 275
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsNv21DataReady:Z

    .line 276
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsSaveFrameData:Z

    .line 278
    :cond_ac
    sget-boolean p1, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isDebug:Z

    if-eqz p1, :cond_b7

    .line 279
    sget-object p1, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "mTrackThread End "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_1 .. :try_end_b7} :catchall_25

    .line 281
    :cond_b7
    monitor-exit p0

    return-void

    .line 237
    :cond_b9
    :goto_b9
    monitor-exit p0

    return-void

    :goto_bb
    :try_start_bb
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_25

    throw p1
.end method

.method private doOnPause()V
    .registers 5

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->stop(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_25

    :catchall_a
    move-exception v0

    .line 177
    sget-object v1, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnPause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    :goto_25
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->stopTrackThread()V

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->releaseCvFaceTrack()V

    return-void
.end method

.method private doOnResume()Z
    .registers 4

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->start(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_11

    .line 166
    :catchall_a
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AccelerometerManager.start failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    :goto_11
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsTwoThread:Z

    sget-object v1, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->sHandImageResize:Lcom/tetras/hand/model/HandConfig$HandImageResize;

    sget v2, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->sDetectIntervalValue:I

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->initTrack(ZLcom/tetras/hand/model/HandConfig$HandImageResize;I)V

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->startTrackThread()V

    const/4 p0, 0x1

    return p0
.end method

.method private doTrack([B)[Lcom/tetras/hand/model/CvHandInfo;
    .registers 10

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

    if-nez v0, :cond_d

    .line 373
    sget-object p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[track] mCvHandTrack == null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 376
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsFrontCamera:Z

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/gesturedetection/AccelerometerManager;->getFaceOrientation(ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/tetras/util/HandOrientation;

    move-result-object v7

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 378
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

    sget-object v4, Lcom/tetras/hand/model/CvPixelFormat;->NV21:Lcom/tetras/hand/model/CvPixelFormat;

    iget v5, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mPreviewWidth:I

    iget v6, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mPreviewHeight:I

    move-object v3, p1

    .line 379
    invoke-virtual/range {v2 .. v7}, Lcom/tetras/hand/CvHandTrack;->track([BLcom/tetras/hand/model/CvPixelFormat;IILcom/tetras/util/HandOrientation;)[Lcom/tetras/hand/model/CvHandInfo;

    move-result-object p1

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mTrackTime:J

    .line 381
    sget-boolean v0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isDebug:Z

    if-eqz v0, :cond_62

    .line 382
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[track] Hand track mCurrentTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mTrackTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", hand count: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4b

    const/4 p0, 0x0

    goto :goto_4c

    :cond_4b
    array-length p0, p1

    :goto_4c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", track dir : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v7}, Lcom/tetras/util/HandOrientation;->getValue()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 382
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_62
    return-object p1
.end method

.method private static dumpFile(I[BIII)V
    .registers 5

    if-nez p1, :cond_a

    .line 417
    sget-object p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dumpFile data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 420
    :cond_a
    invoke-static {p0, p2, p3, p4}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->getDumpFileName(IIII)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_19

    .line 422
    sget-object p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "unknow iamge format."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 426
    :cond_19
    :try_start_19
    sget-object p2, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[dumpNv21File] fileName: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 427
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 429
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p0

    .line 431
    sget-object p1, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dumpFile write exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static getDumpFileName(IIII)Ljava/lang/String;
    .registers 6

    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p0, v0

    :cond_8
    const/16 v0, 0x2008

    .line 440
    const-string v1, "/sdcard/DCIM/"

    if-ne p3, v0, :cond_36

    .line 441
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "frame_%05d_I420_%dx%d.i420"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    const/16 v0, 0x11

    if-ne p3, v0, :cond_62

    .line 443
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "frame_%05d_NV21_%dx%d.nv21"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_62
    const/16 v0, 0x100

    if-ne p3, v0, :cond_8e

    .line 445
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "frame_%05d_JPG_%dx%d.jpg"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVersion()Ljava/lang/String;
    .registers 4

    .line 396
    invoke-static {}, Lcom/tetras/hand/CvHandLibrary;->cvGetVersion()Ljava/lang/String;

    move-result-object p0

    .line 397
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private initConfig(II)V
    .registers 6

    .line 184
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [initConfig] width:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iput p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mPreviewWidth:I

    .line 186
    iput p2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mPreviewHeight:I

    .line 187
    new-instance p1, Landroid/util/Size;

    iget p2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mPreviewWidth:I

    iget v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mPreviewHeight:I

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    sput-object p1, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->cameraPreviewSize:Landroid/util/Size;

    .line 188
    sget p1, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->trackAntiShakeValue:I

    if-gez p1, :cond_33

    const/16 p1, 0x1e

    :cond_33
    iput p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    return-void
.end method

.method private initTrack(ZLcom/tetras/hand/model/HandConfig$HandImageResize;I)V
    .registers 7

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->releaseCvFaceTrack()V

    if-eqz p1, :cond_8

    .line 206
    sget-object p1, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->TWO_THREAD:Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    goto :goto_a

    :cond_8
    sget-object p1, Lcom/tetras/hand/model/HandConfig$TrackThreadCount;->DEFAULT_CONFIG:Lcom/tetras/hand/model/HandConfig$TrackThreadCount;

    .line 207
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    new-instance v2, Lcom/tetras/hand/CvHandTrack;

    invoke-direct {v2, p2, p1}, Lcom/tetras/hand/CvHandTrack;-><init>(Lcom/tetras/hand/model/HandConfig$HandImageResize;Lcom/tetras/hand/model/HandConfig$TrackThreadCount;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

    .line 209
    invoke-virtual {v2, p3}, Lcom/tetras/hand/CvHandTrack;->setTrackInterval(I)V

    .line 210
    sget-boolean p0, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isDebug:Z

    if-eqz p0, :cond_37

    .line 211
    sget-object p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[initTrack] create CvFaceTrack mCurrentTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method private releaseCvFaceTrack()V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 217
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "releaseCvFaceTrack()"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

    invoke-virtual {v3}, Lcom/tetras/hand/CvHandleBase;->release()V

    .line 219
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

    .line 220
    sget-boolean v3, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isDebug:Z

    if-eqz v3, :cond_1a

    .line 221
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    :cond_1a
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFaceInfosTemp:[Lcom/tetras/hand/model/CvHandInfo;

    return-void
.end method

.method private reset()V
    .registers 3

    .line 350
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[reset] mCvHandTrack: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

    if-eqz p0, :cond_e

    .line 352
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandTrack;->reset()V

    :cond_e
    return-void
.end method

.method private resetTrack()Z
    .registers 6

    .line 358
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsResetCvFaceTrack:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 359
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsCreateTrack:Z

    if-eqz v0, :cond_14

    .line 360
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsTwoThread:Z

    sget-object v2, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->sHandImageResize:Lcom/tetras/hand/model/HandConfig$HandImageResize;

    sget v3, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->sDetectIntervalValue:I

    invoke-direct {p0, v0, v2, v3}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->initTrack(ZLcom/tetras/hand/model/HandConfig$HandImageResize;I)V

    move v0, v1

    goto :goto_18

    .line 362
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->releaseCvFaceTrack()V

    const/4 v0, 0x1

    .line 365
    :goto_18
    sget-object v2, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[resetTrack] isNeedToReleaseHandTrack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsResetCvFaceTrack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsResetCvFaceTrack:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsCreateTrack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsCreateTrack:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_44

    :cond_43
    move v0, v1

    .line 367
    :goto_44
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsResetCvFaceTrack:Z

    return v0
.end method

.method private resetTrackConfig(ZZZ)V
    .registers 4

    const/4 p3, 0x1

    .line 192
    iput-boolean p3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsResetCvFaceTrack:Z

    .line 193
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsCreateTrack:Z

    .line 194
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsDetectSwipe:Z

    return-void
.end method

.method private setDiffPixel(I)V
    .registers 2

    .line 198
    iput p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    return-void
.end method

.method private startTrackThread()V
    .registers 2

    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsKilled:Z

    return-void
.end method

.method private stopTrackThread()V
    .registers 2

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsKilled:Z

    return-void
.end method

.method private updateHandInfo(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mPreviewHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 334
    iput v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    .line 335
    sget-object v1, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraView.mPreviewHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",  rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mDiffPixel:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 336
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    if-ge v0, v2, :cond_88

    .line 337
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    if-ge v0, v2, :cond_88

    .line 338
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    if-ge v0, v2, :cond_88

    .line 339
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    if-ge p1, p2, :cond_88

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "the pixel diff <"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mDiffPixel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_88
    const/4 p0, 0x1

    return p0
.end method

.method private updateHandSwipeStatus()I
    .registers 1

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrack:Lcom/tetras/hand/CvHandTrack;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 392
    :cond_6
    invoke-virtual {p0}, Lcom/tetras/hand/CvHandTrack;->handGestureSwipeStatus()I

    move-result p0

    return p0
.end method


# virtual methods
.method public detectGesture([BII)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 102
    sget-object p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[detectGesture] data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 105
    :cond_b
    sget-object v1, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[detectGesture] mIsDetAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsDetAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", previewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mNv21:[B

    if-eqz v1, :cond_3c

    array-length v2, p1

    array-length v1, v1

    if-eq v2, v1, :cond_3f

    .line 109
    :cond_3c
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->initConfig(II)V

    .line 114
    :cond_3f
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsTracking:Z

    if-nez v1, :cond_52

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsDetAllowed:Z

    if-eqz v1, :cond_52

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mNv21:[B

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsNv21DataReady:Z

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mNv21:[B

    invoke-direct {p0, v0, p2, p3}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->doHandTrack([BII)V

    return p1

    :cond_52
    return v0
.end method

.method public initGesture(ZLjava/lang/String;Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;)Z
    .registers 7

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initGesture] start +++++ isFrontCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsFrontCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsDetAllowed:Z

    .line 76
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsFrontCamera:Z

    .line 77
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsTwoThread:Z

    .line 78
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrackCallback:Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->checkLicense()I

    move-result p1

    if-nez p1, :cond_3b

    .line 81
    sget-boolean p1, Lcom/transsion/camera/feature/setting/gesturedetection/SampleConfig;->isDebug:Z

    if-eqz p1, :cond_32

    .line 82
    invoke-static {v1}, Lcom/tetras/hand/CvHandLibrary;->setDebug(Z)V

    .line 84
    :cond_32
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->getVersion()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->doOnResume()Z

    move-result p2

    goto :goto_3e

    :cond_3b
    const/4 p2, 0x0

    .line 79
    const-string p1, ""

    .line 87
    :goto_3e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initGesture] end ----- isTwoThread: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsTwoThread:Z

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", version: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method protected postHandInfo([Lcom/tetras/hand/model/CvHandInfo;)V
    .registers 9

    if-eqz p1, :cond_53

    .line 313
    array-length v0, p1

    if-lez v0, :cond_53

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFaceInfosTemp:[Lcom/tetras/hand/model/CvHandInfo;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mHandInfos:[Lcom/tetras/hand/model/CvHandInfo;

    array-length v0, v0

    if-nez v0, :cond_f

    goto :goto_4b

    :cond_f
    const/4 v0, 0x0

    move v1, v0

    .line 317
    :goto_11
    array-length v2, p1

    if-ge v1, v2, :cond_53

    move v2, v0

    .line 318
    :goto_15
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFaceInfosTemp:[Lcom/tetras/hand/model/CvHandInfo;

    array-length v4, v3

    if-ge v2, v4, :cond_48

    .line 319
    aget-object v4, p1, v1

    iget v5, v4, Lcom/tetras/hand/model/CvHandInfo;->id:I

    aget-object v6, v3, v2

    iget v6, v6, Lcom/tetras/hand/model/CvHandInfo;->id:I

    if-ne v5, v6, :cond_45

    .line 320
    iget-object v4, v4, Lcom/tetras/hand/model/CvHandInfo;->handRect:Landroid/graphics/Rect;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/tetras/hand/model/CvHandInfo;->handRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v3}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->updateHandInfo(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 321
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFaceInfosTemp:[Lcom/tetras/hand/model/CvHandInfo;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/tetras/hand/model/CvHandInfo;->clone()Lcom/tetras/hand/model/CvHandInfo;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_45

    .line 323
    :cond_3b
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFaceInfosTemp:[Lcom/tetras/hand/model/CvHandInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/tetras/hand/model/CvHandInfo;->clone()Lcom/tetras/hand/model/CvHandInfo;

    move-result-object v3

    aput-object v3, p1, v1

    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 315
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, [Lcom/tetras/hand/model/CvHandInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tetras/hand/model/CvHandInfo;

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mFaceInfosTemp:[Lcom/tetras/hand/model/CvHandInfo;

    :cond_53
    return-void
.end method

.method public setDetAllowed(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mIsDetAllowed:Z

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method public unInitGesture()V
    .registers 3

    .line 93
    sget-object v0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInitGesture]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mCvHandTrackCallback:Lcom/transsion/camera/feature/setting/gesturedetection/ICvHandTrackCallback;

    .line 95
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->mNv21:[B

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/gesturedetection/GestureDetectAlgorithmImpl;->doOnPause()V

    return-void
.end method
