.class public abstract Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.super Lcom/transsion/camera/app/common/mode/CameraMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;
.implements Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;,
        Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;,
        Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ZOOM_VALUE:I

.field protected static final INVALID_RECORDING_TIME:Ljava/lang/String; = "0"

.field protected static final INVALID_VIDEO_QUALITY:Ljava/lang/String; = "-1"

.field protected static final MAX_LIMIT_DURATION_IN_FILP:I = 0x927c0

.field private static final MIN_DURATION:J = 0x1f4L

.field protected static final MSG_ON_SNAP_SHOT_START:I = 0x1

.field protected static final MSG_RETRIGGLE_SHUTTER_CLICK:I = 0x2

.field protected static final QUALITY_SPLITTER:Ljava/lang/String; = "_"

.field protected static final REDUCE_HEIGHT:I = 0x2d0

.field protected static final REDUCE_THRESHOLD:I = 0x438

.field protected static final THUMBNAIL_DEFAULT_TARGET_WIDTH:I = 0x200

.field private static final THUMBNAIL_DEFAULT_TIME_US:I = -0x1

.field protected static mDHdrAndRawSuperNightBothSupport:Z

.field private static mSatSupportAntiVideo:Z


# instance fields
.field protected mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mCaptureOrientation:I

.field protected mCurrentFile:Ljava/lang/String;

.field protected mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultAntiValueOn:Z

.field private mDefaultPreIspOn:Z

.field private mDefaultSuperAntiValueOn:Z

.field protected mDuration:J

.field private mFirstRelationHeaderKey:Ljava/lang/String;

.field private mFirstRelationHeaderValue:Ljava/lang/String;

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field protected mHandle:Landroid/os/Handler;

.field protected volatile mInTakingPicture:Z

.field mIsVideoHdrOff:Z

.field protected volatile mIsVideoRecording:Z

.field private mLastStreamId:I

.field private mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedCacheWhenQuitVIP:Z

.field private mNeedUnlockAfAe:Z

.field protected mPaused:Z

.field private mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

.field protected mPreOrientation:I

.field protected mPreviewSize:Landroid/util/Size;

.field protected final mQualityLock:Ljava/lang/Object;

.field private mRecorderInitSuccess:Z

.field protected mRestartPreview:Z

.field private mSatSupportWide:Z

.field private mSettingReady:Z

.field private mShutterLongClick:Z

.field protected mSnapShotCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;

.field protected volatile mState:I

.field protected mSuperAntiLowLightBvLimit:I

.field private mSuperAntiVideoRestrictionType:I

.field private mSupportAudioZoom:Z

.field private mSupportHFPSAntiVideo:Z

.field private mSupportSuperAntiVideoV2:Z

.field private mTempFileOutputStream:Ljava/io/FileOutputStream;

.field private mTempLocation:Landroid/location/Location;

.field private mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

.field protected mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

.field private mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

.field protected mTotalRemainedRecorderTime:J

.field protected mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

.field protected mVideoFrameHeight:I

.field protected mVideoFrameWidth:I

.field protected mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field protected mVideoQuality:Ljava/lang/String;

.field protected mVideoRatio:D

.field protected mVideoRecodingOrientation:I

.field private mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

.field protected mVideoScannerConnection:Landroid/media/MediaScannerConnection;

.field protected mVideoSuperNightBvLimit:I

.field protected mVideoSuperNightOutBvLimit:I

.field private mWaitforSateChanged:Z


# direct methods
.method public static synthetic $r8$lambda$5U_0SDgDhdZkaDDBrvSq0WWshCA(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->lambda$onVideoRestartPreviewed$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$C813tPDtEoDRppytf8FnhlEMTeE(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kM0b9EAxkOLyvXvdX3McGX-Mfnc(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->lambda$onMediaRecorderPrepareAbort$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPictureCallback(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 184
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x2710

    goto :goto_d

    :cond_b
    const/16 v0, 0x64

    :goto_d
    sput v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->DEFAULT_ZOOM_VALUE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 249
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    const/4 v0, -0x1

    .line 187
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    .line 188
    const-string v1, "-1"

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    .line 189
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 190
    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    .line 191
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 192
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    .line 193
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 203
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    const-wide/16 v1, 0x0

    .line 206
    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    .line 210
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    const/4 v3, 0x0

    .line 211
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 212
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    const/4 v4, 0x1

    .line 213
    iput v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    .line 215
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/16 v5, -0x14

    .line 216
    iput v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightBvLimit:I

    .line 217
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightOutBvLimit:I

    const/16 v5, 0x14

    .line 218
    iput v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSuperAntiLowLightBvLimit:I

    .line 221
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    .line 222
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    .line 223
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultPreIspOn:Z

    .line 224
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRecorderInitSuccess:Z

    .line 225
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCaptureOrientation:I

    .line 227
    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTotalRemainedRecorderTime:J

    .line 229
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 230
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    .line 233
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    .line 235
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 395
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 689
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 722
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 2165
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;

    .line 2187
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 250
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;

    invoke-direct {p1, p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Lcom/transsion/camera/app/common/mode/CommonVideoMode-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    .line 251
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 252
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 253
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDHdrAndRawSuperNightBothSupport:Z

    sput-boolean p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDHdrAndRawSuperNightBothSupport:Z

    .line 254
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatSupportAntiVideo:Z

    sput-boolean p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportAntiVideo:Z

    .line 255
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSuperAntiVideoRestrictionType:I

    .line 256
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportSuperAntiVideoV2:Z

    .line 257
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportHFPSAntiVideo:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportHFPSAntiVideo:Z

    return-void
.end method

.method private checkStorageSpace()Z
    .registers 7

    .line 1670
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1672
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[checkStorageSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1676
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getLeftSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_38

    .line 1677
    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkRemainedRecorderTime(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_38

    :cond_24
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_36

    .line 1682
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] StorageVolume is removed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1683
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    return v1

    :cond_36
    const/4 p0, 0x1

    return p0

    .line 1678
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] space in not enough, can not record video."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 1679
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    return v1
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .registers 1

    .line 996
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method private currentCameraFacingBack()Z
    .registers 3

    .line 981
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 984
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 985
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-nez p0, :cond_19

    return v0

    .line 989
    :cond_19
    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    if-nez p0, :cond_20

    return v0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private currentSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 3

    .line 747
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result p1

    .line 748
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_d

    return p1

    :cond_d
    if-eqz p1, :cond_17

    .line 752
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method private currentSettingSupportSAT(Lcom/transsion/camera/app/common/storage/DataStore;)Z
    .registers 5

    .line 756
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result v0

    if-nez p1, :cond_b

    return v0

    :cond_b
    if-eqz v0, :cond_1b

    .line 761
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultPreIspOn:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Lcom/transsion/camera/app/common/storage/DataStore;ZZZ)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    .line 725
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_33

    .line 726
    array-length p2, p1

    if-lez p2, :cond_33

    const/4 p2, 0x0

    .line 727
    aget p1, p1, p2

    .line 728
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    if-eq p2, p1, :cond_33

    .line 729
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    .line 730
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isSupportHighFps(Ljava/lang/String;)Z

    move-result p2

    .line 731
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setCameraFacing(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSATStreamIdChanged(IIZZ)V

    .line 733
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    :cond_33
    return-void
.end method

.method private getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;
    .registers 2

    .line 1463
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1464
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    return-object p0

    .line 1466
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private getBytePerS()J
    .registers 3

    .line 1850
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    if-nez v0, :cond_e

    .line 1852
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getBytePerS] mVideoMediaRecorderInfo is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1855
    :cond_e
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getBytePerS()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCameraForOpen(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;
    .registers 3

    .line 2292
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    .line 2293
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    .line 2294
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2295
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2297
    :cond_1d
    const-string p0, "0"

    return-object p0
.end method

.method private getLeftSpace()J
    .registers 3

    .line 1841
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_e

    .line 1843
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getLeftSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1846
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTargetCameraId()Ljava/lang/String;
    .registers 8

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1004
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_camera_zoom"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1005
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_preisp"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1006
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v3

    .line 1007
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTargetCameraId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1008
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    if-nez v3, :cond_88

    .line 1010
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->convertZoom(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1012
    :cond_4f
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isPreIspFakeTeleCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1013
    const-string v1, "off"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    if-eqz v3, :cond_68

    .line 1014
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1015
    :cond_68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6f
    if-eqz v3, :cond_88

    .line 1019
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1021
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->convertZoom(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_88
    return-object v0
.end method

.method private getVideoSize(Landroid/media/CamcorderProfile;)Landroid/util/Size;
    .registers 3

    .line 530
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 531
    new-instance p0, Landroid/util/Size;

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->getPictureForVideoQuality(I)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget p1, p1, Landroid/media/CamcorderProfile;->quality:I

    .line 532
    invoke-static {p1}, Lcom/transsion/camera/utils/VideoQualityUtils;->getPictureForVideoQuality(I)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 534
    :cond_22
    new-instance p0, Landroid/util/Size;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private handRecorderStopped(IZ)V
    .registers 9

    .line 1930
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecording(Z)Z

    .line 1932
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopWithInValidFile(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_34

    .line 1933
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[handRecorderStopped] stop with invalid file, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2a

    const/4 p1, 0x3

    .line 1935
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    .line 1937
    :cond_2a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 1938
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1939
    invoke-virtual {p0, v2, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1942
    :cond_34
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isVideoFileValid()Z

    move-result p2

    if-nez p2, :cond_4b

    .line 1944
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[handRecorderStopped] video file too short"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 1946
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1947
    invoke-virtual {p0, v2, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1951
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->storingVideoFile(I)V

    return-void
.end method

.method private isBackLongFocusCamera(Ljava/lang/String;)Z
    .registers 4

    .line 2416
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2420
    :cond_6
    const-string v1, "key_camera_zoom"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2421
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2422
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2423
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->convertZoom(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object p1

    .line 2426
    :cond_26
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isDVHintShowing()Z
    .registers 4

    .line 552
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 555
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_f

    return v1

    .line 558
    :cond_f
    const-string v0, "key_dv_template_entrance"

    const-string v2, "key_state_dv_hint_showing_in_videomode"

    invoke-interface {p0, v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->querySettingUIState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUI$UIState;->ON:Lcom/transsion/camera/app/common/IAppUI$UIState;

    if-ne p0, v0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method private isVideoCameraSupportCurrentQuality(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 5

    .line 2395
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 2396
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    .line 2395
    const-string v2, "key_video_quality"

    invoke-virtual {v0, v2, v1, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2397
    const-string v0, "6_60"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    return v1

    .line 2400
    :cond_21
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 2401
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2402
    const-string v0, "_"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2404
    :try_start_39
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 2405
    new-instance v0, Landroid/util/Size;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v2, p1}, Landroid/util/Size;-><init>(II)V

    .line 2406
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_50} :catch_54

    if-eqz p0, :cond_54

    const/4 p0, 0x1

    return p0

    :catch_54
    :cond_54
    return v1
.end method

.method private isWideCameraOpen(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1035
    :cond_4
    const-string/jumbo p0, "wide_camera"

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1036
    const-string p1, "on"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onMediaRecorderPrepareAbort$1()V
    .registers 1

    .line 1902
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p0, :cond_7

    .line 1903
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->markEndWaitVideoRecordEndAction()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onVideoRestartPreviewed$0()V
    .registers 1

    .line 1426
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p0, :cond_7

    .line 1427
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->markEndWaitVideoRecordEndAction()V

    :cond_7
    return-void
.end method

.method private needReduceFPSTo24(Ljava/lang/String;)Z
    .registers 4

    .line 1366
    const-string v0, "8"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "on"

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_enhance"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    :cond_18
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_portrait"

    .line 1367
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p1, "key_video_spot"

    .line 1368
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p0, 0x0

    return p0

    :cond_37
    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method private needUpdatePreviewSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1209
    const-string v0, "key_video_portrait"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 1210
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p1, "key_video_quality"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a7

    const/4 p1, 0x5

    .line 1211
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    :cond_29
    return v1

    .line 1214
    :cond_2a
    const-string v0, "key_video_facebeauty"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1215
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_a7

    return v1

    .line 1218
    :cond_3b
    const-string v0, "key_360_video_hdr"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 1219
    const-string p0, "key_video_hdr_normal"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_hdr_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    return v1

    .line 1222
    :cond_5c
    const-string p0, "key_dol_video_hdr"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_65

    return v1

    .line 1224
    :cond_65
    const-string p0, "key_video_super_night"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_86

    .line 1225
    const-string p0, "key_video_super_night_none"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_super_night_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_super_night_scene_4k"

    .line 1226
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    return v1

    .line 1229
    :cond_86
    const-string p0, "key_video_super_night_yuv"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 1230
    const-string p0, "key_video_super_night_yuv_none"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_super_night_yuv_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_super_night_yuv_scene_4k"

    .line 1231
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    return v1

    :cond_a7
    const/4 p0, 0x0

    return p0
.end method

.method private notifyVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    .registers 6

    .line 1526
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoFileSaved mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pocketScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1526
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1528
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_3b

    const/16 p0, 0x200

    .line 1529
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1530
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/manager/ThumbnailCache;->notifyFileSaved(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :cond_3b
    return-void
.end method

.method private notifyVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 1495
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoFileSaved mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pocketScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1495
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1497
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_3b

    const/16 p0, 0x200

    .line 1498
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1499
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/manager/ThumbnailCache;->notifyFileSaved(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :cond_3b
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

.method private retriggleShutterClick()V
    .registers 7

    .line 1411
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getVoiceIntent()[Z

    move-result-object v0

    if-eqz v0, :cond_37

    const/4 v1, 0x0

    .line 1413
    aget-boolean v1, v0, v1

    const/4 v2, 0x2

    .line 1414
    aget-boolean v0, v0, v2

    .line 1415
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[retriggleShutterClick] videoIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mOpenOnly = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_37

    if-nez v0, :cond_37

    .line 1417
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_37
    return-void
.end method

.method private settingRelateSwitchCamera(Ljava/lang/String;)Z
    .registers 2

    .line 960
    const-string p0, "key_anti_video"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_super_anti_video"

    .line 961
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_portrait"

    .line 962
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_spot"

    .line 963
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_facebeauty"

    .line 964
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_quality"

    .line 965
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_360_video_hdr"

    .line 966
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_dol_video_hdr"

    .line 967
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_enhance_yuv"

    .line 969
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_super_night"

    .line 970
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_enhance"

    .line 971
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_preisp"

    .line 972
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_filter"

    .line 973
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_effect"

    .line 974
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_frame"

    .line 975
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_hdr_10_plus"

    .line 976
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_asd"

    .line 977
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    goto :goto_8b

    :cond_89
    const/4 p0, 0x0

    return p0

    :cond_8b
    :goto_8b
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

.method private updatePreviewSizeOnSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1240
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportLiteFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1241
    const-string v0, "key_face_beauty"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1242
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updatePreviewSizeOnSettingChangeStart], headValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , mFirstRelationHeaderValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1243
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_39

    const/4 p1, 0x1

    .line 1244
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    .line 1246
    :cond_39
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    :cond_3b
    return-void
.end method

.method private static videoAntiVideoSupportSAT(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 930
    sget-boolean v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportAntiVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 931
    const-string p0, "super"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 933
    :cond_d
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 934
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private static videoHdrSupportSAT(Ljava/util/List;)Z
    .registers 6

    .line 938
    sget-boolean v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDHdrAndRawSuperNightBothSupport:Z

    const/4 v1, 0x2

    const-string v2, "off"

    if-eqz v0, :cond_10

    .line 939
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 941
    :cond_10
    const-string v0, "key_video_hdr_normal"

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_27
    const/4 v0, 0x1

    .line 942
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    return v0

    :cond_3d
    return v3
.end method

.method private static videoQualitySupportSAT(Ljava/lang/String;)Z
    .registers 3

    .line 947
    const-string v0, "6_60"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    const-string v0, "8_60"

    .line 948
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 949
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoSatSupport4k()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_1f
    const-string v0, "11"

    .line 950
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move p0, v1

    :goto_2b
    xor-int/2addr p0, v1

    return p0
.end method

.method private videoSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 833
    const-string v2, "key_anti_video"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 834
    const-string v3, "off"

    if-nez v2, :cond_10

    move-object v4, v3

    goto :goto_11

    :cond_10
    move-object v4, v2

    .line 835
    :goto_11
    const-string v2, "key_super_anti_video"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move-object v5, v3

    goto :goto_1c

    :cond_1b
    move-object v5, v2

    .line 837
    :goto_1c
    const-string v2, "key_video_portrait"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    move-object v6, v3

    goto :goto_27

    :cond_26
    move-object v6, v2

    .line 839
    :goto_27
    const-string v2, "key_video_spot"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_32

    move-object/from16 v19, v3

    goto :goto_34

    :cond_32
    move-object/from16 v19, v2

    .line 841
    :goto_34
    const-string v2, "key_video_facebeauty"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 842
    const-string/jumbo v2, "video_facebeauty_off"

    :cond_3f
    move-object v7, v2

    .line 843
    const-string v2, "key_video_makeup"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4a

    move-object v15, v3

    goto :goto_4b

    :cond_4a
    move-object v15, v2

    .line 845
    :goto_4b
    const-string v2, "key_360_video_hdr"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_54

    move-object v2, v3

    .line 847
    :cond_54
    const-string v8, "key_dol_video_hdr"

    invoke-interface {v1, v8}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5d

    move-object v8, v3

    .line 849
    :cond_5d
    const-string v9, "key_com_video_hdr"

    invoke-interface {v1, v9}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_66

    move-object v9, v3

    .line 851
    :cond_66
    const-string v10, "key_video_quality"

    invoke-interface {v1, v10}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 852
    const-string v11, "key_video_enhance"

    invoke-interface {v1, v11}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_76

    move-object v12, v3

    goto :goto_77

    :cond_76
    move-object v12, v11

    .line 854
    :goto_77
    const-string v11, "key_video_asd"

    invoke-interface {v1, v11}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_80

    move-object v11, v3

    .line 856
    :cond_80
    const-string v13, "key_video_super_night"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_8a

    move-object v14, v3

    goto :goto_8b

    :cond_8a
    move-object v14, v13

    .line 858
    :goto_8b
    const-string v13, "key_video_enhance_yuv"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_96

    move-object/from16 v16, v3

    goto :goto_98

    :cond_96
    move-object/from16 v16, v13

    .line 860
    :goto_98
    const-string v13, "key_video_preisp"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a3

    move-object/from16 v17, v3

    goto :goto_a5

    :cond_a3
    move-object/from16 v17, v13

    .line 862
    :goto_a5
    const-string v13, "key_video_filter"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_b1

    move-object v13, v3

    move-object/from16 v21, v13

    goto :goto_b3

    :cond_b1
    move-object/from16 v21, v3

    .line 864
    :goto_b3
    const-string v3, "filter_default"

    invoke-static {v3, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_be

    move-object/from16 v18, v21

    goto :goto_c0

    :cond_be
    move-object/from16 v18, v13

    .line 867
    :goto_c0
    const-string v3, "key_video_effect"

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ca

    move-object/from16 v3, v21

    .line 869
    :cond_ca
    const-string v13, "key_video_frame"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_d5

    move-object/from16 v20, v21

    goto :goto_d7

    :cond_d5
    move-object/from16 v20, v13

    .line 871
    :goto_d7
    const-string v13, "key_video_hdr_10_plus"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e2

    move-object/from16 v22, v21

    goto :goto_e4

    :cond_e2
    move-object/from16 v22, v1

    .line 873
    :goto_e4
    filled-new-array {v2, v8, v9}, [Ljava/lang/String;

    move-result-object v1

    .line 875
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v13, v9

    move-object v9, v1

    move-object v1, v13

    move-object v13, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v3

    move-object v3, v8

    move-object v8, v10

    move-object v10, v12

    move-object v12, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    .line 873
    invoke-static/range {v4 .. v20}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v20, v18

    move-object/from16 v18, v16

    move-object/from16 v16, v14

    move-object v14, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v15

    move-object v15, v13

    if-eqz v9, :cond_179

    .line 882
    iget-boolean v9, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    const-string v13, "on"

    if-eqz v9, :cond_11c

    move-object v9, v13

    :goto_119
    move-object/from16 p1, v6

    goto :goto_11f

    :cond_11c
    move-object/from16 v9, v21

    goto :goto_119

    .line 885
    :goto_11f
    iget-boolean v6, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    if-eqz v6, :cond_130

    .line 886
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAiAntiVideo:Z

    if-eqz v6, :cond_12e

    .line 887
    const-string v6, "ai"

    goto :goto_132

    :cond_12e
    move-object v6, v13

    goto :goto_132

    :cond_130
    move-object/from16 v6, v21

    .line 891
    :goto_132
    iget-object v13, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move-object/from16 v21, v7

    const-string v7, "key_anti_video_manual_value"

    move-object/from16 v23, v8

    invoke-virtual {v13}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v7, v9, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 892
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v8, "key_super_anti_video_manual_value"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v6, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15d

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15b

    goto :goto_15d

    :cond_15b
    const/4 v0, 0x1

    return v0

    .line 895
    :cond_15d
    :goto_15d
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 897
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v8, p1

    move-object v6, v7

    move-object v13, v11

    move-object/from16 v9, v21

    move-object v7, v0

    move-object v11, v1

    move-object/from16 v21, v19

    move-object/from16 v19, v12

    move-object v12, v10

    move-object/from16 v10, v23

    .line 895
    invoke-static/range {v6 .. v22}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_179
    const/4 v0, 0x0

    return v0
.end method

.method private videoSettingSupportSAT(Lcom/transsion/camera/app/common/storage/DataStore;ZZZ)Z
    .registers 27

    move-object/from16 v0, p1

    .line 766
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_anti_video_manual_value"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    const-string v2, "on"

    const-string v4, "off"

    if-eqz p2, :cond_18

    if-nez v1, :cond_16

    move-object v1, v2

    :cond_16
    :goto_16
    move-object v5, v1

    goto :goto_1c

    :cond_18
    if-nez v1, :cond_16

    move-object v1, v4

    goto :goto_16

    .line 772
    :goto_1c
    const-string v1, "key_super_anti_video_manual_value"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_2d

    if-nez v1, :cond_2b

    move-object v1, v2

    :cond_2b
    :goto_2b
    move-object v6, v1

    goto :goto_31

    :cond_2d
    if-nez v1, :cond_2b

    move-object v1, v4

    goto :goto_2b

    .line 778
    :goto_31
    const-string v1, "key_video_portrait"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v4, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    move-object v7, v4

    goto :goto_40

    :cond_3f
    move-object v7, v1

    .line 780
    :goto_40
    const-string v1, "key_video_spot"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v4, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4f

    move-object/from16 v20, v4

    goto :goto_51

    :cond_4f
    move-object/from16 v20, v1

    .line 782
    :goto_51
    const-string v1, "key_video_facebeauty"

    .line 783
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    .line 782
    const-string/jumbo v9, "video_facebeauty_off"

    invoke-virtual {v0, v1, v9, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_62

    move-object v8, v9

    goto :goto_63

    :cond_62
    move-object v8, v1

    .line 785
    :goto_63
    const-string v1, "key_video_makeup"

    .line 786
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 785
    invoke-virtual {v0, v1, v4, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_71

    move-object v14, v4

    goto :goto_72

    :cond_71
    move-object v14, v1

    .line 788
    :goto_72
    const-string v1, "key_360_video_hdr"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v1, v4, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7f

    move-object v1, v4

    .line 790
    :cond_7f
    const-string v9, "key_dol_video_hdr"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v4, v10}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8c

    move-object v9, v4

    .line 792
    :cond_8c
    const-string v10, "key_com_video_hdr"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v4, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_99

    move-object v10, v4

    .line 794
    :cond_99
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->needNewVideoMemory()Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentCameraFacingBack()Z

    move-result v11

    if-eqz v11, :cond_b2

    .line 796
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_c3

    .line 797
    :cond_b2
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_c3

    .line 798
    :cond_bf
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v11

    .line 799
    :goto_c3
    const-string v12, "key_video_quality"

    invoke-virtual {v0, v12, v4, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 800
    const-string v12, "key_video_enhance"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v4, v13}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_d6

    move-object v12, v4

    .line 802
    :cond_d6
    const-string v13, "key_video_asd"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v13, v4, v15}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_e3

    move-object v13, v4

    .line 804
    :cond_e3
    const-string v15, "key_video_super_night"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v15, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f0

    move-object v3, v4

    .line 806
    :cond_f0
    const-string v15, "key_video_enhance_yuv"

    move-object/from16 v17, v2

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_100

    move-object v15, v4

    goto :goto_101

    :cond_100
    move-object v15, v2

    .line 808
    :goto_101
    const-string v2, "key_video_preisp"

    move-object/from16 p0, v3

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    move-object/from16 p2, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_119

    if-nez v2, :cond_116

    move-object/from16 v2, v17

    :cond_116
    :goto_116
    move-object/from16 v16, v2

    goto :goto_11d

    :cond_119
    if-nez v2, :cond_116

    move-object v2, v4

    goto :goto_116

    .line 814
    :goto_11d
    const-string v2, "key_video_filter"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12a

    move-object v2, v4

    .line 816
    :cond_12a
    const-string v3, "filter_default"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_135

    move-object/from16 v17, v4

    goto :goto_137

    :cond_135
    move-object/from16 v17, v2

    .line 819
    :goto_137
    const-string v2, "key_video_effect"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_146

    move-object/from16 v18, v4

    goto :goto_148

    :cond_146
    move-object/from16 v18, v2

    .line 821
    :goto_148
    const-string v2, "key_video_frame"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_157

    move-object/from16 v19, v4

    goto :goto_159

    :cond_157
    move-object/from16 v19, v2

    .line 823
    :goto_159
    const-string v2, "key_video_hdr_10_plus"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_168

    move-object/from16 v21, v4

    goto :goto_16a

    :cond_168
    move-object/from16 v21, v0

    .line 825
    :goto_16a
    filled-new-array {v1, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v5, p2

    move-object v9, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, p0

    .line 825
    invoke-static/range {v5 .. v21}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18

    .line 911
    const-string v0, "off"

    invoke-virtual {v0, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p9

    if-eqz p9, :cond_6b

    .line 912
    invoke-static/range {p0 .. p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoAntiVideoSupportSAT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 913
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    move-object/from16 p0, p15

    .line 914
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    const-string/jumbo p0, "video_facebeauty_off"

    .line 915
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 916
    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 917
    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 918
    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 919
    invoke-virtual {v0, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 920
    invoke-virtual {v0, p12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 921
    invoke-virtual {v0, p13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 922
    invoke-virtual {v0, p14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 923
    invoke-virtual {v0, p11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    move-object/from16 p0, p16

    .line 924
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 925
    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoQualitySupportSAT(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 926
    invoke-static {p5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoHdrSupportSAT(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_6b

    const/4 p0, 0x1

    return p0

    :cond_6b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V
    .registers 11

    .line 2013
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz p1, :cond_86

    if-nez v0, :cond_8

    goto/16 :goto_86

    .line 2020
    :cond_8
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_18

    .line 2021
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    :cond_18
    const/4 v2, 0x0

    .line 2022
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 2023
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVideoToDataBase duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2024
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v2, p1, p3, p4, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createVideoContentValues(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;JLandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v1

    .line 2026
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    if-eqz v5, :cond_51

    .line 2028
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p3, p4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setKeyVideoDurationAndDuration(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5c

    .line 2030
    :cond_51
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v2, v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setKeyVideoDurationAndDuration(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2032
    :goto_5c
    const-string p3, "_data"

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    .line 2033
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getTargetUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_77

    .line 2035
    new-instance p4, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;

    .line 2036
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Ljava/lang/Object;I)V

    .line 2035
    invoke-interface {v0, v1, p3, p4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void

    .line 2038
    :cond_77
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    .line 2039
    new-instance p3, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    invoke-direct {p3, p0, p4, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1, p3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void

    .line 2015
    :cond_86
    :goto_86
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "addVideoToDataBase mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method protected autoWatermark()Z
    .registers 2

    .line 2242
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_d

    .line 2243
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "autoWatermark mSettingController is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2246
    :cond_d
    const-string p0, "key_auto_watermark"

    .line 2247
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2246
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 2238
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method protected checkMinDuration()Z
    .registers 8

    .line 1986
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 1987
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoFileInfo is null,we have not information to save"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1991
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    .line 1992
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1993
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

    if-eqz v2, :cond_47

    .line 1995
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1996
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 1997
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    goto :goto_51

    :catch_45
    move-exception v0

    goto :goto_4e

    .line 1999
    :cond_47
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4d} :catch_45

    goto :goto_51

    .line 2002
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2004
    :goto_51
    iget-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isDurationInValid(J)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2005
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storingVideoFile duration too short, duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    return v1

    :cond_75
    const/4 p0, 0x0

    return p0
.end method

.method public checkPermitBeforeStart()Z
    .registers 1

    .line 1666
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkStorageSpace()Z

    move-result p0

    return p0
.end method

.method protected checkRemainedRecorderTime(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    .line 1812
    const-string v3, "0"

    if-gtz v2, :cond_10

    .line 1813
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[checkRemainedRecorderTime] no enough space"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3

    .line 1816
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getBytePerS()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-gtz v0, :cond_21

    .line 1818
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[checkRemainedRecorderTime] bytePerS is error"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1822
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkRemainedRecorderTime] leftSpace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytePerS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1824
    div-long/2addr p1, v4

    long-to-int p1, p1

    .line 1825
    div-int/lit16 p1, p1, 0x3e8

    if-gtz p1, :cond_4d

    .line 1827
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[checkRemainedRecorderTime] totalSeconds is 0."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3

    .line 1830
    :cond_4d
    rem-int/lit8 p0, p1, 0x3c

    .line 1831
    div-int/lit8 p2, p1, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    .line 1832
    div-int/lit16 p1, p1, 0xe10

    if-lez p1, :cond_70

    .line 1834
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d:%02d:%02d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1836
    :cond_70
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%02d:%02d"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected computeRemainedRecorderTime()Ljava/lang/String;
    .registers 9

    .line 1785
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gtz v4, :cond_13

    .line 1787
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[computeRemainedRecorderTime] no enough space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v5

    .line 1790
    :cond_13
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getBytePerS()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-gtz v2, :cond_23

    .line 1792
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[computeRemainedRecorderTime] bytePerS is error"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v5

    .line 1796
    :cond_23
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[computeRemainedRecorderTime] leftSpace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " bytePerS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1798
    div-long/2addr v0, v6

    .line 1799
    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTotalRemainedRecorderTime:J

    long-to-int p0, v0

    .line 1800
    div-int/lit16 p0, p0, 0x3e8

    .line 1801
    rem-int/lit8 v0, p0, 0x3c

    .line 1802
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 1803
    div-int/lit16 p0, p0, 0xe10

    if-lez p0, :cond_6a

    .line 1805
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%d:%02d:%02d"

    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1807
    :cond_6a
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d:%02d"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createFileSpec()Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
    .registers 2

    .line 2265
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;
    .registers 7

    .line 1589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1590
    new-instance v2, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;-><init>(Landroid/media/CamcorderProfile;)V

    .line 1591
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    if-eqz p2, :cond_33

    .line 1593
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 p2, 0x0

    if-nez p1, :cond_1b

    .line 1595
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStorageOperator is null,can not create Video File Info"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2

    .line 1598
    :cond_1b
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    .line 1599
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileFolder(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 1600
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z

    move-result p1

    if-nez p1, :cond_30

    const/4 p1, 0x7

    .line 1601
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    return-object p2

    .line 1604
    :cond_30
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    .line 1618
    :cond_33
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->build()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 1619
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMediaInfo time "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1620
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    return-object p0
.end method

.method protected deleteTempFile()V
    .registers 4

    .line 1919
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 1921
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

.method protected deleteTempMediaRecorderFile()V
    .registers 3

    const/4 v0, 0x0

    .line 1755
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 1756
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1757
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 4

    if-nez p2, :cond_e

    if-eqz p1, :cond_e

    .line 2231
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 2232
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    :cond_e
    return-void
.end method

.method protected getAnalyticsVideoDurationKey()Ljava/lang/String;
    .registers 1

    .line 444
    const-string p0, "key_video_duration"

    return-object p0
.end method

.method protected getCamcorderProfile(I)Landroid/media/CamcorderProfile;
    .registers 3

    const/4 p0, 0x5

    .line 1340
    invoke-static {p1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1341
    invoke-static {p1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurShutterPriority()I
    .registers 1

    .line 540
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    return p0
.end method

.method protected getCurrentSatStreamId()I
    .registers 1

    .line 384
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    return p0
.end method

.method public final getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 278
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9

    if-eqz p7, :cond_4

    goto/16 :goto_a1

    .line 2359
    :cond_4
    const-string p6, "key_super_definition"

    invoke-interface {p4, p6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 2360
    invoke-virtual {p0, p4, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForWide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_19

    .line 2361
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2362
    :cond_19
    invoke-virtual {p0, p1, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForMacroCamera(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p7

    if-eqz p7, :cond_32

    .line 2363
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_31

    .line 2365
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    :cond_31
    return-object p0

    .line 2367
    :cond_32
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportVideoCamera()Z

    move-result p7

    const-string v0, "0"

    if-eqz p7, :cond_6a

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 2368
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    .line 2369
    const-string p2, "key_brightbess_value"

    invoke-interface {p4, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2370
    const-string/jumbo p3, "value_light"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_69

    .line 2371
    invoke-direct {p0, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isVideoCameraSupportCurrentQuality(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p2

    if-nez p2, :cond_68

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_68

    goto :goto_69

    :cond_68
    return-object p1

    :cond_69
    :goto_69
    return-object v0

    .line 2375
    :cond_6a
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 2376
    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCameraForOpen(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2377
    :cond_75
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    if-nez p1, :cond_92

    const-string p1, "on"

    invoke-static {p6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 2378
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 2379
    invoke-static {p0, p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a1

    invoke-static {p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a1

    return-object p0

    .line 2385
    :cond_92
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-nez p1, :cond_a1

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a1

    return-object v0

    :cond_a1
    :goto_a1
    return-object p5
.end method

.method public getOutputDataType()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method protected getOverrideSize()Landroid/util/Size;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1435
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1436
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getPreviewSize videoFrameSize is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1437
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    const/16 v0, 0x2d0

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 1439
    :cond_1f
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getPreviewSize(Ljava/util/List;DLandroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method protected getPreviewSize(Ljava/util/List;DLandroid/util/Size;)Landroid/util/Size;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;D",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    const/16 v7, 0x438

    move-object v0, p1

    move-wide v1, p2

    move-object v3, p4

    .line 1446
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 283
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

.method protected getVideoBeautyType(Landroid/content/Context;)I
    .registers 2

    .line 1252
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFaceBeautyType:I

    return p0
.end method

.method protected getVideoOrientation()I
    .registers 6

    .line 1646
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1648
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getVideoOrientation] mCameraDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1652
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_mirror"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1653
    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1654
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_35

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_35

    :cond_29
    if-nez v2, :cond_33

    .line 1657
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_33
    move v1, v4

    goto :goto_37

    :cond_35
    :goto_35
    xor-int/lit8 v1, v2, 0x1

    .line 1659
    :cond_37
    :goto_37
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getVideoHintOrientation(ILjava/lang/String;Z)I

    move-result v0

    .line 1660
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

.method public getVideoRecodingOrientation()I
    .registers 1

    .line 1638
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    return p0
.end method

.method protected getVideoSavingMessage()Ljava/lang/String;
    .registers 2

    .line 1559
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->saving_dialog_string:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 303
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget-boolean p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatSupportWide:Z

    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    .line 306
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSuperNightBvLimit:I

    .line 305
    invoke-static {p4}, Lcom/transsion/camera/utils/FeatureSupport;->getVideoSuperNightBvDebug(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightBvLimit:I

    .line 307
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSuperNightOutBvLimit:I

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightOutBvLimit:I

    .line 308
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiLowLightBvLimit:I

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSuperAntiLowLightBvLimit:I

    .line 309
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->refreshShutterType()V

    .line 310
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 311
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p5

    const/4 p6, 0x1

    const/4 p7, 0x0

    if-nez p5, :cond_41

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result p5

    if-eqz p5, :cond_3f

    goto :goto_41

    :cond_3f
    move p5, p7

    goto :goto_42

    :cond_41
    :goto_41
    move p5, p6

    :goto_42
    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->setAodCamera(Z)V

    .line 312
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p4, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)V

    .line 313
    new-instance p4, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    invoke-direct {p4}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;-><init>()V

    .line 314
    invoke-virtual {p4, p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setContext(Landroid/content/Context;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 315
    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 316
    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 317
    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setPolicy(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 318
    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 319
    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setVideoStateCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 320
    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setCameraRecorder(Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 321
    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 322
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->build()Lcom/transsion/camera/app/common/recorder/RecorderManager;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    .line 323
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->init()V

    .line 324
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p4}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->supportAudioZoom()Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportAudioZoom:Z

    .line 325
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 339
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    .line 340
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p4

    iget-boolean p4, p4, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoPreviewSupportP3:Z

    if-nez p4, :cond_a4

    .line 341
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getP3VideoPreviewSwitch(Landroid/content/Context;)I

    move-result p1

    if-ne p1, p6, :cond_a1

    goto :goto_a4

    .line 342
    :cond_a1
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    goto :goto_a6

    :cond_a4
    :goto_a4
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT_FOR_P3:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 340
    :goto_a6
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    .line 343
    const-string p1, "key_video_quality"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 344
    const-string p1, "key_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 345
    const-string p1, "key_super_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 346
    const-string p1, "key_video_portrait"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 347
    const-string p1, "key_video_spot"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 348
    const-string p1, "key_video_facebeauty"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 349
    const-string p1, "key_storage"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 350
    const-string p1, "key_video_super_night"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 351
    const-string p1, "key_video_enhance"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 352
    const-string p1, "key_video_super_night_yuv"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 353
    const-string p1, "key_video_enhance_yuv"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 354
    const-string p1, "key_video_asd"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 355
    const-string p1, "key_algorithm_migrate"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 356
    const-string p1, "key_video_makeup"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 357
    const-string p1, "key_video_filter"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 358
    const-string p1, "key_video_effect"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 359
    const-string p1, "key_video_frame"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 360
    const-string p1, "key_video_preisp"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 361
    const-string p1, "key_fold_switch_preview"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 362
    const-string p1, "key_check_storage"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 363
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportAudioZoom:Z

    if-eqz p1, :cond_116

    .line 364
    const-string p1, "key_camera_zoom"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 366
    :cond_116
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHdr10PlusSupport()Z

    move-result p1

    if-eqz p1, :cond_125

    .line 367
    const-string p1, "key_video_hdr_10_plus"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_125
    const/4 p1, 0x6

    .line 369
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-eq p1, p2, :cond_133

    .line 370
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 372
    :cond_133
    iput-boolean p7, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 373
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    return-void
.end method

.method public initSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 378
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->initSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 379
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method protected isDurationInValid(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-lez p0, :cond_e

    const-wide/16 v0, 0x1f4

    cmp-long p0, p1, v0

    if-gez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method protected isInVideoHDRState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isInVideoSightShockState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract isModeSupport360VideoHDR(Landroid/content/Context;)Z
.end method

.method protected isModeSupportThumbnailTransition(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupportVideoAsd(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected isSupportAntiVideo()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isSupportCustomVideoQuality(I)Z
    .registers 2

    .line 1335
    invoke-static {p1}, Lcom/transsion/camera/utils/VideoQualityUtils;->isSupportCustomVideoQuality(I)Z

    move-result p0

    return p0
.end method

.method protected isSupportGLRecording()Z
    .registers 2

    .line 2323
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isInVideoHDRState()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportVSSGLRecording()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method protected isSupportLiteFaceBeauty()Z
    .registers 1

    .line 1256
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportLiteFaceBeauty:Z

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 4

    .line 2270
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    .line 2271
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    .line 2272
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreIspDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultPreIspOn:Z

    if-eqz p2, :cond_26

    if-nez p3, :cond_1d

    goto :goto_26

    .line 2276
    :cond_1d
    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentSettingSupportSAT(Lcom/transsion/camera/app/common/storage/DataStore;)Z

    move-result p0

    return p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return p0
.end method

.method protected isSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 4

    .line 2280
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentCameraFacingBack()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-nez p1, :cond_a

    goto :goto_1a

    .line 2284
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isWideCameraOpen(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 2288
    :cond_15
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    return v1
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

.method protected needMirror()Z
    .registers 3

    .line 2253
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_mirror"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2254
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 2255
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2a

    return v0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public notifyPictureTaken([BZIJ)I
    .registers 6

    .line 2218
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p4, "notifyPictureTaken"

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2219
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 2220
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p4

    if-nez p2, :cond_1d

    if-eqz p4, :cond_1d

    const/16 p2, 0x200

    .line 2222
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2223
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_1d
    return p3
.end method

.method protected notifyRawActionToUI(I)V
    .registers 4

    .line 2124
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_20

    .line 2126
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

    .line 2130
    :cond_20
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected notifyRecordStateChanged(Z)V
    .registers 3

    .line 1707
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_c

    .line 1708
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyRecordStateChanged mSettingController is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1711
    :cond_c
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsVideoRecording:Z

    .line 1712
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    .line 1713
    const-string v0, "key_record_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p1, :cond_1f

    .line 1714
    const-string p1, "on"

    goto :goto_21

    :cond_1f
    const-string p1, "off"

    :goto_21
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected notifyToAppUI(IILjava/lang/String;)V
    .registers 5

    .line 2134
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_20

    .line 2136
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

    .line 2140
    :cond_20
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method protected notifyToIdle()V
    .registers 4

    const/4 v0, 0x0

    .line 2109
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2110
    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 2111
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 2144
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$3;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    .line 2156
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

    .line 2151
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_38

    .line 2152
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    return-void

    .line 2146
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_38

    .line 2147
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_38
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 1394
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_22

    .line 1396
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->operationPrepared()V

    .line 1397
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p1, :cond_11

    .line 1398
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->operationPrepared()V

    .line 1400
    :cond_11
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    .line 1401
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1402
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 1404
    :cond_1b
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    if-eqz p1, :cond_22

    .line 1405
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->retriggleShutterClick()V

    :cond_22
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .registers 5

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged start, isQuitVIP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 482
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedCacheWhenQuitVIP:Z

    const/4 p1, 0x0

    .line 483
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 484
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 487
    :try_start_2f
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 488
    const-string v2, "-1"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_51

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v0, p1, p1, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    .line 491
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 492
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 493
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_49

    .line 494
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 496
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onConfigurationChanged end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_51
    move-exception p0

    .line 489
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .registers 2

    .line 1383
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_VIDEO_PREVIEW_SIZE_TO_1440_X_1080:Z

    if-eqz v0, :cond_7

    .line 1384
    const-string p0, "6"

    return-object p0

    .line 1386
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1389
    :cond_d
    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .registers 1

    .line 296
    new-instance p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    return-object p0
.end method

.method public onFirstSteadyFrame()V
    .registers 1

    .line 2431
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 2433
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getLeftSpace()J

    return-void
.end method

.method public onMediaRecorderPaused()V
    .registers 2

    .line 1860
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderPrepareAbort()V
    .registers 2

    const/16 v0, 0x10

    .line 1898
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1899
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    const/4 v0, 0x1

    .line 1900
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecording(Z)Z

    .line 1901
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .registers 10

    .line 1744
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempMediaRecorderFile()V

    .line 1745
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRecorderInitSuccess:Z

    .line 1746
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    .line 1747
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVideoSurface in onMediaRecorderPrepared. mode isValid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_23

    return-void

    .line 1751
    :cond_23
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .registers 4

    .line 1733
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 1734
    const-string v1, "on_video_recording_ui_changed"

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    :cond_f
    const/16 v0, 0xf

    .line 1736
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1737
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    .line 1738
    const-string v0, "key_check_storage"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_storage_sufficient"

    .line 1739
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaRecorderProcessing()V
    .registers 4

    .line 1955
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_anti_video"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1956
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/16 v2, 0x1b

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(IZ)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1957
    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onMediaRecorderResumed()V
    .registers 2

    .line 1865
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 4

    .line 1775
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->computeRemainedRecorderTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1776
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_e

    .line 1777
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 1779
    :cond_e
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 1780
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateLastClickTime()V

    .line 1781
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onRecordStarted()V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 4

    const/16 v0, 0x34

    .line 1891
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1892
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 1893
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->handRecorderStopped(IZ)V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 5

    .line 1870
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopWithInValidFile(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1871
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onMediaRecorderStopping] stop with invalid file, reason:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1874
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isVideoFileValid()Z

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_3a

    .line 1875
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onMediaRecorderStopping] video file too short"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1877
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1878
    sget-object p1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/4 p1, 0x0

    .line 1879
    invoke-virtual {p0, v0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1882
    :cond_3a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz p1, :cond_47

    .line 1883
    const-string p1, "on_video_recording_ui_changed"

    invoke-virtual {p0, v0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    :cond_47
    return-void
.end method

.method protected onSATStreamIdChanged(IIZZ)V
    .registers 5

    return-void
.end method

.method public onSettingChangeDone(Ljava/lang/String;)V
    .registers 8

    .line 1166
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChangeDone headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", firstRelationHeaderKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const/4 v0, 0x0

    .line 1168
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 1169
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSettingChangeDone mRestartPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " headerKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1171
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_53

    .line 1172
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    :cond_53
    if-eqz v0, :cond_a5

    .line 1175
    const-string v1, "key_quality_recover_default"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1176
    const-string v1, "key_anti_video_recover_default"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1177
    const-string v1, "key_super_anti_video_recover_default"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1178
    const-string v1, "key_video_quality"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1179
    const-string v1, "key_on_quality_change_end"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1181
    :cond_83
    const-string v1, "key_anti_video"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1182
    const-string v1, "key_on_anti_video_change_end"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1184
    :cond_94
    const-string v1, "key_super_anti_video"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1185
    const-string v1, "key_on_super_anti_video_change_end"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    :cond_a5
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    if-eqz v0, :cond_e9

    .line 1189
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1190
    const-string v0, "key_dol_video_hdr"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 1191
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_c2

    .line 1193
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueSync(Ljava/lang/String;)V

    .line 1196
    :cond_c2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1197
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p1

    if-nez p1, :cond_d5

    .line 1198
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->releaseSurface()V

    :cond_d5
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1200
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    .line 1201
    const-string p0, "-1"

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 1202
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    const/4 p0, 0x0

    .line 1203
    iput-boolean p0, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    :cond_e9
    return-void
.end method

.method public onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1154
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChangeStart headerKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , headValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", firstRelationHeaderKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstRelationHeaderValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_4c

    const-string v1, "key_360_video_hdr"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1156
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsVideoHdrOff:Z

    .line 1158
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    if-nez v0, :cond_55

    .line 1159
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 1160
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updatePreviewSizeOnSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1057
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1060
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    const/4 v1, 0x0

    const-string v2, "on"

    if-eqz v0, :cond_38

    const-string v0, "key_ae_af_lock_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1061
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1063
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string/jumbo v3, "wide_camera"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    const-string v4, "key_video_quality"

    const-string v5, "key_video_preisp"

    const-string v6, "key_video_makeup"

    const-string v7, "key_super_anti_video"

    const/4 v8, 0x1

    if-eqz v3, :cond_103

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentCameraFacingBack()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 1065
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->settingRelateSwitchCamera(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 1066
    :cond_60
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_73

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    if-nez v3, :cond_73

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1067
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    return-void

    .line 1069
    :cond_73
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "super"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1070
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntivideoSupportWide:Z

    if-eqz v0, :cond_9f

    .line 1071
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_103

    .line 1072
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->switchWideCamera(Ljava/lang/String;)V

    goto :goto_103

    .line 1075
    :cond_9f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const-string v3, "off"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->switchWideCamera(Ljava/lang/String;)V

    goto :goto_103

    .line 1077
    :cond_a7
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 1078
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getPreIspTeleFakeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;)V

    goto :goto_103

    .line 1081
    :cond_d3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getTargetCameraId()Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_103

    .line 1085
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v8}, Lcom/transsion/camera/app/common/IAppUI;->skipInteractiveUpdate(Z)V

    .line 1086
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1087
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v3, v1}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;Z)V

    goto :goto_f9

    .line 1089
    :cond_f4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;)V

    .line 1091
    :goto_f9
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 1092
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    .line 1093
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1099
    :cond_103
    :goto_103
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1100
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 1103
    :cond_10c
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needUpdatePreviewSize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v3, "key_video_asd"

    if-nez v0, :cond_15c

    const-string v0, "key_anti_video"

    .line 1104
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1105
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1106
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    if-eq v0, p2, :cond_130

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    if-nez v0, :cond_15c

    :cond_130
    const-string v0, "key_video_enhance_yuv"

    .line 1107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15c

    const-string v0, "key_video_enhance"

    .line 1108
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    const-string v0, "key_video_hdr_10_plus"

    .line 1109
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1110
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1111
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    const-string v0, "key_video_spot"

    .line 1112
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 1113
    :cond_15c
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    .line 1116
    :cond_15e
    const-string v0, "key_storage"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_178

    const-string v0, "external"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_178

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRecorderInitSuccess:Z

    if-nez v0, :cond_178

    .line 1117
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    const/4 v0, 0x0

    .line 1118
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChangeDone(Ljava/lang/String;)V

    .line 1120
    :cond_178
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->settingRelateSwitchCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 1121
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 1124
    const-string v0, "key_360_video_hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c

    const-string v0, "key_video_super_night"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 1125
    :cond_19c
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1129
    :cond_19e
    const-string v0, "key_algorithm_migrate"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 1130
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmMigrate(Z)V

    .line 1133
    :cond_1b1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportAudioZoom:Z

    if-eqz v0, :cond_1fb

    .line 1134
    const-string v0, "key_camera_zoom"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1fb

    if-eqz p2, :cond_1fb

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1fb

    .line 1135
    sget p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->DEFAULT_ZOOM_VALUE:I

    .line 1137
    :try_start_1c7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1cb
    .catch Ljava/lang/NumberFormatException; {:try_start_1c7 .. :try_end_1cb} :catch_1cc

    goto :goto_1ef

    :catch_1cc
    move-exception v0

    .line 1139
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert Zoom  error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n , value = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1141
    :goto_1ef
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    sget p2, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->DEFAULT_ZOOM_VALUE:I

    div-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->updateAudioZoom(Ljava/lang/String;)V

    :cond_1fb
    return-void
.end method

.method public onSettingReady()V
    .registers 6

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingReady, mIsPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 694
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v0, :cond_24

    .line 696
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    .line 698
    :cond_24
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingReady()V

    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    .line 702
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onSettingReady] cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_58

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_6c

    .line 705
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    goto :goto_6c

    .line 708
    :cond_58
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_64

    .line 709
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->onSatCameraChanged(I)V

    .line 711
    :cond_64
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSATStreamIdChanged(IIZZ)V

    .line 712
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    .line 715
    :cond_6c
    :goto_6c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportLiteFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_face_beauty"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 718
    const-string v0, "off"

    goto :goto_87

    :cond_85
    const-string v0, "on"

    :goto_87
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    :cond_89
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 12

    .line 563
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    if-nez p2, :cond_6

    return v0

    .line 565
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isInVideoHDRState()Z

    move-result v1

    .line 566
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isInVideoSightShockState()Z

    move-result v2

    .line 567
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v1, :cond_1c

    if-nez v2, :cond_1c

    if-eqz v3, :cond_1a

    goto :goto_1c

    :cond_1a
    move v5, v4

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v5, v0

    .line 569
    :goto_1d
    iget-object v6, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onShutterClick,mState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",isInVideoHDRState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",isInVideoSightShockState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",supportDVGLRecording:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 570
    iget v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    if-ne v3, v0, :cond_52

    return v0

    .line 574
    :cond_52
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkPermitBeforeStart()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 576
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onShutterClick: checkPermitBeforeStart false"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v5, :cond_65

    .line 578
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecordingByForce()V

    goto :goto_6a

    .line 580
    :cond_65
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0, v4, v0, v4}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    :goto_6a
    return v0

    .line 584
    :cond_6b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v3

    if-eqz v3, :cond_7a

    const-class v3, Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_7a

    return v0

    .line 587
    :cond_7a
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    if-eqz v5, :cond_81

    const-wide/16 v5, 0x514

    goto :goto_83

    :cond_81
    const-wide/16 v5, 0x3e8

    .line 592
    :goto_83
    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClick: isFastDoubleClick"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 596
    :cond_91
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v3, 0x5

    if-ne p1, v3, :cond_a0

    .line 597
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onShutterClick: mWaitForSateChanged"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    return v0

    .line 602
    :cond_a0
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 603
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 606
    :cond_ae
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isDVHintShowing()Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 607
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClick: isDVHintShowing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 610
    :cond_bc
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result p1

    if-eqz p1, :cond_d4

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p1, :cond_d4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->isStopping()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClick mTextureRecorder.isStopping return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 614
    :cond_d4
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p1, :cond_100

    const-string p1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_100

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result p1

    if-nez p1, :cond_100

    if-nez v1, :cond_100

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->shouldWaitVideoRecordEndAction()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 615
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClick mMediaRecorder.shouldWaitVideoRecordEndAction() return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 618
    :cond_100
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    const/16 p1, 0xf

    .line 619
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 621
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result p1

    if-eqz p1, :cond_118

    .line 622
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->startStopDVRecording()V

    goto :goto_130

    :cond_118
    if-eqz v1, :cond_11e

    .line 624
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->starStopHDRRecording()V

    goto :goto_130

    :cond_11e
    if-eqz v2, :cond_124

    .line 626
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->startStopVSSRecording()V

    goto :goto_130

    .line 628
    :cond_124
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[videoPerformance] startStop"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->startStop()V

    :goto_130
    return v0
.end method

.method public onShutterDown()V
    .registers 3

    .line 655
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onShutterDown"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDownStartVideoRecord:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 657
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_18
    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 6

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterLongClick mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 637
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 639
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p1, v0, :cond_29

    return v1

    .line 643
    :cond_29
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 644
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isShoulderKeyLongPress()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 645
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_3a
    if-lez p2, :cond_47

    .line 647
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDownStartVideoRecord:Z

    if-eqz p1, :cond_47

    .line 648
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterDown()V

    :cond_47
    return v1
.end method

.method public onShutterUp(I)V
    .registers 5

    .line 664
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterUp, mShutterLongClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 665
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 666
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2a

    goto :goto_48

    .line 670
    :cond_2a
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    if-eqz p1, :cond_48

    const/4 p1, 0x0

    .line 671
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 673
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDownStartVideoRecord:Z

    if-nez v0, :cond_48

    .line 674
    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_48
    :goto_48
    return-void
.end method

.method protected onSnapShotStart()V
    .registers 1

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    .registers 6

    .line 1504
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V

    .line 1506
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1508
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onVideoFileSaved appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1512
    :cond_11
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 1513
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 1514
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModeSupportThumbnailTransition2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 1515
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupportThumbnailTransition(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1514
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1516
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupportThumbnailTransition(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    if-eqz p1, :cond_54

    .line 1517
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-wide/16 v1, 0x1

    .line 1518
    invoke-static {p2, p1, v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;IJ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1519
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;->setThumbnailBitmap(Landroid/graphics/Bitmap;ZZ)V

    :cond_54
    const/16 p0, 0x200

    .line 1521
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1522
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 1472
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1474
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1476
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onVideoFileSaved appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1480
    :cond_11
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 1481
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 1482
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModeSupportThumbnailTransition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 1483
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupportThumbnailTransition(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1482
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1484
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupportThumbnailTransition(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    if-eqz p1, :cond_54

    .line 1485
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-wide/16 v1, 0x1

    .line 1486
    invoke-static {p2, p1, v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1487
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;->setThumbnailBitmap(Landroid/graphics/Bitmap;ZZ)V

    :cond_54
    const/16 p0, 0x200

    const-wide/16 v1, -0x1

    .line 1489
    invoke-static {p2, p0, v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1491
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
.end method

.method public onVideoRestartPreviewed()V
    .registers 2

    const/16 v0, 0x10

    .line 1424
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1425
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 463
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 464
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 465
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 466
    :try_start_17
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 467
    const-string v2, "-1"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_3a

    .line 469
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->markEndWaitVideoRecordEndAction()V

    .line 470
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    .line 471
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 472
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_36

    .line 474
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 476
    :cond_36
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pause()V

    return-void

    :catchall_3a
    move-exception p0

    .line 468
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method protected final pauseResumeRecording()V
    .registers 3

    .line 1578
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseResumeRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1579
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->pauseResume()V

    return-void
.end method

.method protected prepareVideoData()I
    .registers 6

    .line 1260
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 1261
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1262
    :try_start_7
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v2, :cond_13

    .line 1263
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :catchall_10
    move-exception p0

    goto/16 :goto_f7

    .line 1265
    :cond_13
    const-string v0, "-1"

    .line 1267
    :goto_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_10

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    return v1

    .line 1273
    :cond_1a
    const-string v2, "_"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1274
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v3

    if-eqz v3, :cond_f6

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v3, :cond_f6

    .line 1275
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 1277
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1278
    const-string v3, "0"

    .line 1281
    :cond_38
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1282
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 1284
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 1285
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1286
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1288
    :cond_64
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setVideoSize(Landroid/media/CamcorderProfile;)V

    .line 1290
    const-string v2, "6_60"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    const-string v2, "8_60"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_83

    .line 1304
    :cond_78
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needReduceFPSTo24(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v0, 0x18

    .line 1305
    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    goto :goto_ba

    .line 1291
    :cond_83
    :goto_83
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_ba

    .line 1292
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportHFPSAntiVideo:Z

    if-eqz v0, :cond_a6

    .line 1293
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mReduceBitRateForHighFps:Z

    if-nez v0, :cond_9d

    .line 1294
    iget v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1296
    :cond_9d
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    goto :goto_ba

    .line 1298
    :cond_a6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mReduceBitRateForHighFps:Z

    if-nez v0, :cond_b4

    .line 1299
    iget v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1301
    :cond_b4
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1307
    :cond_ba
    :goto_ba
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    new-instance v2, Lcom/transsion/camera/app/common/mode/RecorderParam;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/transsion/camera/app/common/mode/RecorderParam;-><init>(Landroid/util/Size;Landroid/media/CamcorderProfile;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    .line 1308
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    const/4 p0, 0x1

    return p0

    .line 1310
    :cond_cf
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 1311
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCamcorderProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1312
    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setProfileConfigure(Landroid/media/CamcorderProfile;)V

    .line 1313
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setVideoSize(Landroid/media/CamcorderProfile;)V

    .line 1314
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    new-instance v3, Lcom/transsion/camera/app/common/mode/RecorderParam;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/transsion/camera/app/common/mode/RecorderParam;-><init>(Landroid/util/Size;Landroid/media/CamcorderProfile;)V

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    .line 1315
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_f6
    return v1

    .line 1267
    :goto_f7
    :try_start_f7
    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_10

    throw p0
.end method

.method protected processFileSaved(Landroid/net/Uri;Ljava/lang/Object;I)V
    .registers 4

    if-eqz p1, :cond_25

    .line 2093
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 2094
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 2095
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_1a

    .line 2096
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isActivityPaused()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 2097
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->sendNotification(Landroid/content/Context;)V

    goto :goto_25

    :cond_1a
    if-nez p1, :cond_25

    .line 2098
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz p1, :cond_25

    .line 2099
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->sendNotification(Landroid/content/Context;)V

    :cond_25
    :goto_25
    const/16 p1, 0x3b

    .line 2102
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_31

    const/4 p1, 0x4

    .line 2104
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    :cond_31
    return-void
.end method

.method protected refreshShutterType()V
    .registers 3

    .line 389
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getShutterTypeSelftimerOff()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 391
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    return-void
.end method

.method public resume()V
    .registers 4

    .line 449
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->resume()V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    if-nez v0, :cond_14

    .line 453
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    .line 455
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_23

    .line 456
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    :cond_23
    return-void
.end method

.method protected abstract sendNotification(Landroid/content/Context;)V
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 3

    if-eqz p1, :cond_19

    .line 1630
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoRecodingOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 1631
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setVideoOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 1632
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needAudio()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    :cond_19
    return-void
.end method

.method public setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
    .registers 2

    .line 1584
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    return-void
.end method

.method protected setVideoSize(Landroid/media/CamcorderProfile;)V
    .registers 5

    .line 1349
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2c

    .line 1350
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->getPictureForVideoQuality(I)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 1351
    iget p1, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1}, Lcom/transsion/camera/utils/VideoQualityUtils;->getPictureForVideoQuality(I)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    .line 1352
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    return-void

    .line 1354
    :cond_2c
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v2, v0

    mul-float/2addr v2, v1

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v1, p1

    div-float/2addr v2, v1

    float-to-double v1, v2

    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    .line 1355
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 1356
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    return-void
.end method

.method protected abstract showInfo(I)V
.end method

.method protected showRemainingRecordingTime(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected starStopHDRRecording()V
    .registers 1

    return-void
.end method

.method public startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z
    .registers 4

    .line 1692
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    .line 1693
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    .line 1694
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_19

    .line 1696
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[startRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1699
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportShutterSound()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    const/4 p1, 0x1

    .line 1700
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1701
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 1702
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return p1
.end method

.method protected startStopDVRecording()V
    .registers 1

    .line 2345
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->starStopHDRRecording()V

    return-void
.end method

.method protected startStopVSSRecording()V
    .registers 1

    .line 2349
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->starStopHDRRecording()V

    return-void
.end method

.method public stopRecording(Z)Z
    .registers 3

    .line 1719
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_d

    .line 1721
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[stopRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1724
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRecording()V

    if-eqz p1, :cond_15

    .line 1726
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startPreview()V

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method protected stopRecordingByForce()V
    .registers 1

    return-void
.end method

.method protected stopSlowMotionRecording()V
    .registers 3

    .line 686
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    return-void
.end method

.method protected storingVideoFile(I)V
    .registers 8

    .line 1963
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 1964
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2c

    if-nez v1, :cond_d

    goto :goto_2c

    .line 1972
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkMinDuration()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1973
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1974
    invoke-virtual {p0, v4, v3, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1979
    :cond_1a
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/16 v0, 0x3a

    .line 1980
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1982
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V

    return-void

    .line 1966
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storingVideoFile mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1967
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1968
    invoke-virtual {p0, v4, v3, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void
.end method

.method protected supportDVGLRecording()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected supportVSSGLRecording()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public unInit()V
    .registers 9

    .line 403
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unInit()V

    .line 404
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedCacheWhenQuitVIP:Z

    if-eqz v0, :cond_c

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/AppUICache;->cache(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 407
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->unInit()V

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateVideoSurface to null in unInit."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 409
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    .line 410
    const-string p0, "key_video_quality"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 411
    const-string p0, "key_anti_video"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 412
    const-string p0, "key_super_anti_video"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 413
    const-string p0, "key_video_portrait"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 414
    const-string p0, "key_video_spot"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 415
    const-string p0, "key_video_facebeauty"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 416
    const-string p0, "key_storage"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 417
    const-string p0, "key_video_super_night"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 418
    const-string p0, "key_video_enhance"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 419
    const-string p0, "key_video_super_night_yuv"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 420
    const-string p0, "key_video_enhance_yuv"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 421
    const-string p0, "key_video_asd"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 422
    const-string p0, "key_algorithm_migrate"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 423
    const-string p0, "key_video_makeup"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 424
    const-string p0, "key_ae_af_lock_state"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 425
    const-string p0, "key_video_filter"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 426
    const-string p0, "key_video_effect"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 427
    const-string p0, "key_video_frame"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 428
    const-string p0, "key_video_preisp"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 429
    const-string p0, "key_fold_switch_preview"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 430
    const-string p0, "key_check_storage"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 431
    iget-boolean p0, v2, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportAudioZoom:Z

    if-eqz p0, :cond_94

    .line 432
    const-string p0, "key_camera_zoom"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 434
    :cond_94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHdr10PlusSupport()Z

    move-result p0

    if-eqz p0, :cond_a3

    .line 435
    const-string p0, "key_video_hdr_10_plus"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_a3
    const/4 p0, 0x6

    .line 437
    iget v0, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-eq p0, v0, :cond_b1

    .line 438
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    iget-object v0, v2, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 440
    :cond_b1
    iget-object p0, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .registers 2

    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 501
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 502
    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 503
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 506
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 509
    const-string v1, "0"

    .line 512
    :cond_22
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 513
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCamcorderProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 514
    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setProfileConfigure(Landroid/media/CamcorderProfile;)V

    goto :goto_3c

    .line 517
    :cond_34
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 520
    :goto_3c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 522
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 523
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 525
    :cond_4e
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSize(Landroid/media/CamcorderProfile;)Landroid/util/Size;

    move-result-object v0

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updatePicSurface(Landroid/util/Size;IZZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .registers 4

    .line 1323
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updatePreviewSize(Landroid/util/Size;)V

    .line 1324
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p0, :cond_28

    if-eqz p1, :cond_28

    .line 1326
    const-string v0, "0"

    .line 1327
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    .line 1326
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1328
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1329
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1330
    new-instance v1, Lcom/transsion/camera/app/common/mode/RecorderParam;

    invoke-direct {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/RecorderParam;-><init>(Landroid/util/Size;Landroid/media/CamcorderProfile;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    :cond_28
    return-void
.end method

.method protected updateQuality(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1372
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateQuality new quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " old quality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1373
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1374
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    if-nez v0, :cond_2c

    return-object p1

    .line 1375
    :cond_2c
    const-string p0, "-1"

    return-object p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 6

    .line 1570
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStorageOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1571
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_22

    .line 1573
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->storageUnMount()V

    :cond_22
    return-void
.end method

.method protected updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 5

    .line 1535
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateThumbnail+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1536
    instance-of v0, p2, Ljava/io/FileDescriptor;

    if-eqz v0, :cond_17

    .line 1537
    check-cast p2, Ljava/io/FileDescriptor;

    .line 1539
    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_2d

    :catch_12
    move-exception p1

    .line 1541
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 1543
    :cond_17
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1544
    check-cast p2, Ljava/lang/String;

    .line 1546
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_2d

    :catch_21
    move-exception p1

    .line 1548
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 1551
    :cond_26
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[updateThumbnail] file is invalid"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1553
    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateThumbnail-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateVideoSurface(Landroid/view/Surface;IIIZ)V
    .registers 8

    move-object v0, p0

    .line 1765
    iget-object p0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p0, :cond_d

    .line 1767
    iget-object p0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateVideoSurface] mCameraDeviceControl is null when video mode update surface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_d
    move v1, p3

    move p3, p2

    move p2, p4

    move p4, v1

    .line 1770
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMediaRecordDisplay(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 2303
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getDataFlowType()I

    move-result v0

    .line 2304
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 2305
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need yuv image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 2308
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    if-nez v0, :cond_18

    return-object v1

    .line 2311
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    new-instance v1, Landroid/util/Size;

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-direct {v1, v2, p0}, Landroid/util/Size;-><init>(II)V

    const/16 p0, 0x23

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->updateYuvPicSurface(Landroid/util/Size;IZ)Lcom/transsion/camera/app/common/mode/CaptureSurface;

    move-result-object p0

    return-object p0
.end method

.method protected final videoSnapShot()V
    .registers 3

    .line 1453
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "videoSnapShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z

    return-void
.end method
