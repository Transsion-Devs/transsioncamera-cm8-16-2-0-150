.class public Lcom/ss/android/ttvecamera/TECameraSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECameraSettings$CaptureFlashStrategy;,
        Lcom/ss/android/ttvecamera/TECameraSettings$WhiteBalanceValue;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;,
        Lcom/ss/android/ttvecamera/TECameraSettings$Features;,
        Lcom/ss/android/ttvecamera/TECameraSettings$Operation;,
        Lcom/ss/android/ttvecamera/TECameraSettings$Parameters;,
        Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$FlashMode;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ApertureCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$CameraCapabilitiesForBytebenchCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$FOVCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;,
        Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;,
        Lcom/ss/android/ttvecamera/TECameraSettings$CameraFrameRateStrategy;,
        Lcom/ss/android/ttvecamera/TECameraSettings$FPS;,
        Lcom/ss/android/ttvecamera/TECameraSettings$CameraType;,
        Lcom/ss/android/ttvecamera/TECameraSettings$CameraFacing;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING_3RD:I = 0x4

.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_FRONT:I = 0x1

.field public static final CAMERA_FACING_REAR_MAIN_FRONT_MAIN:I = 0x7

.field public static final CAMERA_FACING_REAR_MAIN_REAR_TELE:I = 0x6

.field public static final CAMERA_FACING_REAR_MAIN_REAR_WIDE:I = 0x5

.field public static final CAMERA_FACING_SAT:I = 0x8

.field public static final CAMERA_FACING_TELEPHOTO:I = 0x3

.field public static final CAMERA_FACING_WIDE_ANGLE:I = 0x2

.field public static final CAMERA_MODE_AR:I = 0x2

.field public static final CAMERA_MODE_BOKEH:I = 0x7

.field public static final CAMERA_MODE_HDR:I = 0x3

.field public static final CAMERA_MODE_IMAGE:I = 0x1

.field public static final CAMERA_MODE_PORTRAIT:I = 0x8

.field public static final CAMERA_MODE_PRO_VIDEO:I = 0x6

.field public static final CAMERA_MODE_SLOW_MOTION:I = 0x5

.field public static final CAMERA_MODE_SUPERNIGHT:I = 0x4

.field public static final CAMERA_MODE_SUPER_SLOW_MOTION:I = 0x9

.field public static final CAMERA_MODE_VIDEO:I = 0x0

.field public static final CAMERA_MODE_VIDEO_SUPERNIGHT:I = 0xa

.field public static final CAMERA_TYPE_1:I = 0x1

.field public static final CAMERA_TYPE_2:I = 0x2

.field public static final CAMERA_TYPE_BEWO:I = 0x6

.field public static final CAMERA_TYPE_CamKit:I = 0x5

.field public static final CAMERA_TYPE_GNOB:I = 0x9

.field public static final CAMERA_TYPE_GNOB_MEDIA:I = 0x4

.field public static final CAMERA_TYPE_GNOB_UNIT:I = 0x7

.field public static final CAMERA_TYPE_OGXM:I = 0x3

.field public static final CAMERA_TYPE_OGXM_V2:I = 0x8

.field public static final CAMERA_TYPE_VENDOR_GNOB:I = 0xb

.field public static final CAMERA_TYPE_VENDOR_RDHW:I = 0xa

.field public static final CameraHWLevelAndroid2VE:[I

.field public static final CameraHWLevelVE2Android:[I

.field public static final DYNAMIC_FRAMERATE:I = 0x0

.field public static final DYNAMIC_FRAMERATE_WITHOUT_SELECT:I = 0x3

.field public static final FIXED_FRAMERATE_FOR_ALL:I = 0x1

.field public static final FIXED_FRAMERATE_FOR_REAR:I = 0x2

.field public static final FLASH_AUTO:I = 0x3

.field public static final FLASH_OFF:I = 0x0

.field public static final FLASH_ON:I = 0x1

.field public static final FLASH_RED_EYE:I = 0x4

.field public static final FLASH_TORCH:I = 0x2

.field public static final FLASH_UNKNOW:I = -0x1

.field public static final FPS_120:I = 0x78

.field public static final FPS_480:I = 0x1e0

.field public static final FPS_60:I = 0x3c

.field public static final FPS_90:I = 0x5a

.field public static final FRAMERATE_FOR_USER:I = 0x4

.field public static final FlashOnRealStrategy:I = 0x2

.field public static final FlashOnSimulatedStrategy:I = 0x3

.field public static final HW_CHECK_LEVEL_3:I = 0x3

.field public static final HW_CHECK_LEVEL_FULL:I = 0x2

.field public static final HW_CHECK_LEVEL_LEGACY:I = 0x0

.field public static final HW_CHECK_LEVEL_LIMITED:I = 0x1

.field public static final OPTION_FLAG_CaptureSizeNotEqualPreviewSize:B = 0x8t

.field public static final OPTION_FLAG_DEFAULT:B = 0x1t

.field public static final OPTION_FLAG_FPS_RANGE:B = 0x2t

.field public static final OPTION_FLAG_PICTURE_SIZE:B = 0x1t

.field public static final OUTPUT_NV21IMAGE:I = 0x2

.field public static final OUTPUT_SURFACETEXTURE:I = 0x1

.field public static final PreAndMainStrategy:I = 0x0

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_HDR:Ljava/lang/String; = "hdr"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field public static final TorchFakeStrategy:I = 0x1

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"

.field public static final sCameraSceneMode:[Ljava/lang/String;


# instance fields
.field public final CAMERA2_PREVIEWING_FAILED_COUNT:I

.field public arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

.field public mAWBValue:Ljava/lang/String;
    .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$WhiteBalanceValue;
    .end annotation
.end field

.field public mBindSurfaceLifecycleToCamera:Z

.field public mCamera2RetryCnt:I

.field public mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

.field public mCameraFrameRateStrategy:I
    .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraFrameRateStrategy;
    .end annotation
.end field

.field public mCameraHardwareSupportLevel:I

.field public mCameraPreviewIndependent:Z

.field public mCameraType:I
    .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraType;
    .end annotation
.end field

.field public mCameraZoomLimitFactor:F

.field public mCaptureFlashStrategy:I
    .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CaptureFlashStrategy;
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mDefaultCameraID:I

.field public mDefaultZoomRatio:F

.field public mEnableAiNightVideo:Z

.field public mEnableBackGroundStrategy:Z

.field public mEnableCamera2DeferredSurface:Z

.field public mEnableCamera2Detect:Z

.field public mEnableCamera2Zsl:Z

.field public mEnableCameraFpsDoubleCheckInImageMode:Z

.field public mEnableCollectCapbilities:Z

.field public mEnableFallBack:Z

.field public mEnableGcForCameraMetadataThreshold:I

.field public mEnableManualReleaseCaptureResult:Z

.field public mEnableMonitorGyroscope:Z

.field public mEnableOpenCamera1Crs:Z

.field public mEnableOpenCamera1Opt:Z

.field public mEnablePreviewingFallback:Z

.field public mEnableRecord60Fps:Z

.field public mEnableRecordStream:Z

.field public mEnableRefactorFocusAndMeter:Z

.field public mEnableStabilization:Z

.field public mEnableVBoost:Z

.field public mEnableWideFOV:Z

.field public mEnableYuvBufferCapture:Z

.field public mEnableZsl:Z

.field public mExtParameters:Landroid/os/Bundle;

.field public mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

.field public mFacing:I
    .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraFacing;
    .end annotation
.end field

.field public mFlashMode:I

.field public mFocusTimeoutMS:I

.field public mForceApplyPictureSize:Z

.field public mForceSwitchEnable:Z

.field public mFpsMaxLimit:I

.field public mHighFPS:I
    .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$FPS;
    .end annotation
.end field

.field public mIgnoreCameraResetTaskOnDisconnected:Z

.field public mImageFormat:I

.field public mIsCameraOpenCloseSync:Z

.field public mIsForceCloseCamera:Z

.field public mIsGetMetadata:Z

.field public mIsUseHint:Z

.field public mMaxWidth:I

.field public mMaxWidthTakePictureSizeAccuracy:F

.field public mMaxZoomRatio:F

.field public mMinZoomRatio:F

.field public mMode:I

.field public mOptCameraSceneFps:Z

.field public mOptionFlags:B

.field public mOutputType:I

.field public mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

.field public mPreferOpenCameraByCameraId:Z

.field public mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

.field public mRecordStreamFolderPath:Ljava/lang/String;

.field public mRequiredCameraLevel:I

.field public mRetryCnt:I

.field public mRetryStartPreviewCnt:I

.field public mRotation:I

.field public mSceneMode:Ljava/lang/String;

.field public mStartRecord:Z

.field public mStrCameraID:Ljava/lang/String;

.field public mStrCustomizedCameraID:Ljava/lang/String;

.field public mUseMaxWidthTakePicture:Z

.field public mUseSyncModeOnCamera2:Z

.field public mVBoostTimeoutMS:I

.field public mVendorCameraID:Ljava/lang/String;

.field public mVideoSize:Lcom/ss/android/ttvecamera/TEFrameSizei;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 59
    const-string v8, "landscape"

    const-string v9, "snow"

    const-string v0, "auto"

    const-string v1, "portrait"

    const-string v2, "party"

    const-string v3, "sunset"

    const-string v4, "candlelight"

    const-string v5, "night"

    const-string v6, "hdr"

    const-string v7, "action"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings;->sCameraSceneMode:[Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 361
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    sput-object v4, Lcom/ss/android/ttvecamera/TECameraSettings;->CameraHWLevelVE2Android:[I

    .line 362
    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraSettings;->CameraHWLevelAndroid2VE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 99
    new-instance v1, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v2, 0x7

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 103
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    const/4 v2, -0x1

    .line 104
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    const/16 v2, 0x11

    .line 105
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mImageFormat:I

    .line 107
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    .line 108
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableZsl:Z

    .line 109
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableManualReleaseCaptureResult:Z

    .line 110
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 111
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableWideFOV:Z

    .line 112
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRefactorFocusAndMeter:Z

    .line 113
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    .line 114
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStartRecord:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 115
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    .line 117
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 118
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0x780

    const/16 v6, 0x438

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 119
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVideoSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 121
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOutputType:I

    .line 123
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    .line 124
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    .line 125
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryStartPreviewCnt:I

    .line 126
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCamera2RetryCnt:I

    const/4 v4, 0x0

    .line 127
    iput v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 128
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    .line 129
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 131
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    .line 150
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraHardwareSupportLevel:I

    .line 151
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    .line 153
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    .line 160
    iput-byte v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptionFlags:B

    .line 162
    const-string v4, "auto"

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mSceneMode:Ljava/lang/String;

    .line 167
    const-string v5, "0"

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    .line 171
    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVendorCameraID:Ljava/lang/String;

    .line 178
    const-string v5, "-1"

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    .line 179
    new-instance v5, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-direct {v5}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;-><init>()V

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    .line 181
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableFallBack:Z

    .line 186
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    .line 202
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    .line 215
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    .line 218
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsUseHint:Z

    .line 220
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsCameraOpenCloseSync:Z

    .line 222
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsForceCloseCamera:Z

    .line 224
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableVBoost:Z

    const/16 v5, 0x32

    .line 226
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVBoostTimeoutMS:I

    .line 228
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    .line 230
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableAiNightVideo:Z

    const/16 v5, 0x9c4

    .line 232
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFocusTimeoutMS:I

    .line 234
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    .line 236
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFpsMaxLimit:I

    .line 238
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    .line 240
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecordStream:Z

    .line 242
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecord60Fps:Z

    .line 244
    const-string v3, ""

    iput-object v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    .line 246
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFlashMode:I

    .line 248
    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mAWBValue:Ljava/lang/String;

    .line 251
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCaptureFlashStrategy:I

    .line 254
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    .line 255
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    .line 256
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Opt:Z

    .line 257
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Crs:Z

    const/4 v3, 0x5

    .line 258
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->CAMERA2_PREVIEWING_FAILED_COUNT:I

    .line 262
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    .line 263
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsGetMetadata:Z

    .line 264
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    .line 269
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    .line 271
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    .line 272
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraPreviewIndependent:Z

    .line 273
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Detect:Z

    .line 274
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxZoomRatio:F

    .line 275
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMinZoomRatio:F

    .line 276
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCollectCapbilities:Z

    .line 278
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCameraFpsDoubleCheckInImageMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 280
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    .line 284
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 10

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 99
    new-instance v1, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v2, 0x7

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 103
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    const/4 v2, -0x1

    .line 104
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    const/16 v2, 0x11

    .line 105
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mImageFormat:I

    .line 107
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    .line 108
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableZsl:Z

    .line 109
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableManualReleaseCaptureResult:Z

    .line 110
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 111
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableWideFOV:Z

    .line 112
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRefactorFocusAndMeter:Z

    .line 113
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    .line 114
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStartRecord:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 115
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    .line 117
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 118
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0x780

    const/16 v6, 0x438

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 119
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVideoSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 121
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOutputType:I

    .line 123
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    .line 124
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    .line 125
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryStartPreviewCnt:I

    .line 126
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCamera2RetryCnt:I

    const/4 v4, 0x0

    .line 127
    iput v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 128
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    .line 129
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 131
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    .line 150
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraHardwareSupportLevel:I

    .line 151
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    .line 153
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    .line 160
    iput-byte v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptionFlags:B

    .line 162
    const-string v4, "auto"

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mSceneMode:Ljava/lang/String;

    .line 167
    const-string v5, "0"

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    .line 171
    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVendorCameraID:Ljava/lang/String;

    .line 178
    const-string v5, "-1"

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    .line 179
    new-instance v5, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-direct {v5}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;-><init>()V

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    .line 181
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableFallBack:Z

    .line 186
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    .line 202
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    .line 215
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    .line 218
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsUseHint:Z

    .line 220
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsCameraOpenCloseSync:Z

    .line 222
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsForceCloseCamera:Z

    .line 224
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableVBoost:Z

    const/16 v5, 0x32

    .line 226
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVBoostTimeoutMS:I

    .line 228
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    .line 230
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableAiNightVideo:Z

    const/16 v5, 0x9c4

    .line 232
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFocusTimeoutMS:I

    .line 234
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    .line 236
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFpsMaxLimit:I

    .line 238
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    .line 240
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecordStream:Z

    .line 242
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecord60Fps:Z

    .line 244
    const-string v3, ""

    iput-object v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    .line 246
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFlashMode:I

    .line 248
    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mAWBValue:Ljava/lang/String;

    .line 251
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCaptureFlashStrategy:I

    .line 254
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    .line 255
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    .line 256
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Opt:Z

    .line 257
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Crs:Z

    const/4 v3, 0x5

    .line 258
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->CAMERA2_PREVIEWING_FAILED_COUNT:I

    .line 262
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    .line 263
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsGetMetadata:Z

    .line 264
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    .line 269
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    .line 271
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    .line 272
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraPreviewIndependent:Z

    .line 273
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Detect:Z

    .line 274
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxZoomRatio:F

    .line 275
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMinZoomRatio:F

    .line 276
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCollectCapbilities:Z

    .line 278
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCameraFpsDoubleCheckInImageMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 280
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    .line 288
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    .line 289
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 12

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 99
    new-instance v1, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v2, 0x7

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 103
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    const/4 v2, -0x1

    .line 104
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    const/16 v2, 0x11

    .line 105
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mImageFormat:I

    .line 107
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    .line 108
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableZsl:Z

    .line 109
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableManualReleaseCaptureResult:Z

    .line 110
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 111
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableWideFOV:Z

    .line 112
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRefactorFocusAndMeter:Z

    .line 113
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    .line 114
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStartRecord:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 115
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    .line 117
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 118
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0x780

    const/16 v6, 0x438

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 119
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVideoSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 121
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOutputType:I

    .line 123
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    .line 124
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    .line 125
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryStartPreviewCnt:I

    .line 126
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCamera2RetryCnt:I

    const/4 v4, 0x0

    .line 127
    iput v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 128
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    .line 129
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 131
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    .line 150
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraHardwareSupportLevel:I

    .line 151
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    .line 153
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    .line 160
    iput-byte v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptionFlags:B

    .line 162
    const-string v4, "auto"

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mSceneMode:Ljava/lang/String;

    .line 167
    const-string v5, "0"

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    .line 171
    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVendorCameraID:Ljava/lang/String;

    .line 178
    const-string v5, "-1"

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    .line 179
    new-instance v5, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-direct {v5}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;-><init>()V

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    .line 181
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableFallBack:Z

    .line 186
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    .line 202
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    .line 215
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    .line 218
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsUseHint:Z

    .line 220
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsCameraOpenCloseSync:Z

    .line 222
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsForceCloseCamera:Z

    .line 224
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableVBoost:Z

    const/16 v5, 0x32

    .line 226
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVBoostTimeoutMS:I

    .line 228
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    .line 230
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableAiNightVideo:Z

    const/16 v5, 0x9c4

    .line 232
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFocusTimeoutMS:I

    .line 234
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    .line 236
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFpsMaxLimit:I

    .line 238
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    .line 240
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecordStream:Z

    .line 242
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecord60Fps:Z

    .line 244
    const-string v3, ""

    iput-object v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    .line 246
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFlashMode:I

    .line 248
    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mAWBValue:Ljava/lang/String;

    .line 251
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCaptureFlashStrategy:I

    .line 254
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    .line 255
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    .line 256
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Opt:Z

    .line 257
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Crs:Z

    const/4 v3, 0x5

    .line 258
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->CAMERA2_PREVIEWING_FAILED_COUNT:I

    .line 262
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    .line 263
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsGetMetadata:Z

    .line 264
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    .line 269
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    .line 271
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    .line 272
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraPreviewIndependent:Z

    .line 273
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Detect:Z

    .line 274
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxZoomRatio:F

    .line 275
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMinZoomRatio:F

    .line 276
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCollectCapbilities:Z

    .line 278
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCameraFpsDoubleCheckInImageMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 280
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    .line 293
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    .line 294
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 295
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput p3, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 296
    iput p4, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 310
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ttvecamera/TECameraSettings;-><init>(Landroid/content/Context;IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIIZ)V
    .registers 15

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 99
    new-instance v1, Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v2, 0x7

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Lcom/ss/android/ttvecamera/TEFrameRateRange;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    .line 103
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRotation:I

    const/4 v2, -0x1

    .line 104
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultCameraID:I

    const/16 v2, 0x11

    .line 105
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mImageFormat:I

    .line 107
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Zsl:Z

    .line 108
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableZsl:Z

    .line 109
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableManualReleaseCaptureResult:Z

    .line 110
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 111
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableWideFOV:Z

    .line 112
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRefactorFocusAndMeter:Z

    .line 113
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    .line 114
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStartRecord:Z

    const/high16 v2, -0x40800000    # -1.0f

    .line 115
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraZoomLimitFactor:F

    .line 117
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0x500

    const/16 v6, 0x2d0

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 118
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/16 v5, 0x780

    const/16 v6, 0x438

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 119
    new-instance v4, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-direct {v4, v5, v6}, Lcom/ss/android/ttvecamera/TEFrameSizei;-><init>(II)V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVideoSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 121
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOutputType:I

    .line 123
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    .line 124
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    .line 125
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryStartPreviewCnt:I

    .line 126
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCamera2RetryCnt:I

    const/4 v4, 0x0

    .line 127
    iput v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 128
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    .line 129
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceApplyPictureSize:Z

    .line 131
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    .line 150
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraHardwareSupportLevel:I

    .line 151
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    .line 153
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    .line 160
    iput-byte v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptionFlags:B

    .line 162
    const-string v4, "auto"

    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mSceneMode:Ljava/lang/String;

    .line 167
    const-string v5, "0"

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCameraID:Ljava/lang/String;

    .line 171
    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVendorCameraID:Ljava/lang/String;

    .line 178
    const-string v5, "-1"

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mStrCustomizedCameraID:Ljava/lang/String;

    .line 179
    new-instance v5, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    invoke-direct {v5}, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;-><init>()V

    iput-object v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraECInfo:Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    .line 181
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableFallBack:Z

    .line 186
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mForceSwitchEnable:Z

    .line 202
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    .line 215
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    .line 218
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsUseHint:Z

    .line 220
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsCameraOpenCloseSync:Z

    .line 222
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsForceCloseCamera:Z

    .line 224
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableVBoost:Z

    const/16 v5, 0x32

    .line 226
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mVBoostTimeoutMS:I

    .line 228
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    .line 230
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableAiNightVideo:Z

    const/16 v5, 0x9c4

    .line 232
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFocusTimeoutMS:I

    .line 234
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    .line 236
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFpsMaxLimit:I

    .line 238
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    .line 240
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecordStream:Z

    .line 242
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableRecord60Fps:Z

    .line 244
    const-string v3, ""

    iput-object v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    .line 246
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFlashMode:I

    .line 248
    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mAWBValue:Ljava/lang/String;

    .line 251
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCaptureFlashStrategy:I

    .line 254
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnablePreviewingFallback:Z

    .line 255
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    .line 256
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Opt:Z

    .line 257
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableOpenCamera1Crs:Z

    const/4 v3, 0x5

    .line 258
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->CAMERA2_PREVIEWING_FAILED_COUNT:I

    .line 262
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIgnoreCameraResetTaskOnDisconnected:Z

    .line 263
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsGetMetadata:Z

    .line 264
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2DeferredSurface:Z

    .line 269
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    .line 271
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableYuvBufferCapture:Z

    .line 272
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraPreviewIndependent:Z

    .line 273
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Detect:Z

    .line 274
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxZoomRatio:F

    .line 275
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMinZoomRatio:F

    .line 276
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCollectCapbilities:Z

    .line 278
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCameraFpsDoubleCheckInImageMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 280
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mDefaultZoomRatio:F

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    .line 323
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    .line 324
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 325
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iput p3, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 326
    iput p4, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 327
    iput p5, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 328
    iput p6, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 329
    iput-boolean p7, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableZsl:Z

    return-void
.end method


# virtual methods
.method public clean()V
    .registers 2

    const/4 v0, 0x0

    .line 768
    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    .line 769
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mExtParameters:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public getPictureSize()Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0
.end method

.method public getPreviewSize()Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFrameSizei;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFrameSizei;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    .line 334
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TEFrameRateRange;->isValid()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public setPictureSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPictureSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-void
.end method

.method public setPreviewSize(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    return-void
.end method
