.class Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;
.super Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCameraRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

.field private final mMediaStartCallback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

.field private final mNeedCreateVideoSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AsyncMediaRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 9

    .line 81
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)V

    .line 366
    new-instance p1, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder$1;-><init>(Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mMediaStartCallback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    .line 83
    iput-object p8, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 84
    iput-object p7, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mCameraRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    .line 85
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mCreateVideoSurfaceInPhotoMode:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mNeedCreateVideoSurface:Z

    return-void
.end method

.method private configMediaRecorder(Z)Z
    .registers 16

    const/4 v1, 0x0

    .line 119
    :try_start_1
    new-instance v0, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;-><init>()V

    .line 121
    invoke-virtual {v0, p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->fullConfig(Z)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->supportAudioZoom()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_18

    .line 124
    invoke-virtual {v0, v3}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->audioChannels(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    goto :goto_18

    :catch_14
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b4

    .line 127
    :cond_18
    :goto_18
    invoke-virtual {v0, v3}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->videoSource(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 129
    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->getVideoCodec()I

    move-result v3

    iput v3, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->getVideoBitRate()I

    move-result v2

    if-lez v2, :cond_2d

    .line 132
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iput v2, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 135
    :cond_2d
    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-interface {v2, v3, p1}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;->createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 137
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "create media info failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 141
    :cond_3f
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->isNeedAudio()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->audioNeeded(Z)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    const/4 v3, 0x1

    if-nez p1, :cond_89

    .line 143
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-nez v4, :cond_89

    .line 144
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget p1, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 145
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 146
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->inBackVideoEnhance1080p30fps()Z

    move-result v11

    .line 147
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v12

    iget-object v13, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mOverrideSize:Landroid/util/Size;

    const/4 v10, 0x0

    .line 144
    invoke-virtual/range {v5 .. v13}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;ZZLandroid/util/Size;)Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->releaseRecorder()V

    .line 150
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->sendMediaSurface(Z)V

    return v1

    .line 154
    :cond_89
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->setOutputFile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V

    if-eqz p1, :cond_92

    .line 157
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->setProfile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V

    goto :goto_96

    :cond_92
    const/4 p1, 0x0

    .line 159
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->setProfile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V

    .line 162
    :goto_96
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoOrientation()I

    move-result p1

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->needSwapVideoDimensions()Z

    move-result v2

    if-eqz v2, :cond_a4

    add-int/lit8 p1, p1, 0x5a

    .line 164
    rem-int/lit16 p1, p1, 0x168

    .line 166
    :cond_a4
    invoke-virtual {v0, p1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->orientationHint(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 167
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->setEncodingProfileLevel(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->build()Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->config(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b3} :catch_14

    return v3

    .line 170
    :goto_b4
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMediaRecorder exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private configRecorder(Z)Z
    .registers 5

    .line 96
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configRecorder fullConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->resetRecorder()V

    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->configMediaRecorder(Z)Z

    move-result v1

    if-nez v1, :cond_26

    .line 101
    const-string p0, "configRecorder configMediaRecorder failed"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_26
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->prepareMediaRecorder(Z)Z

    move-result p0

    return p0
.end method

.method private createTempRecordFile()Ljava/io/File;
    .registers 3

    .line 332
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTempRecordFile"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    .line 335
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 337
    :cond_16
    new-instance v0, Ljava/io/File;

    const-string v1, ".temp_record"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private inBackVideoEnhance1080p30fps()Z
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_enhance"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_quality"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_2c

    return v2

    :cond_2c
    if-eqz v0, :cond_3e

    .line 194
    const-string v0, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 195
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    if-nez p0, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    return v2
.end method

.method private isHLGOn()Z
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_hdr_format"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "value_hdr_hlg"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 262
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private isHdr10PlusOn()Z
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_hdr_10_plus"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 256
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private needSwapVideoDimensions()Z
    .registers 5

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 354
    const-string v1, "0"

    .line 355
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_sprd_video_2k"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    .line 358
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11"

    .line 357
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 359
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3a

    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method private prepareMediaRecorder(Z)Z
    .registers 14

    .line 292
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareRecorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mNeedCreateVideoSurface:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_57

    if-nez p1, :cond_57

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 297
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 298
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->createTempRecordFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->inBackVideoEnhance1080p30fps()Z

    move-result v9

    .line 299
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v10

    iget-object v11, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mOverrideSize:Landroid/util/Size;

    .line 296
    invoke-virtual/range {v3 .. v11}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;ZZLandroid/util/Size;)Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 300
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->sendMediaSurface(Z)V

    return v2

    .line 304
    :cond_57
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_61

    .line 305
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 308
    :cond_61
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v1

    monitor-enter v1

    .line 309
    :try_start_66
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_95

    .line 310
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    iget-object v5, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v5}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->setInputSurface(Landroid/view/Surface;)V

    .line 315
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_66 .. :try_end_77} :catchall_92

    .line 318
    :try_start_77
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->prepare()V

    if-nez p1, :cond_85

    .line 320
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->sendMediaSurface(Z)V

    goto :goto_85

    :catch_82
    move-exception v0

    move-object p1, v0

    goto :goto_8b

    .line 322
    :cond_85
    :goto_85
    const-string p1, "prepareRecorder end"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8a} :catch_82
    .catch Ljava/lang/IllegalStateException; {:try_start_77 .. :try_end_8a} :catch_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_8a} :catch_82

    return v2

    .line 325
    :goto_8b
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->sendMediaSurface(Z)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->handlePrepareException(Ljava/lang/Exception;)V

    return v4

    :catchall_92
    move-exception v0

    move-object p0, v0

    goto :goto_9c

    .line 312
    :cond_95
    :try_start_95
    const-string p0, "prepareRecorder: mSurface is not valid"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    monitor-exit v1

    return v4

    .line 315
    :goto_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_92

    throw p0
.end method

.method private resetRecorder()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-nez v0, :cond_16

    .line 110
    new-instance v0, Lcom/transsion/camera/featurelibs/media/RecorderClient;

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/featurelibs/media/RecorderClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    .line 111
    new-instance v1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;-><init>(Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->setRecorderListener(Lcom/transsion/camera/featurelibs/media/IRecorderListener;)V

    return-void

    .line 113
    :cond_16
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->reset()V

    return-void
.end method

.method private sendMediaSurface(Z)V
    .registers 14

    .line 341
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMediaSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->needSwapVideoDimensions()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 344
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v4, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V

    return-void

    :cond_2d
    move v6, p1

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    iget-object v7, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v9, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v10, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move v11, v6

    move-object v6, p1

    invoke-interface/range {v6 .. v11}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method private setEncodingProfileLevel(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;)V
    .registers 2

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->isHLGOn()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x2

    .line 178
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->setEncodingprofile(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    const/16 p0, 0x4000

    .line 179
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->setEncodingLevel(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    return-void

    :cond_10
    const/4 p0, -0x1

    .line 181
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->setEncodingprofile(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 182
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->setEncodingLevel(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    return-void
.end method

.method private setOutputFile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V
    .registers 7

    .line 199
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 200
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->outputFileDescriptor(Ljava/io/FileDescriptor;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    goto :goto_15

    .line 202
    :cond_e
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->outputFilePath(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 204
    :goto_15
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMaxDuration()I

    move-result p0

    if-lez p0, :cond_22

    .line 205
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMaxDuration()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->maxDuration(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 207
    :cond_22
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMaxFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_33

    .line 208
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getMaxFileSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->maxFileSize(J)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    :cond_33
    return-void
.end method

.method private setProfile(Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;)V
    .registers 7

    if-eqz p2, :cond_33

    .line 213
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->isNeedAudio()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 214
    sget-object p2, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProfile mAudioSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mAudioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget p2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mAudioSource:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_29

    .line 216
    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->audioSource(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    goto :goto_2d

    :cond_29
    const/4 p2, 0x5

    .line 218
    invoke-virtual {p1, p2}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->audioSource(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 221
    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->profile(Landroid/media/CamcorderProfile;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    return-void

    :cond_33
    if-eqz p2, :cond_46

    .line 223
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getCaptureFPS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_46

    .line 224
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getCaptureFPS()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->captureRate(D)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 227
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->profile(Landroid/media/CamcorderProfile;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    if-eqz p2, :cond_60

    .line 229
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getBitRateCoefficient()I

    move-result v0

    if-lez v0, :cond_60

    .line 230
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getBitRateCoefficient()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v0, v1

    .line 231
    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->videoEncodingBitRate(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    goto :goto_67

    .line 233
    :cond_60
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->videoEncodingBitRate(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    :goto_67
    if-eqz p2, :cond_77

    .line 235
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoFrameRate()I

    move-result v0

    if-lez v0, :cond_77

    .line 236
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoFrameRate()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->videoFrameRate(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    goto :goto_7e

    .line 238
    :cond_77
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->videoFrameRate(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 240
    :goto_7e
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->videoFrameWidth(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->videoFrameHeight(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget p0, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->videoEncoder(I)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    .line 244
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_a6

    .line 245
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->isNeedModifyIFrame()Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 246
    const-string/jumbo p2, "video-param-i-frames-interval=0"

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_a6
    const-string p2, "pending-limit=1"

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;->extraParam(Ljava/util/List;)Lcom/transsion/camera/featurelibs/media/param/MediaRecorderParam$Builder;

    return-void
.end method


# virtual methods
.method protected configRecorder(Landroid/os/Message;)V
    .registers 2

    .line 90
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->configRecorder(Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->configRecorder(Z)Z

    return-void
.end method

.method protected getVideoBitRate()I
    .registers 6

    .line 267
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->isHdr10PlusOn()Z

    move-result v0

    .line 268
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->isHLGOn()Z

    move-result v1

    .line 269
    sget-object v2, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoBitRate: isHdr10PlusOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isHLGOn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_30

    if-eqz v1, :cond_2b

    goto :goto_30

    .line 287
    :cond_2b
    invoke-super {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->getVideoBitRate()I

    move-result p0

    return p0

    .line 272
    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 273
    const-string v0, "6_60"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "6"

    .line 274
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_6f

    .line 276
    :cond_49
    const-string v0, "8"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    const v0, 0x2faf080

    goto :goto_72

    .line 278
    :cond_55
    const-string v0, "8_60"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    const v0, 0x3938700

    goto :goto_72

    .line 280
    :cond_61
    const-string v0, "5"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    const v0, 0x989680

    goto :goto_72

    :cond_6d
    const/4 v0, 0x0

    goto :goto_72

    :cond_6f
    :goto_6f
    const v0, 0x1312d00

    .line 283
    :goto_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoBitRate:  videoQuality: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", videoBitRate: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method protected startRecordingResult()Z
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mCameraRecorder:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->mMediaStartCallback:Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/recorder/AsyncMediaRecorder;->configRecorder(Z)Z

    move-result p0

    if-eqz p0, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method
