.class public abstract Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;
.super Lcom/transsion/camera/app/common/mode/CameraMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode$VideoScannerConnectionClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CameraMode;",
        "Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;",
        "Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;",
        "Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;",
        "Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_VIDEO_QUALITY:I = 0x6

.field protected static final INVALID_VIDEO_QUALITY:I = -0x1


# instance fields
.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mCurrentFile:Ljava/lang/String;

.field private mFirstRelationHeaderKey:Ljava/lang/String;

.field protected mIsVideoRecording:Z

.field protected mPaused:Z

.field protected mRestartPreview:Z

.field protected mSettingReady:Z

.field protected mShutterLongClick:Z

.field protected volatile mState:I

.field private mTempMediaRecorderFile:Landroid/os/MemoryFile;

.field private mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

.field protected mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

.field protected mVideoQuality:I

.field protected mVideoRecodingOrientation:I

.field protected mVideoRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

.field private mVideoScannerClient:Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode$VideoScannerConnectionClient;

.field protected mVideoScannerConnection:Landroid/media/MediaScannerConnection;

.field protected mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 68
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mState:I

    const/4 p1, -0x1

    .line 70
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoQuality:I

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mPaused:Z

    .line 74
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mSettingReady:Z

    .line 75
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mShutterLongClick:Z

    .line 76
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mRestartPreview:Z

    .line 77
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mIsVideoRecording:Z

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mCurrentFile:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFile:Landroid/os/MemoryFile;

    .line 93
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    return-void
.end method

.method private checkStorageSpace()Z
    .registers 7

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[checkStorageSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 392
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_25

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] space is not enough, can not record video."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 395
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->showInfo(I)V

    return v1

    :cond_25
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_37

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] StorageVolume is removed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 399
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->showInfo(I)V

    return v1

    :cond_37
    const/4 p0, 0x1

    return p0
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


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public checkPermitBeforeStart()Z
    .registers 1

    .line 382
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->checkStorageSpace()Z

    move-result p0

    return p0
.end method

.method public createFileSpec()Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .registers 1

    .line 318
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 9

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 325
    new-instance v2, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;-><init>(Landroid/media/CamcorderProfile;)V

    .line 326
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    .line 329
    :try_start_c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    if-nez p1, :cond_36

    .line 330
    new-instance p1, Landroid/os/MemoryFile;

    const-string/jumbo v3, "vlogTempMediaRecorderFile.tmp"

    const/16 v4, 0x400

    invoke-direct {p1, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFile:Landroid/os/MemoryFile;

    .line 331
    const-class p1, Landroid/os/MemoryFile;

    const-string v3, "getFileDescriptor"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-static {p1, v3, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 332
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFile:Landroid/os/MemoryFile;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_36

    :catch_34
    move-exception p1

    goto :goto_3c

    .line 335
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v2, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3b} :catch_34

    goto :goto_3f

    .line 337
    :goto_3c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    :goto_3f
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->build()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createMediaInfo] cost time\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", fullConfig: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    return-object p0
.end method

.method protected createVlogHelper()Lcom/transsion/camera/feature/mode/vlog/VlogHelper;
    .registers 1

    .line 142
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;-><init>()V

    return-object p0
.end method

.method protected deleteTempMediaRecorderFile()V
    .registers 3

    const/4 v0, 0x0

    .line 503
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 504
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFile:Landroid/os/MemoryFile;

    if-eqz v1, :cond_c

    .line 505
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 506
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mTempMediaRecorderFile:Landroid/os/MemoryFile;

    :cond_c
    return-void
.end method

.method public getDataFlowType()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/VlogRestriction;->getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 149
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/VlogRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 117
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 267
    invoke-virtual {p0, p4, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForWide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 268
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
    :cond_f
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_27

    .line 272
    :cond_16
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 273
    const-string p0, "0"

    return-object p0

    :cond_27
    :goto_27
    return-object p5
.end method

.method public getOutputDataType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public abstract synthetic getPreviewSize(Ljava/util/List;)Landroid/util/Size;
.end method

.method public getSettingGroup()J
    .registers 5

    .line 122
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x1a

    return p0
.end method

.method protected getVideoOrientation()I
    .registers 6

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 369
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getVideoOrientation mCameraDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 373
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecodingOrientation:I

    .line 375
    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getVideoHintOrientation(ILjava/lang/String;Z)I

    move-result v0

    .line 376
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoOrientation mirror: "

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

.method public getVideoRecodingOrientation()I
    .registers 1

    .line 359
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecodingOrientation:I

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 100
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->createVlogHelper()Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    move-object p4, p0

    .line 103
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    iget-object p2, p4, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    iget-object p3, p4, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    move-object p5, p4

    move-object p6, p4

    move-object p7, p4

    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/VlogHelper;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)V

    move-object p1, p0

    move-object p0, p4

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/vlog/R$integer;->vlog_mode_support_video_quality:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->setQuality(I)V

    .line 107
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->refreshShutterType()V

    .line 108
    const-string p1, "key_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 109
    const-string p1, "key_super_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 110
    const-string p1, "key_storage"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mPaused:Z

    return-void
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 4

    .line 259
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result p0

    return p0
.end method

.method protected needAudio()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected notifyRawActionToUI(I)V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_20

    .line 575
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

    .line 580
    :cond_20
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected notifyRecordStateChanged(Z)V
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_c

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyRecordStateChanged mSettingController is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_c
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mIsVideoRecording:Z

    .line 431
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    .line 432
    const-string v0, "key_record_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p1, :cond_1d

    .line 433
    const-string p1, "on"

    goto :goto_1f

    :cond_1d
    const-string p1, "off"

    :goto_1f
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected notifyToAppUI(IILjava/lang/String;)V
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_20

    .line 439
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

    .line 444
    :cond_20
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 448
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode$1;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    .line 460
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

    .line 455
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_38

    .line 456
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    return-void

    .line 450
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_38

    .line 451
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_38
    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 182
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 591
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    .line 594
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->operationPrepared()V

    :cond_a
    return-void
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method public onMediaRecorderPaused()V
    .registers 2

    .line 528
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderPrepareAbort()V
    .registers 2

    const/16 v0, 0x10

    .line 568
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRawActionToUI(I)V

    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRecordStateChanged(Z)V

    return-void
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .registers 10

    .line 491
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->deleteTempMediaRecorderFile()V

    .line 492
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMediaRecorderPrepared, mode isValid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_20

    return-void

    .line 499
    :cond_20
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .registers 2

    const/16 v0, 0xf

    .line 486
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRawActionToUI(I)V

    return-void
.end method

.method public abstract synthetic onMediaRecorderProcessing()V
.end method

.method public onMediaRecorderResumed()V
    .registers 2

    .line 533
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 4

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->adjustRingStreamVolume(ZLandroid/content/Context;)V

    .line 523
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 4

    const/16 v0, 0x34

    .line 552
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRawActionToUI(I)V

    .line 553
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 554
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->stopRecording(Z)Z

    const/16 p2, 0x3b

    .line 555
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRawActionToUI(I)V

    .line 556
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x80

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_20

    const/4 v0, 0x3

    .line 558
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->showInfo(I)V

    :cond_20
    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    .line 562
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->showInfo(I)V

    :cond_26
    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 5

    .line 538
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->adjustRingStreamVolume(ZLandroid/content/Context;)V

    const/16 p2, 0x10

    .line 539
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRawActionToUI(I)V

    .line 540
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRecordStateChanged(Z)V

    .line 541
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->stopWithInValidFile(I)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onMediaRecorderStopping] stop with invalid file, reason:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method public bridge synthetic onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onSettingChangeDone(Ljava/lang/String;)V
    .registers 9

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChangeDone headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", firstRelationHeaderKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChangeDone mRestartPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mRestartPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " headerKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mRestartPreview:Z

    if-eqz p1, :cond_64

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 250
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    .line 251
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->prepareVideoData()V

    const/4 p0, 0x0

    .line 252
    iput-boolean p0, v1, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mRestartPreview:Z

    :cond_64
    return-void
.end method

.method public onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChangeStart headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", headValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", firstRelationHeaderKey:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    if-nez p2, :cond_2e

    .line 235
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    :cond_2e
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 215
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mSettingReady: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mSettingReady:Z

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 219
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mSettingReady:Z

    if-nez p2, :cond_30

    goto :goto_41

    .line 223
    :cond_30
    const-string p2, "key_anti_video"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    const-string p2, "key_super_anti_video"

    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    :goto_41
    return-void

    :cond_42
    :goto_42
    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mRestartPreview:Z

    return-void
.end method

.method public onSettingReady()V
    .registers 5

    .line 200
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingReady()V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onSettingReady] START"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mPaused:Z

    if-nez v0, :cond_11

    .line 204
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->prepareVideoData()V

    :cond_11
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mSettingReady:Z

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onSettingReady] cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mPaused: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mPaused:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 4

    .line 600
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShutterLongClick mState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 601
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mState:I

    const/4 p2, 0x5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1f

    return v0

    .line 605
    :cond_1f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mShutterLongClick:Z

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x15

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return v0
.end method

.method public onShutterUp(I)V
    .registers 4

    .line 612
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterUp, mShutterLongClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mShutterLongClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 613
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_28

    goto :goto_3b

    .line 617
    :cond_28
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mShutterLongClick:Z

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    .line 618
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mShutterLongClick:Z

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onVideoRestartPreviewed()V
    .registers 1

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mPaused:Z

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mSettingReady:Z

    .line 175
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mShutterLongClick:Z

    .line 177
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pause()V

    return-void
.end method

.method protected prepareVideoData()V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoQuality:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->qualityValid(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "prepareVideoData, videoQuality is invalid."

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$integer;->vlog_mode_support_video_quality:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->setQuality(I)V

    .line 298
    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoQuality:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareVideoData quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoQuality:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " videoFrameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mVideoFrameWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mVideoFrameHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->prepareVideoSurface(Landroid/media/CamcorderProfile;)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method

.method protected qualityValid(I)Z
    .registers 2

    if-ltz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected refreshShutterType()V
    .registers 3

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->getShutterTypeSelftimerOff()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    return-void
.end method

.method public resume()V
    .registers 4

    .line 160
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->resume()V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mPaused:Z

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoScannerClient:Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode$VideoScannerConnectionClient;

    if-nez v0, :cond_11

    .line 164
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode$VideoScannerConnectionClient;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode$VideoScannerConnectionClient;-><init>(Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoScannerClient:Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode$VideoScannerConnectionClient;

    .line 166
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_20

    .line 167
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoScannerClient:Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode$VideoScannerConnectionClient;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    :cond_20
    return-void
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 352
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->getVideoOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setVideoOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 353
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->needAudio()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    :cond_11
    return-void
.end method

.method protected setQuality(I)V
    .registers 2

    .line 283
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoQuality:I

    if-gez p1, :cond_7

    const/4 p1, 0x6

    .line 286
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoQuality:I

    :cond_7
    return-void
.end method

.method protected abstract showInfo(I)V
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_d

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[startRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 416
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecodingOrientation:I

    .line 417
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)V

    const/4 p1, 0x1

    .line 418
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyRecordStateChanged(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 419
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 420
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return p1
.end method

.method public stopRecording(Z)Z
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_d

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[stopRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 474
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRecording()V

    if-eqz p1, :cond_15

    .line 477
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startPreview()V

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method public unInit()V
    .registers 8

    .line 187
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unInit()V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->unInit()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    .line 192
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    .line 193
    const-string p0, "key_anti_video"

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 194
    const-string p0, "key_super_anti_video"

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 195
    const-string p0, "key_storage"

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 6

    .line 626
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStorageOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 627
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_22

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/BaseVlogMode;->mVideoRecorder:Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorder;->storageUnMount()V

    :cond_22
    return-void
.end method

.method protected updateVideoSurface(Landroid/view/Surface;IIIZ)V
    .registers 8

    move-object v0, p0

    .line 511
    iget-object p0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p0, :cond_d

    .line 513
    iget-object p0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateVideoSurface] mCameraDeviceControl is null when video mode update surface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_d
    move v1, p3

    move p3, p2

    move p2, p4

    move p4, v1

    .line 517
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMediaRecordDisplay(Landroid/view/Surface;IIIZ)V

    return-void
.end method
