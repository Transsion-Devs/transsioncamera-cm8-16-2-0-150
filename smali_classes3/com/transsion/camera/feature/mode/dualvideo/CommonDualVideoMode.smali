.class public abstract Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;
.super Lcom/transsion/camera/app/common/mode/CameraMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CameraMode;",
        "Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;",
        "Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;",
        "Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;"
    }
.end annotation


# static fields
.field protected static final INVALID_VIDEO_QUALITY:Ljava/lang/String; = "-1"

.field private static final MIME_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MIN_DURATION:J = 0x1f4L

.field private static final MP4_SUFFIX:Ljava/lang/String; = ".mp4"

.field protected static final QUALITY_SPLITTER:Ljava/lang/String; = "_"

.field private static final THUMBNAIL_DEFAULT_TARGET_WIDTH:I = 0x200


# instance fields
.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mDuration:J

.field protected mIsSaving:Z

.field protected mPaused:Z

.field protected mPreviewSize:Landroid/util/Size;

.field protected final mQualityLock:Ljava/lang/Object;

.field protected mRestartPreview:Z

.field private mShutterLongClick:Z

.field protected volatile mState:I

.field private mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mSupportPowerDownMode:Z

.field private mTempLocation:Landroid/location/Location;

.field protected mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

.field protected mVideoFrameHeight:I

.field protected mVideoFrameWidth:I

.field protected mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field protected mVideoQuality:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mupdateThumbnail(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    .line 79
    const-string v0, "-1"

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mQualityLock:Ljava/lang/Object;

    const/16 v0, 0x780

    .line 81
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    const/16 v0, 0x438

    .line 82
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    .line 83
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    .line 84
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    .line 93
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    .line 96
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mSupportPowerDownMode:Z

    .line 97
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 101
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 102
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Landroid/content/Context;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private checkStorageSpace()Z
    .registers 7

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[checkStorageSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 486
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_25

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] space in not enough, can not record video."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 489
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showInfo(I)V

    return v1

    :cond_25
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_37

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] StorageVolume is removed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 493
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showInfo(I)V

    return v1

    :cond_37
    const/4 p0, 0x1

    return p0
.end method

.method private getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;
    .registers 2

    .line 359
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 360
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    return-object p0

    .line 362
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private handRecorderStopped(IZ)V
    .registers 5

    .line 588
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->stopRecording(Z)Z

    .line 589
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->stopWithInValidFile(I)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 590
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handRecorderStopped] stop with invalid file, reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_26

    const/4 p1, 0x3

    .line 592
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showInfo(I)V

    .line 594
    :cond_26
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->deleteTempFile()V

    .line 595
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void

    .line 598
    :cond_2d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->isVideoFileValid()Z

    move-result p2

    if-nez p2, :cond_41

    .line 600
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[handRecorderStopped] video file too short"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->deleteTempFile()V

    .line 602
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void

    .line 606
    :cond_41
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->storingVideoFile(I)V

    return-void
.end method

.method protected static qualityValid(I)Z
    .registers 1

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private showLowStorageHint()V
    .registers 3

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->storage_full:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showStorageUnAvailableHint()V
    .registers 3

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->can_not_use_storage:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 802
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private stopWithInValidFile(I)Z
    .registers 2

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 4

    .line 390
    instance-of v0, p2, Ljava/io/FileDescriptor;

    if-eqz v0, :cond_a

    .line 391
    check-cast p2, Ljava/io/FileDescriptor;

    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V

    return-void

    .line 393
    :cond_a
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 394
    check-cast p2, Ljava/lang/String;

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    .line 397
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateThumbnail] file is invalid"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V
    .registers 11

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz p1, :cond_72

    if-nez v0, :cond_7

    goto :goto_72

    .line 674
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_17

    .line 675
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mTempLocation:Landroid/location/Location;

    :cond_17
    const/4 v2, 0x0

    .line 676
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mTempLocation:Landroid/location/Location;

    .line 677
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v2, p1, p3, p4, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createVideoContentValues(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;JLandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v1

    .line 679
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    if-eqz v5, :cond_3a

    .line 681
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p3, p4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_45

    .line 683
    :cond_3a
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v2, v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video(Ljava/lang/String;Ljava/lang/String;J)V

    .line 685
    :goto_45
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 687
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getTargetUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_5f

    .line 689
    new-instance p4, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;

    .line 690
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;Ljava/lang/Object;I)V

    .line 689
    invoke-interface {v0, v1, p3, p4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void

    .line 692
    :cond_5f
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    .line 693
    const-string p3, "_data"

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 694
    new-instance p4, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;

    invoke-direct {p4, p0, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1, p4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void

    .line 669
    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "addVideoToDataBase mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method protected checkMinDuration()Z
    .registers 8

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 633
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoFileInfo is null,we have not information to save"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 637
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMinDuration tempPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 639
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 640
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMinDuration, file size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getVideoTempFileSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_5d

    .line 642
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 643
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 644
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    goto :goto_63

    :catch_5b
    move-exception v0

    goto :goto_7f

    .line 646
    :cond_5d
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    .line 648
    :goto_63
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_82

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getVideoTempFileSize()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    cmp-long v0, v2, v4

    if-lez v0, :cond_82

    .line 649
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getRecordingDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_7e} :catch_5b

    goto :goto_82

    .line 652
    :goto_7f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 654
    :cond_82
    :goto_82
    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->isDurationInValid(J)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 655
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storingVideoFile duration too short, duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->deleteTempFile()V

    return v1

    :cond_a6
    const/4 p0, 0x0

    return p0
.end method

.method public checkPermitBeforeStart()Z
    .registers 1

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->checkStorageSpace()Z

    move-result p0

    return p0
.end method

.method protected configProfile(Landroid/media/CamcorderProfile;)V
    .registers 2

    return-void
.end method

.method public createFileSpec()Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;
    .registers 5

    .line 434
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    const-string/jumbo v3, "video/mp4"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;)Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
    .registers 2

    .line 791
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "CamcorderProfile is null,can not create Video File Info"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 415
    :cond_b
    new-instance v1, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;-><init>(Landroid/media/CamcorderProfile;)V

    .line 416
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    if-eqz p2, :cond_31

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez p1, :cond_21

    .line 420
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStorageOperator is null,can not create Video File Info"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 423
    :cond_21
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    .line 424
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileFolder(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 425
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z

    .line 426
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    .line 428
    :cond_31
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->build()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    return-object p1
.end method

.method protected deleteTempFile()V
    .registers 4

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTempVideoFile Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 4

    if-nez p2, :cond_e

    if-eqz p1, :cond_e

    .line 779
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 780
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    :cond_e
    return-void
.end method

.method protected getAnalyticsVideoDurationKey()Ljava/lang/String;
    .registers 1

    .line 125
    const-string p0, "key_video_duration"

    return-object p0
.end method

.method public abstract synthetic getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
.end method

.method public final getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 149
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method public getOutputDataType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewSize mVideoFrameWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVideoFrameHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 344
    new-instance v5, Landroid/util/Size;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    invoke-direct {v5, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 345
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-double v3, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    const/4 v8, 0x1

    move-object v2, p1

    .line 346
    invoke-static/range {v2 .. v10}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getRecordingDuration()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected getVideoOrientation()I
    .registers 6

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_d

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getVideoOrientation] mCameraDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 466
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_mirror"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 468
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 469
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUI;->getRecordingOrientation()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getVideoHintOrientation(ILjava/lang/String;Z)I

    move-result v0

    .line 470
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getVideoHintOrientation] mirror: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " --> "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method protected getVideoSavingMessage()Ljava/lang/String;
    .registers 2

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->saving_dialog_string:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 109
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getShutterTypeSelftimerOff()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    .line 111
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 112
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 113
    const-string p1, "key_video_quality"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    .line 115
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportPowerDownMode:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mSupportPowerDownMode:Z

    return-void
.end method

.method protected isDurationInValid(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_11

    if-lez p0, :cond_f

    const-wide/16 v0, 0x1f4

    cmp-long p0, p1, v0

    if-gez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public isSupportDualVideo()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportPowerSavingMode()Z
    .registers 1

    .line 242
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mSupportPowerDownMode:Z

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected needAudio()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public needRebuildMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract synthetic notifyCameraOperateAction(I)V
.end method

.method protected notifyRawActionToUI(I)V
    .registers 4

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_20

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyRawActionToUI] mAppUI is null when notify "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Maybe something wrong will happen"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 745
    :cond_20
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected notifyToAppUI(IILjava/lang/String;)V
    .registers 5

    .line 749
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_20

    .line 751
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[notifyToAppUI] mAppUI is null when notify "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Maybe something wrong will happen"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 755
    :cond_20
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method protected notifyToIdle()V
    .registers 4

    const/16 v0, 0x3b

    .line 732
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 733
    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 734
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/4 v0, 0x0

    .line 735
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mIsSaving:Z

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 759
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode$1;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    .line 771
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyToVideoUI action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 766
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_38

    .line 767
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    return-void

    .line 761
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_38

    .line 762
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_38
    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 2

    .line 338
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    return-void
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onMediaRecorderPaused()V
    .registers 2

    .line 536
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderPrepareAbort()V
    .registers 2

    const/16 v0, 0x10

    .line 563
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .registers 6

    .line 520
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p1

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateVideoSurface in onMediaRecorderPrepared. mode isValid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .registers 2

    const/16 v0, 0xf

    .line 515
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public onMediaRecorderProcessing()V
    .registers 1

    return-void
.end method

.method public onMediaRecorderResumed()V
    .registers 2

    .line 541
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 4

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->adjustRingStreamVolume(ZLandroid/content/Context;)V

    .line 530
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 531
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateLastClickTime()V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 5

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateRecordingHint(Z)V

    .line 553
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 554
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->handRecorderStopped(IZ)V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 3

    .line 546
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->adjustRingStreamVolume(ZLandroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onSettingChangeDone(Ljava/lang/String;)V
    .registers 4

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettingChangeDone mRestartPreview = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    if-eqz p1, :cond_2d

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 272
    const-string p1, "-1"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->prepareVideoData()I

    const/4 p1, 0x0

    .line 274
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    :cond_2d
    return-void
.end method

.method public onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 257
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string p2, "key_video_quality"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mRestartPreview:Z

    :cond_e
    return-void
.end method

.method public onSettingReady()V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingReady, mIsPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 229
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    if-nez v0, :cond_1f

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->prepareVideoData()I

    .line 232
    :cond_1f
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingReady()V

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 7

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShutterClick mState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 p1, 0x3e8

    .line 170
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_68

    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    const/4 v0, 0x6

    if-ge p1, v0, :cond_27

    goto :goto_68

    .line 175
    :cond_27
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2

    .line 179
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_50

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough, can not record photo."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showLowStorageHint()V

    return p2

    :cond_50
    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_61

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "StorageVolume is removed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->showStorageUnAvailableHint()V

    return p2

    :cond_61
    const/16 p1, 0xf

    .line 190
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    const/4 p0, 0x1

    return p0

    :cond_68
    :goto_68
    return p2
.end method

.method public onShutterLongClick(II)Z
    .registers 4

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShutterLongClick mState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    const/4 p2, 0x6

    const/4 v0, 0x1

    if-ge p1, p2, :cond_1f

    return v0

    .line 201
    :cond_1f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x15

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return v0
.end method

.method public onShutterUp(I)V
    .registers 4

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterUp, mShutterLongClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 209
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mState:I

    const/4 v0, 0x6

    if-ge p1, v0, :cond_28

    goto :goto_3b

    .line 213
    :cond_28
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    .registers 3

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 383
    :cond_7
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 384
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    const/16 p1, 0x200

    .line 385
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 386
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    .line 368
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 372
    :cond_7
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 373
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    const/16 p1, 0x200

    .line 374
    invoke-static {p2, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 375
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mTempLocation:Landroid/location/Location;

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 139
    :try_start_12
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    .line 140
    const-string v1, "-1"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_21

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mShutterLongClick:Z

    .line 144
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pause()V

    return-void

    :catchall_21
    move-exception p0

    .line 141
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method protected prepareVideoData()I
    .registers 6

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_7
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    if-nez v2, :cond_12

    .line 282
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :catchall_10
    move-exception p0

    goto :goto_87

    .line 284
    :cond_12
    const-string v0, "-1"

    .line 286
    :goto_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_10

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return v1

    .line 292
    :cond_19
    const-string v2, "_"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 293
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->qualityValid(I)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 294
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-nez v4, :cond_36

    return v1

    .line 299
    :cond_36
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 300
    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameWidth:I

    .line 301
    iget v3, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFrameHeight:I

    .line 303
    const-string v3, "6_60"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "8_60"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 304
    :cond_56
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_66

    .line 305
    iget v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v0, v0, 0x2

    .line 306
    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 309
    :cond_66
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareVideoData configRecorder quality:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->configProfile(Landroid/media/CamcorderProfile;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    const/4 p0, 0x1

    return p0

    :cond_86
    return v1

    .line 286
    :goto_87
    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_10

    throw p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 2

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->resume()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mTempLocation:Landroid/location/Location;

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mPaused:Z

    return-void
.end method

.method protected abstract sendNotification(Landroid/content/Context;)V
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 444
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->getVideoOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setVideoOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 445
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->needAudio()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    :cond_11
    return-void
.end method

.method protected abstract showInfo(I)V
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z
    .registers 4

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 502
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 503
    sget-object p1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return v1
.end method

.method public stopRecording(Z)Z
    .registers 2

    const/4 p1, 0x6

    .line 509
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->onCameraStateChanged(I)V

    const/4 p0, 0x1

    return p0
.end method

.method protected storingVideoFile(I)V
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 612
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz v0, :cond_25

    if-nez v1, :cond_9

    goto :goto_25

    .line 619
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->checkMinDuration()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 620
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void

    .line 625
    :cond_13
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/16 v0, 0x3a

    .line 626
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyRawActionToUI(I)V

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V

    return-void

    .line 614
    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storingVideoFile mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->notifyToIdle()V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 120
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unInit()V

    .line 121
    const-string v0, "key_video_quality"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method protected updateQuality(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateQuality new quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " old quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 323
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_34

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    return-object p0

    :cond_34
    if-nez v0, :cond_39

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoMode;->mVideoQuality:Ljava/lang/String;

    return-object p0

    :cond_39
    const-string p0, "-1"

    return-object p0
.end method
