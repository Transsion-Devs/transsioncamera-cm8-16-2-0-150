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

.field private mCurrentFile:Ljava/lang/String;

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

.field protected mIsLowlightHintSupport:Z

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

.method static bridge synthetic -$$Nest$fgetmCurrentFile(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    return-object p0
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

    .line 250
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

    .line 219
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsLowlightHintSupport:Z

    .line 222
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    .line 223
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    .line 224
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultPreIspOn:Z

    .line 225
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRecorderInitSuccess:Z

    .line 226
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCaptureOrientation:I

    .line 228
    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTotalRemainedRecorderTime:J

    .line 230
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 231
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    .line 234
    iput-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    .line 236
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 397
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 682
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 715
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    .line 2155
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;

    .line 2177
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$2;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPictureCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;

    .line 251
    new-instance p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;

    invoke-direct {p1, p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MainHandle;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Lcom/transsion/camera/app/common/mode/CommonVideoMode-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    .line 252
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 253
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 254
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDHdrAndRawSuperNightBothSupport:Z

    sput-boolean p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDHdrAndRawSuperNightBothSupport:Z

    .line 255
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatSupportAntiVideo:Z

    sput-boolean p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportAntiVideo:Z

    .line 256
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSuperAntiVideoRestrictionType:I

    .line 257
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportSuperAntiVideoV2:Z

    .line 258
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportHFPSAntiVideo:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportHFPSAntiVideo:Z

    return-void
.end method

.method private checkStorageSpace()Z
    .registers 7

    .line 1659
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1661
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[checkStorageSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1665
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getLeftSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_38

    .line 1666
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

    .line 1671
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] StorageVolume is removed."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1672
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    return v1

    :cond_36
    const/4 p0, 0x1

    return p0

    .line 1667
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[checkStorageSpace] space in not enough, can not record video."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 1668
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    return v1
.end method

.method private static convertZoom(Ljava/lang/String;)I
    .registers 1

    .line 985
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

    .line 970
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 973
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 974
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-nez p0, :cond_19

    return v0

    .line 978
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

    .line 736
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result p1

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_d

    return p1

    :cond_d
    if-eqz p1, :cond_17

    .line 741
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

    .line 745
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportSat()Z

    move-result v0

    if-nez p1, :cond_b

    return v0

    :cond_b
    if-eqz v0, :cond_1b

    .line 750
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

    .line 718
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    if-eqz p1, :cond_33

    .line 719
    array-length p2, p1

    if-lez p2, :cond_33

    const/4 p2, 0x0

    .line 720
    aget p1, p1, p2

    .line 721
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    if-eq p2, p1, :cond_33

    .line 722
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p2

    .line 723
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isSupportHighFps(Ljava/lang/String;)Z

    move-result p2

    .line 724
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setCameraFacing(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/4 v0, 0x1

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSATStreamIdChanged(IIZZ)V

    .line 726
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    :cond_33
    return-void
.end method

.method private getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;
    .registers 2

    .line 1452
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1453
    invoke-static {}, Lcom/transsion/camera/app/common/mode/AppUICache;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    return-object p0

    .line 1455
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private getBytePerS()J
    .registers 3

    .line 1839
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    if-nez v0, :cond_e

    .line 1841
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getBytePerS] mVideoMediaRecorderInfo is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1844
    :cond_e
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getBytePerS()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCameraForOpen(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;
    .registers 3

    .line 2282
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    .line 2283
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    .line 2284
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentSettingSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2285
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2287
    :cond_1d
    const-string p0, "0"

    return-object p0
.end method

.method private getLeftSpace()J
    .registers 3

    .line 1830
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v0, :cond_e

    .line 1832
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getLeftSpace] mStorageOperator is null,no space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1835
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTargetCameraId()Ljava/lang/String;
    .registers 8

    .line 992
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 993
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_camera_zoom"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_preisp"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 995
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v3

    .line 996
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

    .line 997
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    if-nez v3, :cond_88

    .line 999
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->convertZoom(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1001
    :cond_4f
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isPreIspFakeTeleCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1002
    const-string v1, "off"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    if-eqz v3, :cond_68

    .line 1003
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1004
    :cond_68
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6f
    if-eqz v3, :cond_88

    .line 1008
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1010
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

    .line 532
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 533
    new-instance p0, Landroid/util/Size;

    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->getPictureForVideoQuality(I)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget p1, p1, Landroid/media/CamcorderProfile;->quality:I

    .line 534
    invoke-static {p1}, Lcom/transsion/camera/utils/VideoQualityUtils;->getPictureForVideoQuality(I)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 536
    :cond_22
    new-instance p0, Landroid/util/Size;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private handRecorderStopped(IZ)V
    .registers 9

    .line 1919
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecording(Z)Z

    .line 1921
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopWithInValidFile(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_34

    .line 1922
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

    .line 1924
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    .line 1926
    :cond_2a
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 1927
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1928
    invoke-virtual {p0, v2, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1931
    :cond_34
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isVideoFileValid()Z

    move-result p2

    if-nez p2, :cond_4b

    .line 1933
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[handRecorderStopped] video file too short"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 1935
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1936
    invoke-virtual {p0, v2, v1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1940
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->storingVideoFile(I)V

    return-void
.end method

.method private isBackLongFocusCamera(Ljava/lang/String;)Z
    .registers 4

    .line 2406
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2410
    :cond_6
    const-string v1, "key_camera_zoom"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2411
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2412
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2413
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->convertZoom(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackCameraWithZoom(I)Ljava/lang/String;

    move-result-object p1

    .line 2416
    :cond_26
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isDVHintShowing()Z
    .registers 4

    .line 554
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 557
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_f

    return v1

    .line 560
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

    .line 2385
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const/4 v1, 0x6

    .line 2386
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    .line 2385
    const-string v2, "key_video_quality"

    invoke-virtual {v0, v2, v1, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2387
    const-string v0, "6_60"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    return v1

    .line 2390
    :cond_21
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 2391
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2392
    const-string v0, "_"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2394
    :try_start_39
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    .line 2395
    new-instance v0, Landroid/util/Size;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v2, p1}, Landroid/util/Size;-><init>(II)V

    .line 2396
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

    .line 1024
    :cond_4
    const-string/jumbo p0, "wide_camera"

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1025
    const-string p1, "on"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onMediaRecorderPrepareAbort$1()V
    .registers 1

    .line 1891
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p0, :cond_7

    .line 1892
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->markEndWaitVideoRecordEndAction()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onVideoRestartPreviewed$0()V
    .registers 1

    .line 1415
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p0, :cond_7

    .line 1416
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->markEndWaitVideoRecordEndAction()V

    :cond_7
    return-void
.end method

.method private needReduceFPSTo24(Ljava/lang/String;)Z
    .registers 4

    .line 1355
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

    .line 1356
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p1, "key_video_spot"

    .line 1357
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

    .line 1198
    const-string v0, "key_video_portrait"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 1199
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p1, "key_video_quality"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a7

    const/4 p1, 0x5

    .line 1200
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

    .line 1203
    :cond_2a
    const-string v0, "key_video_facebeauty"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1204
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoBeautyType(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_a7

    return v1

    .line 1207
    :cond_3b
    const-string v0, "key_360_video_hdr"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupport360VideoHDR(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 1208
    const-string p0, "key_video_hdr_normal"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_hdr_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    return v1

    .line 1211
    :cond_5c
    const-string p0, "key_dol_video_hdr"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_65

    return v1

    .line 1213
    :cond_65
    const-string p0, "key_video_super_night"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_86

    .line 1214
    const-string p0, "key_video_super_night_none"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_super_night_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_super_night_scene_4k"

    .line 1215
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    return v1

    .line 1218
    :cond_86
    const-string p0, "key_video_super_night_yuv"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 1219
    const-string p0, "key_video_super_night_yuv_none"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_super_night_yuv_scene"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    const-string p0, "key_video_super_night_yuv_scene_4k"

    .line 1220
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

    .line 1515
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoFileSaved mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pocketScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1515
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1517
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_3b

    const/16 p0, 0x200

    .line 1518
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1519
    invoke-static {}, Lcom/transsion/camera/manager/ThumbnailCache;->getInstance()Lcom/transsion/camera/manager/ThumbnailCache;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/manager/ThumbnailCache;->notifyFileSaved(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :cond_3b
    return-void
.end method

.method private notifyVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 1484
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyVideoFileSaved mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pocketScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1484
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1486
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p0

    if-eqz p0, :cond_3b

    const/16 p0, 0x200

    .line 1487
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1488
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

    .line 1400
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getVoiceIntent()[Z

    move-result-object v0

    if-eqz v0, :cond_37

    const/4 v1, 0x0

    .line 1402
    aget-boolean v1, v0, v1

    const/4 v2, 0x2

    .line 1403
    aget-boolean v0, v0, v2

    .line 1404
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

    .line 1406
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mHandle:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_37
    return-void
.end method

.method private settingRelateSwitchCamera(Ljava/lang/String;)Z
    .registers 2

    .line 949
    const-string p0, "key_anti_video"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_super_anti_video"

    .line 950
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_portrait"

    .line 951
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_spot"

    .line 952
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_facebeauty"

    .line 953
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_quality"

    .line 954
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_360_video_hdr"

    .line 955
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_dol_video_hdr"

    .line 956
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_enhance_yuv"

    .line 958
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_super_night"

    .line 959
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_enhance"

    .line 960
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_preisp"

    .line 961
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_filter"

    .line 962
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_effect"

    .line 963
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_frame"

    .line 964
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_hdr_10_plus"

    .line 965
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    const-string p0, "key_video_asd"

    .line 966
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

    .line 1229
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportLiteFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1230
    const-string v0, "key_face_beauty"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1231
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

    .line 1232
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_39

    const/4 p1, 0x1

    .line 1233
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    .line 1235
    :cond_39
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderValue:Ljava/lang/String;

    :cond_3b
    return-void
.end method

.method private static videoAntiVideoSupportSAT(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 919
    sget-boolean v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportAntiVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 920
    const-string p0, "super"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 922
    :cond_d
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 923
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

    .line 927
    sget-boolean v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDHdrAndRawSuperNightBothSupport:Z

    const/4 v1, 0x2

    const-string v2, "off"

    if-eqz v0, :cond_10

    .line 928
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 930
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

    .line 931
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

    .line 936
    const-string v0, "6_60"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    const-string v0, "8_60"

    .line 937
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 938
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoSatSupport4k()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_1f
    const-string v0, "11"

    .line 939
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

    .line 822
    const-string v2, "key_anti_video"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 823
    const-string v3, "off"

    if-nez v2, :cond_10

    move-object v4, v3

    goto :goto_11

    :cond_10
    move-object v4, v2

    .line 824
    :goto_11
    const-string v2, "key_super_anti_video"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    move-object v5, v3

    goto :goto_1c

    :cond_1b
    move-object v5, v2

    .line 826
    :goto_1c
    const-string v2, "key_video_portrait"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    move-object v6, v3

    goto :goto_27

    :cond_26
    move-object v6, v2

    .line 828
    :goto_27
    const-string v2, "key_video_spot"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_32

    move-object/from16 v19, v3

    goto :goto_34

    :cond_32
    move-object/from16 v19, v2

    .line 830
    :goto_34
    const-string v2, "key_video_facebeauty"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 831
    const-string/jumbo v2, "video_facebeauty_off"

    :cond_3f
    move-object v7, v2

    .line 832
    const-string v2, "key_video_makeup"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4a

    move-object v15, v3

    goto :goto_4b

    :cond_4a
    move-object v15, v2

    .line 834
    :goto_4b
    const-string v2, "key_360_video_hdr"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_54

    move-object v2, v3

    .line 836
    :cond_54
    const-string v8, "key_dol_video_hdr"

    invoke-interface {v1, v8}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5d

    move-object v8, v3

    .line 838
    :cond_5d
    const-string v9, "key_com_video_hdr"

    invoke-interface {v1, v9}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_66

    move-object v9, v3

    .line 840
    :cond_66
    const-string v10, "key_video_quality"

    invoke-interface {v1, v10}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 841
    const-string v11, "key_video_enhance"

    invoke-interface {v1, v11}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_76

    move-object v12, v3

    goto :goto_77

    :cond_76
    move-object v12, v11

    .line 843
    :goto_77
    const-string v11, "key_video_asd"

    invoke-interface {v1, v11}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_80

    move-object v11, v3

    .line 845
    :cond_80
    const-string v13, "key_video_super_night"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_8a

    move-object v14, v3

    goto :goto_8b

    :cond_8a
    move-object v14, v13

    .line 847
    :goto_8b
    const-string v13, "key_video_enhance_yuv"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_96

    move-object/from16 v16, v3

    goto :goto_98

    :cond_96
    move-object/from16 v16, v13

    .line 849
    :goto_98
    const-string v13, "key_video_preisp"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a3

    move-object/from16 v17, v3

    goto :goto_a5

    :cond_a3
    move-object/from16 v17, v13

    .line 851
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

    .line 853
    :goto_b3
    const-string v3, "filter_default"

    invoke-static {v3, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_be

    move-object/from16 v18, v21

    goto :goto_c0

    :cond_be
    move-object/from16 v18, v13

    .line 856
    :goto_c0
    const-string v3, "key_video_effect"

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ca

    move-object/from16 v3, v21

    .line 858
    :cond_ca
    const-string v13, "key_video_frame"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_d5

    move-object/from16 v20, v21

    goto :goto_d7

    :cond_d5
    move-object/from16 v20, v13

    .line 860
    :goto_d7
    const-string v13, "key_video_hdr_10_plus"

    invoke-interface {v1, v13}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e2

    move-object/from16 v22, v21

    goto :goto_e4

    :cond_e2
    move-object/from16 v22, v1

    .line 862
    :goto_e4
    filled-new-array {v2, v8, v9}, [Ljava/lang/String;

    move-result-object v1

    .line 864
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

    .line 862
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

    .line 871
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

    .line 874
    :goto_11f
    iget-boolean v6, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    if-eqz v6, :cond_130

    .line 875
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAiAntiVideo:Z

    if-eqz v6, :cond_12e

    .line 876
    const-string v6, "ai"

    goto :goto_132

    :cond_12e
    move-object v6, v13

    goto :goto_132

    :cond_130
    move-object/from16 v6, v21

    .line 880
    :goto_132
    iget-object v13, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    move-object/from16 v21, v7

    const-string v7, "key_anti_video_manual_value"

    move-object/from16 v23, v8

    invoke-virtual {v13}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v7, v9, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 881
    iget-object v0, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v8, "key_super_anti_video_manual_value"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v6, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
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

    .line 884
    :cond_15d
    :goto_15d
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 886
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

    .line 884
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

    .line 755
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_anti_video_manual_value"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
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

    .line 761
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

    .line 767
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

    .line 769
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

    .line 771
    :goto_51
    const-string v1, "key_video_facebeauty"

    .line 772
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    .line 771
    const-string/jumbo v9, "video_facebeauty_off"

    invoke-virtual {v0, v1, v9, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_62

    move-object v8, v9

    goto :goto_63

    :cond_62
    move-object v8, v1

    .line 774
    :goto_63
    const-string v1, "key_video_makeup"

    .line 775
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 774
    invoke-virtual {v0, v1, v4, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_71

    move-object v14, v4

    goto :goto_72

    :cond_71
    move-object v14, v1

    .line 777
    :goto_72
    const-string v1, "key_360_video_hdr"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v1, v4, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7f

    move-object v1, v4

    .line 779
    :cond_7f
    const-string v9, "key_dol_video_hdr"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v4, v10}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8c

    move-object v9, v4

    .line 781
    :cond_8c
    const-string v10, "key_com_video_hdr"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v4, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_99

    move-object v10, v4

    .line 783
    :cond_99
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->needNewVideoMemory()Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 784
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentCameraFacingBack()Z

    move-result v11

    if-eqz v11, :cond_b2

    .line 785
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_c3

    .line 786
    :cond_b2
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v11

    invoke-virtual {v11}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_c3

    .line 787
    :cond_bf
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v11

    .line 788
    :goto_c3
    const-string v12, "key_video_quality"

    invoke-virtual {v0, v12, v4, v11}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 789
    const-string v12, "key_video_enhance"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v4, v13}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_d6

    move-object v12, v4

    .line 791
    :cond_d6
    const-string v13, "key_video_asd"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v13, v4, v15}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_e3

    move-object v13, v4

    .line 793
    :cond_e3
    const-string v15, "key_video_super_night"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v15, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f0

    move-object v3, v4

    .line 795
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

    .line 797
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

    .line 803
    :goto_11d
    const-string v2, "key_video_filter"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12a

    move-object v2, v4

    .line 805
    :cond_12a
    const-string v3, "filter_default"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_135

    move-object/from16 v17, v4

    goto :goto_137

    :cond_135
    move-object/from16 v17, v2

    .line 808
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

    .line 810
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

    .line 812
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

    .line 814
    :goto_16a
    filled-new-array {v1, v9, v10}, [Ljava/lang/String;

    move-result-object v0

    .line 816
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v5, p2

    move-object v9, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, p0

    .line 814
    invoke-static/range {v5 .. v21}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static videoSettingSupportSAT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 18

    .line 900
    const-string v0, "off"

    invoke-virtual {v0, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p9

    if-eqz p9, :cond_6b

    .line 901
    invoke-static/range {p0 .. p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoAntiVideoSupportSAT(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 902
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    move-object/from16 p0, p15

    .line 903
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    const-string/jumbo p0, "video_facebeauty_off"

    .line 904
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 905
    invoke-virtual {v0, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 906
    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 907
    invoke-virtual {v0, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 908
    invoke-virtual {v0, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 909
    invoke-virtual {v0, p12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 910
    invoke-virtual {v0, p13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 911
    invoke-virtual {v0, p14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 912
    invoke-virtual {v0, p11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    move-object/from16 p0, p16

    .line 913
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 914
    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->videoQualitySupportSAT(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 915
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

    .line 2002
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-eqz p1, :cond_8d

    if-nez v0, :cond_8

    goto/16 :goto_8d

    .line 2009
    :cond_8
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_18

    .line 2010
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    :cond_18
    const/4 v2, 0x0

    .line 2011
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 2012
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addVideoToDataBase duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2013
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v2, p1, p3, p4, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createVideoContentValues(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;JLandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v1

    .line 2015
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_video_quality"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    if-eqz v5, :cond_51

    .line 2017
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, p3, p4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setKeyVideoDurationAndDuration(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5c

    .line 2019
    :cond_51
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAnalyticsVideoDurationKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v2, v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setKeyVideoDurationAndDuration(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2021
    :goto_5c
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 2022
    const-string p3, "_data"

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    .line 2023
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getTargetUri()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_7e

    .line 2025
    new-instance p4, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;

    .line 2026
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Ljava/lang/Object;I)V

    .line 2025
    invoke-interface {v0, v1, p3, p4}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Landroid/net/Uri;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void

    .line 2028
    :cond_7e
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    .line 2029
    new-instance p3, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCurrentFile:Ljava/lang/String;

    invoke-direct {p3, p0, p4, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$MediaSaverListener;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1, p3}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void

    .line 2004
    :cond_8d
    :goto_8d
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "addVideoToDataBase mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void
.end method

.method protected autoWatermark()Z
    .registers 2

    .line 2232
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_d

    .line 2233
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "autoWatermark mSettingController is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2236
    :cond_d
    const-string p0, "key_auto_watermark"

    .line 2237
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2236
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 2228
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

    .line 1975
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 1976
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoFileInfo is null,we have not information to save"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1980
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    .line 1981
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1982
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

    .line 1984
    :try_start_35
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1985
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 1986
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/io/FileDescriptor;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    goto :goto_51

    :catch_45
    move-exception v0

    goto :goto_4e

    .line 1988
    :cond_47
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4d} :catch_45

    goto :goto_51

    .line 1991
    :goto_4e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1993
    :goto_51
    iget-wide v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isDurationInValid(J)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1994
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

    .line 1995
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    return v1

    :cond_75
    const/4 p0, 0x0

    return p0
.end method

.method public checkPermitBeforeStart()Z
    .registers 1

    .line 1655
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkStorageSpace()Z

    move-result p0

    return p0
.end method

.method protected checkRemainedRecorderTime(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    .line 1801
    const-string v3, "0"

    if-gtz v2, :cond_10

    .line 1802
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[checkRemainedRecorderTime] no enough space"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3

    .line 1805
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getBytePerS()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-gtz v0, :cond_21

    .line 1807
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[checkRemainedRecorderTime] bytePerS is error"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 1811
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

    .line 1813
    div-long/2addr p1, v4

    long-to-int p1, p1

    .line 1814
    div-int/lit16 p1, p1, 0x3e8

    if-gtz p1, :cond_4d

    .line 1816
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[checkRemainedRecorderTime] totalSeconds is 0."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3

    .line 1819
    :cond_4d
    rem-int/lit8 p0, p1, 0x3c

    .line 1820
    div-int/lit8 p2, p1, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    .line 1821
    div-int/lit16 p1, p1, 0xe10

    if-lez p1, :cond_70

    .line 1823
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

    .line 1825
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

    .line 1774
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gtz v4, :cond_13

    .line 1776
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[computeRemainedRecorderTime] no enough space"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v5

    .line 1779
    :cond_13
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getBytePerS()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-gtz v2, :cond_23

    .line 1781
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[computeRemainedRecorderTime] bytePerS is error"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v5

    .line 1785
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

    .line 1787
    div-long/2addr v0, v6

    .line 1788
    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTotalRemainedRecorderTime:J

    long-to-int p0, v0

    .line 1789
    div-int/lit16 p0, p0, 0x3e8

    .line 1790
    rem-int/lit8 v0, p0, 0x3c

    .line 1791
    div-int/lit8 v1, p0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 1792
    div-int/lit16 p0, p0, 0xe10

    if-lez p0, :cond_6a

    .line 1794
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

    .line 1796
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

    .line 2255
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

    .line 1578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1579
    new-instance v2, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    invoke-direct {v2, p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;-><init>(Landroid/media/CamcorderProfile;)V

    .line 1580
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    if-eqz p2, :cond_33

    .line 1582
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 p2, 0x0

    if-nez p1, :cond_1b

    .line 1584
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStorageOperator is null,can not create Video File Info"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2

    .line 1587
    :cond_1b
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    .line 1588
    invoke-interface {p1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setFileFolder(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    .line 1589
    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)Z

    move-result p1

    if-nez p1, :cond_30

    const/4 p1, 0x7

    .line 1590
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    return-object p2

    .line 1593
    :cond_30
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    .line 1607
    :cond_33
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->build()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 1608
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

    .line 1609
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    return-object p0
.end method

.method protected deleteTempFile()V
    .registers 4

    .line 1908
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 1910
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

    .line 1744
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempMediaRecorderFileDescriptor:Ljava/io/FileDescriptor;

    .line 1745
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1746
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempFileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 4

    if-nez p2, :cond_e

    if-eqz p1, :cond_e

    .line 2221
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 2222
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    :cond_e
    return-void
.end method

.method protected getAnalyticsVideoDurationKey()Ljava/lang/String;
    .registers 1

    .line 446
    const-string p0, "key_video_duration"

    return-object p0
.end method

.method protected getCamcorderProfile(I)Landroid/media/CamcorderProfile;
    .registers 3

    const/4 p0, 0x5

    .line 1329
    invoke-static {p1, p0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1330
    invoke-static {p1, p0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurShutterPriority()I
    .registers 1

    .line 542
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    return p0
.end method

.method protected getCurrentSatStreamId()I
    .registers 1

    .line 386
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    return p0
.end method

.method public final getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;
    .registers 1

    .line 279
    sget-object p0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9

    if-eqz p7, :cond_4

    goto/16 :goto_a1

    .line 2349
    :cond_4
    const-string p6, "key_super_definition"

    invoke-interface {p4, p6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 2350
    invoke-virtual {p0, p4, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForWide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_19

    .line 2351
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2352
    :cond_19
    invoke-virtual {p0, p1, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->needReopenForMacroCamera(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p7

    if-eqz p7, :cond_32

    .line 2353
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_31

    .line 2355
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    :cond_31
    return-object p0

    .line 2357
    :cond_32
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportVideoCamera()Z

    move-result p7

    const-string v0, "0"

    if-eqz p7, :cond_6a

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 2358
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object p1

    .line 2359
    const-string p2, "key_brightbess_value"

    invoke-interface {p4, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2360
    const-string/jumbo p3, "value_light"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_69

    .line 2361
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

    .line 2365
    :cond_6a
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 2366
    invoke-direct {p0, p2, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCameraForOpen(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2367
    :cond_75
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeSwitch:Z

    if-nez p1, :cond_92

    const-string p1, "on"

    invoke-static {p6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 2368
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    .line 2369
    invoke-static {p0, p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a1

    invoke-static {p5}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a1

    return-object p0

    .line 2375
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

    .line 1423
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1424
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1425
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getPreviewSize videoFrameSize is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1426
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    const/16 v0, 0x2d0

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 1428
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

    .line 1435
    invoke-static/range {v0 .. v8}, Lcom/transsion/camera/utils/CameraUtil;->findBestMatchSize(Ljava/util/List;DLandroid/util/Size;DZIZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 284
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

    .line 1241
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoFaceBeautyType:I

    return p0
.end method

.method protected getVideoOrientation()I
    .registers 6

    .line 1635
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1637
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[getVideoOrientation] mCameraDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1641
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_mirror"

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1642
    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1643
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

    .line 1646
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

    .line 1648
    :cond_37
    :goto_37
    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getVideoHintOrientation(ILjava/lang/String;Z)I

    move-result v0

    .line 1649
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

    .line 1627
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    return p0
.end method

.method protected getVideoSavingMessage()Ljava/lang/String;
    .registers 2

    .line 1548
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/app/common/R$string;->saving_dialog_string:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 304
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CameraMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 305
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget-boolean p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mSatSupportWide:Z

    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    .line 307
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSuperNightBvLimit:I

    .line 306
    invoke-static {p4}, Lcom/transsion/camera/utils/FeatureSupport;->getVideoSuperNightBvDebug(I)I

    move-result p4

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightBvLimit:I

    .line 308
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoSuperNightOutBvLimit:I

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoSuperNightOutBvLimit:I

    .line 309
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiLowLightBvLimit:I

    iput p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSuperAntiLowLightBvLimit:I

    .line 310
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p4

    iget-boolean p4, p4, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLowlightHintSupport:Z

    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsLowlightHintSupport:Z

    .line 311
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->refreshShutterType()V

    .line 312
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 313
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pocketScreen()Z

    move-result p5

    const/4 p6, 0x1

    const/4 p7, 0x0

    if-nez p5, :cond_49

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->flipScreen()Z

    move-result p5

    if-eqz p5, :cond_47

    goto :goto_49

    :cond_47
    move p5, p7

    goto :goto_4a

    :cond_49
    :goto_49
    move p5, p6

    :goto_4a
    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->setAodCamera(Z)V

    .line 314
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p4, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)V

    .line 315
    new-instance p4, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    invoke-direct {p4}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;-><init>()V

    .line 316
    invoke-virtual {p4, p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setContext(Landroid/content/Context;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 317
    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 318
    invoke-virtual {p4, p5}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 319
    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setPolicy(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 320
    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 321
    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setVideoStateCallback(Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 322
    invoke-virtual {p4, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setCameraRecorder(Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 323
    invoke-virtual {p4, p3}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;

    move-result-object p4

    .line 324
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/recorder/RecorderManager$Builder;->build()Lcom/transsion/camera/app/common/recorder/RecorderManager;

    move-result-object p4

    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    .line 325
    invoke-virtual {p4}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->init()V

    .line 326
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p4}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->supportAudioZoom()Z

    move-result p4

    iput-boolean p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportAudioZoom:Z

    .line 327
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 341
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    .line 342
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p4

    iget-boolean p4, p4, Lcom/transsion/camera/app/common/CommonConfigUtil;->mVideoPreviewSupportP3:Z

    if-nez p4, :cond_ac

    .line 343
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getP3VideoPreviewSwitch(Landroid/content/Context;)I

    move-result p1

    if-ne p1, p6, :cond_a9

    goto :goto_ac

    .line 344
    :cond_a9
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    goto :goto_ae

    :cond_ac
    :goto_ac
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT_FOR_P3:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 342
    :goto_ae
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    .line 345
    const-string p1, "key_video_quality"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 346
    const-string p1, "key_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 347
    const-string p1, "key_super_anti_video"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 348
    const-string p1, "key_video_portrait"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 349
    const-string p1, "key_video_spot"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 350
    const-string p1, "key_video_facebeauty"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 351
    const-string p1, "key_storage"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 352
    const-string p1, "key_video_super_night"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 353
    const-string p1, "key_video_enhance"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 354
    const-string p1, "key_video_super_night_yuv"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 355
    const-string p1, "key_video_enhance_yuv"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 356
    const-string p1, "key_video_asd"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 357
    const-string p1, "key_algorithm_migrate"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 358
    const-string p1, "key_video_makeup"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 359
    const-string p1, "key_video_filter"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 360
    const-string p1, "key_video_effect"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 361
    const-string p1, "key_video_frame"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 362
    const-string p1, "key_video_preisp"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 363
    const-string p1, "key_fold_switch_preview"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 364
    const-string p1, "key_check_storage"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 365
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportAudioZoom:Z

    if-eqz p1, :cond_11e

    .line 366
    const-string p1, "key_camera_zoom"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 368
    :cond_11e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHdr10PlusSupport()Z

    move-result p1

    if-eqz p1, :cond_12d

    .line 369
    const-string p1, "key_video_hdr_10_plus"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_12d
    const/4 p1, 0x6

    .line 371
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-eq p1, p2, :cond_13b

    .line 372
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 374
    :cond_13b
    iput-boolean p7, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 375
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    return-void
.end method

.method public initSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 380
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->initSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 381
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

    .line 1324
    invoke-static {p1}, Lcom/transsion/camera/utils/VideoQualityUtils;->isSupportCustomVideoQuality(I)Z

    move-result p0

    return p0
.end method

.method protected isSupportGLRecording()Z
    .registers 2

    .line 2313
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

    .line 1245
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSupportLiteFaceBeauty:Z

    return p0
.end method

.method public isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z
    .registers 4

    .line 2260
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultAntiValueOn:Z

    .line 2261
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsSuperAntiVideoDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultSuperAntiValueOn:Z

    .line 2262
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsVideoPreIspDefaultOn:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDefaultPreIspOn:Z

    if-eqz p2, :cond_26

    if-nez p3, :cond_1d

    goto :goto_26

    .line 2266
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

    .line 2270
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->currentCameraFacingBack()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-nez p1, :cond_a

    goto :goto_1a

    .line 2274
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isWideCameraOpen(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 2278
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

    .line 2243
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_mirror"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2244
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 2245
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

    .line 2208
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p4, "notifyPictureTaken"

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2209
    iput-boolean p3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 2210
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p4

    if-nez p2, :cond_1d

    if-eqz p4, :cond_1d

    const/16 p2, 0x200

    .line 2212
    invoke-static {p1, p2, p3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2213
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    :cond_1d
    return p3
.end method

.method protected notifyRawActionToUI(I)V
    .registers 4

    .line 2114
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_20

    .line 2116
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

    .line 2120
    :cond_20
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected notifyRecordStateChanged(Z)V
    .registers 3

    .line 1696
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_c

    .line 1697
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyRecordStateChanged mSettingController is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1700
    :cond_c
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsVideoRecording:Z

    .line 1701
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    .line 1702
    const-string v0, "key_record_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    if-eqz p1, :cond_1f

    .line 1703
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

    .line 2124
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_20

    .line 2126
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

    .line 2130
    :cond_20
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method protected notifyToIdle()V
    .registers 4

    const/4 v0, 0x0

    .line 2099
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2100
    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 2101
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 2134
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$3;->$SwitchMap$com$transsion$camera$app$common$ui$IVideoUI$VideoUIState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    .line 2146
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

    .line 2141
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_38

    .line 2142
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    return-void

    .line 2136
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_38

    .line 2137
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_38
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 675
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 1383
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_22

    .line 1385
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->operationPrepared()V

    .line 1386
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p1, :cond_11

    .line 1387
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->operationPrepared()V

    .line 1389
    :cond_11
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    .line 1390
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1391
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 1393
    :cond_1b
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    if-eqz p1, :cond_22

    .line 1394
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->retriggleShutterClick()V

    :cond_22
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged start, isQuitVIP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedCacheWhenQuitVIP:Z

    const/4 p1, 0x0

    .line 485
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 486
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    const-string v1, "key_location"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 489
    :try_start_2f
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 490
    const-string v2, "-1"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 491
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_51

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v0, p1, p1, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    .line 493
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 494
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_49

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 498
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onConfigurationChanged end"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_51
    move-exception p0

    .line 491
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .registers 2

    .line 1372
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->DEBUG_VIDEO_PREVIEW_SIZE_TO_1440_X_1080:Z

    if-eqz v0, :cond_7

    .line 1373
    const-string p0, "6"

    return-object p0

    .line 1375
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1378
    :cond_d
    const-string v0, "key_video_quality"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .registers 1

    .line 297
    new-instance p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    return-object p0
.end method

.method public onFirstSteadyFrame()V
    .registers 1

    .line 2421
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 2423
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getLeftSpace()J

    return-void
.end method

.method public onMediaRecorderPaused()V
    .registers 2

    .line 1849
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderPrepareAbort()V
    .registers 2

    const/16 v0, 0x10

    .line 1887
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1888
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    const/4 v0, 0x1

    .line 1889
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecording(Z)Z

    .line 1890
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .registers 10

    .line 1733
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempMediaRecorderFile()V

    .line 1734
    iput-boolean p5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRecorderInitSuccess:Z

    .line 1735
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result v0

    .line 1736
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

    .line 1740
    :cond_23
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .registers 4

    .line 1722
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 1723
    const-string v1, "on_video_recording_ui_changed"

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    :cond_f
    const/16 v0, 0xf

    .line 1725
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1726
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    .line 1727
    const-string v0, "key_check_storage"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo v1, "value_storage_sufficient"

    .line 1728
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaRecorderProcessing()V
    .registers 4

    .line 1944
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_super_anti_video"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1945
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/16 v2, 0x1b

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(IZ)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1946
    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public onMediaRecorderResumed()V
    .registers 2

    .line 1854
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 4

    .line 1764
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->computeRemainedRecorderTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1765
    iget v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_e

    .line 1766
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 1768
    :cond_e
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 1769
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->updateLastClickTime()V

    .line 1770
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onRecordStarted()V

    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 4

    const/16 v0, 0x34

    .line 1880
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1881
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 1882
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->handRecorderStopped(IZ)V

    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 5

    .line 1859
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopWithInValidFile(I)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1860
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

    .line 1863
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isVideoFileValid()Z

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_3a

    .line 1864
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onMediaRecorderStopping] video file too short"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1866
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1867
    sget-object p1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/4 p1, 0x0

    .line 1868
    invoke-virtual {p0, v0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1871
    :cond_3a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz p1, :cond_47

    .line 1872
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

    .line 1155
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

    .line 1156
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e9

    const/4 v0, 0x0

    .line 1157
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 1158
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

    .line 1160
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_53

    .line 1161
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    :cond_53
    if-eqz v0, :cond_a5

    .line 1164
    const-string v1, "key_quality_recover_default"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1165
    const-string v1, "key_anti_video_recover_default"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1166
    const-string v1, "key_super_anti_video_recover_default"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    const-string v1, "key_video_quality"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1168
    const-string v1, "key_on_quality_change_end"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1170
    :cond_83
    const-string v1, "key_anti_video"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1171
    const-string v1, "key_on_anti_video_change_end"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1173
    :cond_94
    const-string v1, "key_super_anti_video"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1174
    const-string v1, "key_on_super_anti_video_change_end"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1177
    :cond_a5
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    if-eqz v0, :cond_e9

    .line 1178
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1179
    const-string v0, "key_dol_video_hdr"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 1180
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p1, :cond_c2

    .line 1182
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->requestChangeSettingValueSync(Ljava/lang/String;)V

    .line 1185
    :cond_c2
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1186
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p1

    if-nez p1, :cond_d5

    .line 1187
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

    .line 1189
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    .line 1190
    const-string p0, "-1"

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 1191
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    const/4 p0, 0x0

    .line 1192
    iput-boolean p0, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    :cond_e9
    return-void
.end method

.method public onSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1143
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

    .line 1144
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_4c

    const-string v1, "key_360_video_hdr"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1145
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mIsVideoHdrOff:Z

    .line 1147
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    if-nez v0, :cond_55

    .line 1148
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFirstRelationHeaderKey:Ljava/lang/String;

    .line 1149
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updatePreviewSizeOnSettingChangeStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1046
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
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

    .line 1049
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

    .line 1050
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1052
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string/jumbo v3, "wide_camera"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
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

    .line 1054
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->settingRelateSwitchCamera(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 1055
    :cond_60
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_73

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSatSupportWide:Z

    if-nez v3, :cond_73

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1056
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    return-void

    .line 1058
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

    .line 1059
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntivideoSupportWide:Z

    if-eqz v0, :cond_9f

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackWideCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_103

    .line 1061
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->switchWideCamera(Ljava/lang/String;)V

    goto :goto_103

    .line 1064
    :cond_9f
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const-string v3, "off"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->switchWideCamera(Ljava/lang/String;)V

    goto :goto_103

    .line 1066
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

    .line 1067
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1068
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getPreIspTeleFakeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;)V

    goto :goto_103

    .line 1070
    :cond_d3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 1071
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getTargetCameraId()Ljava/lang/String;

    move-result-object v3

    .line 1072
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_103

    .line 1074
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v8}, Lcom/transsion/camera/app/common/IAppUI;->skipInteractiveUpdate(Z)V

    .line 1075
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1076
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v3, v1}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;Z)V

    goto :goto_f9

    .line 1078
    :cond_f4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUI;->switchSatCamera(Ljava/lang/String;)V

    .line 1080
    :goto_f9
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 1081
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    .line 1082
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1088
    :cond_103
    :goto_103
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1089
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    .line 1092
    :cond_10c
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needUpdatePreviewSize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v3, "key_video_asd"

    if-nez v0, :cond_15c

    const-string v0, "key_anti_video"

    .line 1093
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1094
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1095
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    if-eq v0, p2, :cond_130

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    if-nez v0, :cond_15c

    :cond_130
    const-string v0, "key_video_enhance_yuv"

    .line 1096
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15c

    const-string v0, "key_video_enhance"

    .line 1097
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    const-string v0, "key_video_hdr_10_plus"

    .line 1098
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1099
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    .line 1100
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15c

    const-string v0, "key_video_spot"

    .line 1101
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15e

    .line 1102
    :cond_15c
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    .line 1105
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

    .line 1106
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mRestartPreview:Z

    const/4 v0, 0x0

    .line 1107
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingChangeDone(Ljava/lang/String;)V

    .line 1109
    :cond_178
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->settingRelateSwitchCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 1110
    iput-boolean v8, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 1113
    const-string v0, "key_360_video_hdr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c

    const-string v0, "key_video_super_night"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    .line 1114
    :cond_19c
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedUnlockAfAe:Z

    .line 1118
    :cond_19e
    const-string v0, "key_algorithm_migrate"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmMigrate(Z)V

    .line 1122
    :cond_1b1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportAudioZoom:Z

    if-eqz v0, :cond_1fb

    .line 1123
    const-string v0, "key_camera_zoom"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1fb

    if-eqz p2, :cond_1fb

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1fb

    .line 1124
    sget p1, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->DEFAULT_ZOOM_VALUE:I

    .line 1126
    :try_start_1c7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1cb
    .catch Ljava/lang/NumberFormatException; {:try_start_1c7 .. :try_end_1cb} :catch_1cc

    goto :goto_1ef

    :catch_1cc
    move-exception v0

    .line 1128
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

    .line 1130
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

    .line 686
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

    .line 687
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 688
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v0, :cond_24

    .line 689
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    .line 691
    :cond_24
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSettingReady()V

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v1

    .line 695
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

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_6c

    .line 698
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    goto :goto_6c

    .line 701
    :cond_58
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_64

    .line 702
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->onSatCameraChanged(I)V

    .line 704
    :cond_64
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSATStreamIdChanged(IIZZ)V

    .line 705
    iput v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mLastStreamId:I

    .line 708
    :cond_6c
    :goto_6c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportLiteFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_face_beauty"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    const-string v1, "0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 711
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

    .line 565
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    if-nez p2, :cond_6

    return v0

    .line 567
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isInVideoHDRState()Z

    move-result v1

    .line 568
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isInVideoSightShockState()Z

    move-result v2

    .line 569
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

    .line 571
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

    .line 572
    iget v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    if-ne v3, v0, :cond_52

    return v0

    .line 576
    :cond_52
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkPermitBeforeStart()Z

    move-result v3

    if-nez v3, :cond_65

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onShutterClick: checkPermitBeforeStart false"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v5, :cond_64

    .line 580
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopRecordingByForce()V

    :cond_64
    return v0

    .line 584
    :cond_65
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v3

    if-eqz v3, :cond_74

    const-class v3, Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->checkCanClick(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_74

    return v0

    .line 587
    :cond_74
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    if-eqz v5, :cond_7b

    const-wide/16 v5, 0x514

    goto :goto_7d

    :cond_7b
    const-wide/16 v5, 0x3e8

    .line 592
    :goto_7d
    invoke-static {v5, v6}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-nez p1, :cond_11b

    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v3, 0x5

    if-ne p1, v3, :cond_8a

    goto/16 :goto_11b

    .line 598
    :cond_8a
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 599
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 602
    :cond_98
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isDVHintShowing()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 603
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClick: isDVHintShowing"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 606
    :cond_a6
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result p1

    if-eqz p1, :cond_be

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p1, :cond_be

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->isStopping()Z

    move-result p1

    if-eqz p1, :cond_be

    .line 607
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClick mTextureRecorder.isStopping return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 610
    :cond_be
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p1, :cond_ea

    const-string p1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ea

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result p1

    if-nez p1, :cond_ea

    if-nez v1, :cond_ea

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->shouldWaitVideoRecordEndAction()Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onShutterClick mMediaRecorder.shouldWaitVideoRecordEndAction() return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 614
    :cond_ea
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    const/16 p1, 0xf

    .line 615
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 617
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->supportDVGLRecording()Z

    move-result p1

    if-eqz p1, :cond_102

    .line 618
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->startStopDVRecording()V

    goto :goto_11a

    :cond_102
    if-eqz v1, :cond_108

    .line 620
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->starStopHDRRecording()V

    goto :goto_11a

    :cond_108
    if-eqz v2, :cond_10e

    .line 622
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->startStopVSSRecording()V

    goto :goto_11a

    .line 624
    :cond_10e
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[videoPerformance] startStop"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 625
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->startStop()V

    :goto_11a
    return v0

    .line 594
    :cond_11b
    :goto_11b
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onShutterClick: mWaitforSateChanged"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 595
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    return v0
.end method

.method public onShutterDown()V
    .registers 3

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onShutterDown"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDownStartVideoRecord:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    .line 651
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_18
    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 5

    .line 632
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShutterLongClick mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 633
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 635
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 p2, 0x5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_21

    return v0

    .line 639
    :cond_21
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isShoulderKeyLongPress()Z

    move-result p1

    if-nez p1, :cond_32

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x15

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_32
    return v0
.end method

.method public onShutterUp(I)V
    .registers 5

    .line 657
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

    .line 658
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurShutterPriority:I

    .line 659
    iget p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2a

    goto :goto_48

    .line 663
    :cond_2a
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    if-eqz p1, :cond_48

    const/4 p1, 0x0

    .line 664
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 666
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mDownStartVideoRecord:Z

    if-nez v0, :cond_48

    .line 667
    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    .line 668
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

    .line 1493
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V

    .line 1495
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1497
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onVideoFileSaved appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1501
    :cond_11
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 1502
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 1503
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModeSupportThumbnailTransition2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 1504
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupportThumbnailTransition(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1503
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1505
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupportThumbnailTransition(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    if-eqz p1, :cond_54

    .line 1506
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-wide/16 v1, 0x1

    .line 1507
    invoke-static {p2, p1, v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;IJ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1508
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;->setThumbnailBitmap(Landroid/graphics/Bitmap;ZZ)V

    :cond_54
    const/16 p0, 0x200

    .line 1510
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1511
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 1461
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1463
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getAppUIForUpdateThumbnail()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1465
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onVideoFileSaved appUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1469
    :cond_11
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 1470
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 1471
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModeSupportThumbnailTransition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 1472
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupportThumbnailTransition(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1471
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1473
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isModeSupportThumbnailTransition(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_54

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    if-eqz p1, :cond_54

    .line 1474
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const-wide/16 v1, 0x1

    .line 1475
    invoke-static {p2, p1, v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1476
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v1, v2}, Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;->setThumbnailBitmap(Landroid/graphics/Bitmap;ZZ)V

    :cond_54
    const/16 p0, 0x200

    const-wide/16 v1, -0x1

    .line 1478
    invoke-static {p2, p0, v1, v2}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1480
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected abstract onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
.end method

.method public onVideoRestartPreviewed()V
    .registers 2

    const/16 v0, 0x10

    .line 1413
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1414
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSettingReady:Z

    .line 465
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mWaitforSateChanged:Z

    .line 466
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v1

    const-string v2, "key_location"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    .line 467
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 468
    :try_start_17
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 469
    const-string v2, "-1"

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_3a

    .line 471
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->markEndWaitVideoRecordEndAction()V

    .line 472
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v1, v0, v0, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    .line 473
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mShutterLongClick:Z

    .line 474
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mInTakingPicture:Z

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_36

    .line 476
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 478
    :cond_36
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->pause()V

    return-void

    :catchall_3a
    move-exception p0

    .line 470
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method protected final pauseResumeRecording()V
    .registers 3

    .line 1567
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseResumeRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1568
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->pauseResume()V

    return-void
.end method

.method protected prepareVideoData()I
    .registers 6

    .line 1249
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 1250
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mQualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1251
    :try_start_7
    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-nez v2, :cond_13

    .line 1252
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateQuality(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :catchall_10
    move-exception p0

    goto/16 :goto_f7

    .line 1254
    :cond_13
    const-string v0, "-1"

    .line 1256
    :goto_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_10

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    return v1

    .line 1262
    :cond_1a
    const-string v2, "_"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1263
    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v3

    if-eqz v3, :cond_f6

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v3, :cond_f6

    .line 1264
    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 1266
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1267
    const-string v3, "0"

    .line 1270
    :cond_38
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1271
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 1273
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 1274
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1275
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1277
    :cond_64
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setVideoSize(Landroid/media/CamcorderProfile;)V

    .line 1279
    const-string v2, "6_60"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    const-string v2, "8_60"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_83

    .line 1293
    :cond_78
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needReduceFPSTo24(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const/16 v0, 0x18

    .line 1294
    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    goto :goto_ba

    .line 1280
    :cond_83
    :goto_83
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_ba

    .line 1281
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportHFPSAntiVideo:Z

    if-eqz v0, :cond_a6

    .line 1282
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mReduceBitRateForHighFps:Z

    if-nez v0, :cond_9d

    .line 1283
    iget v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1285
    :cond_9d
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    goto :goto_ba

    .line 1287
    :cond_a6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mReduceBitRateForHighFps:Z

    if-nez v0, :cond_b4

    .line 1288
    iget v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1290
    :cond_b4
    iget v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1296
    :cond_ba
    :goto_ba
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    new-instance v2, Lcom/transsion/camera/app/common/mode/RecorderParam;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/transsion/camera/app/common/mode/RecorderParam;-><init>(Landroid/util/Size;Landroid/media/CamcorderProfile;)V

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    .line 1297
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    const/4 p0, 0x1

    return p0

    .line 1299
    :cond_cf
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 1300
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCamcorderProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1301
    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setProfileConfigure(Landroid/media/CamcorderProfile;)V

    .line 1302
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setVideoSize(Landroid/media/CamcorderProfile;)V

    .line 1303
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    new-instance v3, Lcom/transsion/camera/app/common/mode/RecorderParam;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/transsion/camera/app/common/mode/RecorderParam;-><init>(Landroid/util/Size;Landroid/media/CamcorderProfile;)V

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    .line 1304
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_f6
    return v1

    .line 1256
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

    .line 2083
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 2084
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 2085
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_1a

    .line 2086
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isActivityPaused()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 2087
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->sendNotification(Landroid/content/Context;)V

    goto :goto_25

    :cond_1a
    if-nez p1, :cond_25

    .line 2088
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz p1, :cond_25

    .line 2089
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->sendNotification(Landroid/content/Context;)V

    :cond_25
    :goto_25
    const/16 p1, 0x3b

    .line 2092
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_31

    const/4 p1, 0x4

    .line 2094
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showInfo(I)V

    :cond_31
    return-void
.end method

.method protected refreshShutterType()V
    .registers 3

    .line 391
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getShutterTypeSelftimerOff()I

    move-result v0

    .line 392
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 393
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    return-void
.end method

.method public resume()V
    .registers 4

    .line 451
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->resume()V

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTempLocation:Landroid/location/Location;

    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    if-nez v0, :cond_14

    .line 455
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerClient:Lcom/transsion/camera/app/common/mode/CommonVideoMode$VideoScannerConnectionClinet;

    .line 457
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_23

    .line 458
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

    .line 1619
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoRecodingOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 1620
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setVideoOrientation(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 1621
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->needAudio()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    :cond_19
    return-void
.end method

.method public setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V
    .registers 2

    .line 1573
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mThumbnailTransition:Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;

    return-void
.end method

.method protected setVideoSize(Landroid/media/CamcorderProfile;)V
    .registers 5

    .line 1338
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2c

    .line 1339
    iget v0, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->getPictureForVideoQuality(I)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 1340
    iget p1, p1, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1}, Lcom/transsion/camera/utils/VideoQualityUtils;->getPictureForVideoQuality(I)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    .line 1341
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    return-void

    .line 1343
    :cond_2c
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v2, v0

    mul-float/2addr v2, v1

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v1, p1

    div-float/2addr v2, v1

    float-to-double v1, v2

    iput-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    .line 1344
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    .line 1345
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

    .line 1681
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreOrientation:I

    .line 1682
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRecodingOrientation:I

    .line 1683
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_19

    .line 1685
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[startRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1688
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportShutterSound()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;Z)V

    const/4 p1, 0x1

    .line 1689
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1690
    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 1691
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return p1
.end method

.method protected startStopDVRecording()V
    .registers 1

    .line 2335
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->starStopHDRRecording()V

    return-void
.end method

.method protected startStopVSSRecording()V
    .registers 1

    .line 2339
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->starStopHDRRecording()V

    return-void
.end method

.method public stopRecording(Z)Z
    .registers 3

    .line 1708
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v0, :cond_d

    .line 1710
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[stopRecording] cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1713
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->stopRecording()V

    if-eqz p1, :cond_15

    .line 1715
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

    .line 679
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->leave(ZZZ)Z

    return-void
.end method

.method protected storingVideoFile(I)V
    .registers 8

    .line 1952
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    .line 1953
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2c

    if-nez v1, :cond_d

    goto :goto_2c

    .line 1961
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkMinDuration()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1962
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1963
    invoke-virtual {p0, v4, v3, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 1968
    :cond_1a
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/16 v0, 0x3a

    .line 1969
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 1971
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V

    return-void

    .line 1955
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storingVideoFile mVideoFileInfo or mStorageOperator is null,we have not information to save"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    .line 1957
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

    .line 405
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unInit()V

    .line 406
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mNeedCacheWhenQuitVIP:Z

    if-eqz v0, :cond_c

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/AppUICache;->cache(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 409
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->unInit()V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateVideoSurface to null in unInit."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 411
    invoke-virtual/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    .line 412
    const-string p0, "key_video_quality"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 413
    const-string p0, "key_anti_video"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 414
    const-string p0, "key_super_anti_video"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 415
    const-string p0, "key_video_portrait"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 416
    const-string p0, "key_video_spot"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 417
    const-string p0, "key_video_facebeauty"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 418
    const-string p0, "key_storage"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 419
    const-string p0, "key_video_super_night"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 420
    const-string p0, "key_video_enhance"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 421
    const-string p0, "key_video_super_night_yuv"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 422
    const-string p0, "key_video_enhance_yuv"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 423
    const-string p0, "key_video_asd"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 424
    const-string p0, "key_algorithm_migrate"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 425
    const-string p0, "key_video_makeup"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 426
    const-string p0, "key_ae_af_lock_state"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 427
    const-string p0, "key_video_filter"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 428
    const-string p0, "key_video_effect"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 429
    const-string p0, "key_video_frame"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 430
    const-string p0, "key_video_preisp"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 431
    const-string p0, "key_fold_switch_preview"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 432
    const-string p0, "key_check_storage"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 433
    iget-boolean p0, v2, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSupportAudioZoom:Z

    if-eqz p0, :cond_94

    .line 434
    const-string p0, "key_camera_zoom"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 436
    :cond_94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHdr10PlusSupport()Z

    move-result p0

    if-eqz p0, :cond_a3

    .line 437
    const-string p0, "key_video_hdr_10_plus"

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_a3
    const/4 p0, 0x6

    .line 439
    iget v0, v2, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    if-eq p0, v0, :cond_b1

    .line 440
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    iget-object v0, v2, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 442
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

    .line 503
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCreateQuality()Ljava/lang/String;

    move-result-object v0

    .line 504
    const-string v1, "_"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 505
    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->qualityValid(I)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 508
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 510
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 511
    const-string v1, "0"

    .line 514
    :cond_22
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->isSupportCustomVideoQuality(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getCamcorderProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 516
    invoke-static {v0}, Lcom/transsion/camera/utils/VideoQualityUtils;->setProfileConfigure(Landroid/media/CamcorderProfile;)V

    goto :goto_3c

    .line 519
    :cond_34
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 522
    :goto_3c
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOverrideSize()Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 524
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 525
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 527
    :cond_4e
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSize(Landroid/media/CamcorderProfile;)Landroid/util/Size;

    move-result-object v0

    .line 528
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

    .line 1312
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updatePreviewSize(Landroid/util/Size;)V

    .line 1313
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mTextureRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    if-eqz p0, :cond_28

    if-eqz p1, :cond_28

    .line 1315
    const-string v0, "0"

    .line 1316
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    .line 1315
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1317
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1318
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1319
    new-instance v1, Lcom/transsion/camera/app/common/mode/RecorderParam;

    invoke-direct {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/RecorderParam;-><init>(Landroid/util/Size;Landroid/media/CamcorderProfile;)V

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->configRecorder(Lcom/transsion/camera/app/common/mode/RecorderParam;)V

    :cond_28
    return-void
.end method

.method protected updateQuality(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1361
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

    .line 1362
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1363
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    if-nez v0, :cond_2c

    return-object p1

    .line 1364
    :cond_2c
    const-string p0, "-1"

    return-object p0
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 6

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStorageOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1560
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_22

    .line 1562
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->storageUnMount()V

    :cond_22
    return-void
.end method

.method protected updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 5

    .line 1524
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "updateThumbnail+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1525
    instance-of v0, p2, Ljava/io/FileDescriptor;

    if-eqz v0, :cond_17

    .line 1526
    check-cast p2, Ljava/io/FileDescriptor;

    .line 1528
    :try_start_e
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/io/FileDescriptor;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_2d

    :catch_12
    move-exception p1

    .line 1530
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 1532
    :cond_17
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1533
    check-cast p2, Ljava/lang/String;

    .line 1535
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_2d

    :catch_21
    move-exception p1

    .line 1537
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 1540
    :cond_26
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[updateThumbnail] file is invalid"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1542
    :goto_2d
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateThumbnail-"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected updateVideoSurface(Landroid/view/Surface;IIIZ)V
    .registers 8

    move-object v0, p0

    .line 1754
    iget-object p0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p0, :cond_d

    .line 1756
    iget-object p0, v0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateVideoSurface] mCameraDeviceControl is null when video mode update surface"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_d
    move v1, p3

    move p3, p2

    move p2, p4

    move p4, v1

    .line 1759
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMediaRecordDisplay(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method public updateYuvPicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 4

    .line 2293
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getDataFlowType()I

    move-result v0

    .line 2294
    invoke-static {v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->yuvCapture(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 2295
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need yuv image surface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 2298
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPreviewSize:Landroid/util/Size;

    if-nez v0, :cond_18

    return-object v1

    .line 2301
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

    .line 1442
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "videoSnapShot"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mMediaRecorder:Lcom/transsion/camera/app/common/recorder/RecorderManager;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mSnapShotCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/recorder/RecorderManager;->videoSnapShot(Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;)Z

    return-void
.end method
