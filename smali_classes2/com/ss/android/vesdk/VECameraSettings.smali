.class public Lcom/ss/android/vesdk/VECameraSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VECameraSettings$Features;,
        Lcom/ss/android/vesdk/VECameraSettings$Operation;,
        Lcom/ss/android/vesdk/VECameraSettings$Parameters;,
        Lcom/ss/android/vesdk/VECameraSettings$Builder;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;,
        Lcom/ss/android/vesdk/VECameraSettings$PictureCallback;,
        Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;,
        Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/VECameraSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FPS:I = 0x1e

.field public static final OPTION_FLAG_CaptureSizeNotEqualPreviewSize:B = 0x8t

.field public static final OPTION_FLAG_DEFAULT:B = 0x1t

.field public static final OPTION_FLAG_FPS_RANGE:B = 0x2t

.field public static final OPTION_FLAG_MTK_3DNR:B = 0x4t

.field public static final OPTION_FLAG_PICTURE_SIZE:B = 0x1t

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

.field public static final TAG:Ljava/lang/String; = "VECameraSettings"

.field public static final sCameraSceneMode:[Ljava/lang/String;


# instance fields
.field CameraHWLevelAndroid2TE:[I

.field CameraHWLevelTE2Android:[I

.field private mBindSurfaceLifecycleToCamera:Z

.field private mCamera2RetryCnt:I

.field private mCameraAntiShake:Z

.field private mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

.field private mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

.field private mCameraMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

.field private mCameraPreviewIndependent:Z

.field private mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field private mCameraZoomLimitFactor:F

.field private mCaptureFlashStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

.field private mCaptureSize:Lcom/ss/android/vesdk/VESize;

.field private mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field private mDefaultCameraTypeInNewCameraStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

.field public mDefaultZoomRatio:F

.field private mEnableBackGroundStrategy:Z

.field private mEnableFallback:Z

.field private mEnableForceRestartWhenCameraError:Z

.field private mEnableGcForCameraMetadataThreshold:I

.field private mEnableManualReleaseCaptureResult:Z

.field private mEnableOpenCamera1Crs:Z

.field private mEnableOpenCamera1Opt:Z

.field private mEnablePreviewTemplate:Z

.field private mEnablePreviewingFallback:Z

.field private mEnableRecord60Fps:Z

.field private mEnableRecordStream:Z

.field private mEnableRefactorFocusAndMeter:Z

.field private mEnableVBoost:Z

.field private mEnableWideFOV:Z

.field private mEnableYuvBufferCapture:Z

.field private mEnableZsl:Z

.field private mExtParameters:Landroid/os/Bundle;

.field private mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

.field private mFocusTimeoutMS:I

.field private mFps:I

.field private mFpsMaxLimit:I

.field private mFpsRange:[I

.field private mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

.field private mIsCameraOpenCloseSync:Z

.field private mIsForceCloseCamera:Z

.field private mIsUseHint:Z

.field private mIsUseNewCameraTypeStrategy:Z

.field private mMaxWidth:I

.field private mMaxWidthTakePictureSizeAccuracy:F

.field private mOptCameraSceneFps:Z

.field private mOptionFlags:B

.field private mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

.field private mPreferOpenCameraByCameraId:Z

.field private mPreviewSize:Lcom/ss/android/vesdk/VESize;

.field private mRecordStreamFolderPath:Ljava/lang/String;

.field private mRetryCnt:I

.field private mRetryStartPreviewCnt:I

.field private mSceneMode:Ljava/lang/String;

.field private mStrCameraHardwareID:Ljava/lang/String;

.field private mUseMaxWidthTakePicture:Z

.field private mUseSyncModeOnCamera2:Z

.field private mVBoostTimeoutMS:I

.field private mVESetCameraTwoOutputMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 339
    const-string v16, "sunset"

    const-string v17, "theatre"

    const-string v1, "auto"

    const-string v2, "action"

    const-string v3, "barcode"

    const-string v4, "beach"

    const-string v5, "candlelight"

    const-string v6, "fireworks"

    const-string v7, "hdr"

    const-string v8, "landscape"

    const-string v9, "night"

    const-string v10, "night-portrait"

    const-string v11, "party"

    const-string v12, "portrait"

    const-string v13, "snow"

    const-string v14, "sports"

    const-string v15, "steadyphoto"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings;->sCameraSceneMode:[Ljava/lang/String;

    .line 2532
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VECameraSettings$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VECameraSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 307
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->CameraHWLevelTE2Android:[I

    .line 312
    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->CameraHWLevelAndroid2TE:[I

    const/16 v0, 0x1e

    .line 370
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFps:I

    .line 377
    new-instance v3, Lcom/ss/android/vesdk/VESize;

    const/16 v4, 0x2d0

    const/16 v5, 0x500

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    const/4 v3, 0x7

    .line 384
    filled-new-array {v3, v0}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    .line 391
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->CAMERA_HW_LEVEL_LEGACY:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    .line 398
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 400
    sget-object v6, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->NULL:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    iput-object v6, p0, Lcom/ss/android/vesdk/VECameraSettings;->mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 407
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z

    .line 409
    sget-object v6, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    iput-object v6, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultCameraTypeInNewCameraStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 416
    sget-object v6, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    iput-object v6, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    .line 423
    const-string v7, "-1"

    iput-object v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mStrCameraHardwareID:Ljava/lang/String;

    .line 430
    const-string v7, "auto"

    iput-object v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mSceneMode:Ljava/lang/String;

    .line 437
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraAntiShake:Z

    .line 456
    sget-object v7, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->DYNAMIC_FRAMERATE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    iput-object v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    .line 475
    sget-object v7, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->DISABLE_FACEAE:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    iput-object v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    .line 482
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableWideFOV:Z

    .line 488
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseHint:Z

    .line 495
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsCameraOpenCloseSync:Z

    .line 502
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsForceCloseCamera:Z

    .line 509
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableVBoost:Z

    const/16 v7, 0x32

    .line 516
    iput v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mVBoostTimeoutMS:I

    const/16 v7, 0x9c4

    .line 523
    iput v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFocusTimeoutMS:I

    .line 525
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    .line 527
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsMaxLimit:I

    .line 529
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptCameraSceneFps:Z

    .line 534
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z

    .line 542
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseMaxWidthTakePicture:Z

    const/4 v7, 0x0

    .line 550
    iput v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 558
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidth:I

    .line 585
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewTemplate:Z

    .line 593
    iput-byte v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptionFlags:B

    .line 600
    new-instance v7, Lcom/ss/android/vesdk/VESize;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureSize:Lcom/ss/android/vesdk/VESize;

    .line 602
    sget-object v7, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    iput-object v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    .line 608
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableFallback:Z

    .line 613
    sget-object v7, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;->VIDEO_MODE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    iput-object v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    .line 620
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseSyncModeOnCamera2:Z

    const/high16 v7, -0x40800000    # -1.0f

    .line 627
    iput v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraZoomLimitFactor:F

    .line 635
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableZsl:Z

    .line 643
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableManualReleaseCaptureResult:Z

    .line 650
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I

    .line 657
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryStartPreviewCnt:I

    .line 664
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecordStream:Z

    .line 670
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecord60Fps:Z

    .line 676
    const-string v7, ""

    iput-object v7, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    .line 684
    iput v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCamera2RetryCnt:I

    .line 696
    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;->TorchFakeStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    iput-object v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureFlashStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    .line 703
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraPreviewIndependent:Z

    .line 709
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreferOpenCameraByCameraId:Z

    .line 718
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewingFallback:Z

    .line 725
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableBackGroundStrategy:Z

    .line 732
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableOpenCamera1Opt:Z

    .line 739
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableOpenCamera1Crs:Z

    .line 746
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRefactorFocusAndMeter:Z

    .line 752
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableForceRestartWhenCameraError:Z

    .line 757
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    .line 1146
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mVESetCameraTwoOutputMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1151
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultZoomRatio:F

    .line 767
    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 768
    iput-object v6, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    .line 769
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFps:I

    .line 770
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    iput v4, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 771
    iput v5, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 772
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 2472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 307
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->CameraHWLevelTE2Android:[I

    .line 312
    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->CameraHWLevelAndroid2TE:[I

    const/16 v0, 0x1e

    .line 370
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFps:I

    .line 377
    new-instance v3, Lcom/ss/android/vesdk/VESize;

    const/16 v4, 0x2d0

    const/16 v5, 0x500

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    const/4 v3, 0x7

    .line 384
    filled-new-array {v3, v0}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    .line 391
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->CAMERA_HW_LEVEL_LEGACY:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    .line 398
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 400
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->NULL:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 407
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z

    .line 409
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultCameraTypeInNewCameraStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 416
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    .line 423
    const-string v3, "-1"

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mStrCameraHardwareID:Ljava/lang/String;

    .line 430
    const-string v3, "auto"

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mSceneMode:Ljava/lang/String;

    .line 437
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraAntiShake:Z

    .line 456
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->DYNAMIC_FRAMERATE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    .line 475
    sget-object v3, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->DISABLE_FACEAE:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    iput-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    .line 482
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableWideFOV:Z

    .line 488
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseHint:Z

    .line 495
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsCameraOpenCloseSync:Z

    .line 502
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsForceCloseCamera:Z

    .line 509
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableVBoost:Z

    const/16 v3, 0x32

    .line 516
    iput v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mVBoostTimeoutMS:I

    const/16 v3, 0x9c4

    .line 523
    iput v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFocusTimeoutMS:I

    .line 525
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    .line 527
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsMaxLimit:I

    .line 529
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptCameraSceneFps:Z

    .line 534
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z

    .line 542
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseMaxWidthTakePicture:Z

    const/4 v0, 0x0

    .line 550
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 558
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidth:I

    .line 585
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewTemplate:Z

    .line 593
    iput-byte v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptionFlags:B

    .line 600
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureSize:Lcom/ss/android/vesdk/VESize;

    .line 602
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    .line 608
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableFallback:Z

    .line 613
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;->VIDEO_MODE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    .line 620
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseSyncModeOnCamera2:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 627
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraZoomLimitFactor:F

    .line 635
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableZsl:Z

    .line 643
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableManualReleaseCaptureResult:Z

    .line 650
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I

    .line 657
    iput v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryStartPreviewCnt:I

    .line 664
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecordStream:Z

    .line 670
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecord60Fps:Z

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    .line 684
    iput v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCamera2RetryCnt:I

    .line 696
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;->TorchFakeStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureFlashStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    .line 703
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraPreviewIndependent:Z

    .line 709
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreferOpenCameraByCameraId:Z

    .line 718
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewingFallback:Z

    .line 725
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableBackGroundStrategy:Z

    .line 732
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableOpenCamera1Opt:Z

    .line 739
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableOpenCamera1Crs:Z

    .line 746
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRefactorFocusAndMeter:Z

    .line 752
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableForceRestartWhenCameraError:Z

    .line 757
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    .line 1146
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mVESetCameraTwoOutputMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1151
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultZoomRatio:F

    .line 2473
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->CameraHWLevelTE2Android:[I

    .line 2474
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->CameraHWLevelAndroid2TE:[I

    .line 2475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFps:I

    .line 2476
    const-class v0, Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VESize;

    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    .line 2477
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    .line 2478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_eb

    move-object v4, v5

    goto :goto_f1

    .line 2479
    :cond_eb
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;->values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    move-result-object v6

    aget-object v4, v6, v4

    :goto_f1
    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    .line 2480
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_fb

    move-object v4, v5

    goto :goto_101

    .line 2481
    :cond_fb
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v6

    aget-object v4, v6, v4

    :goto_101
    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 2482
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_10b

    move-object v4, v5

    goto :goto_111

    .line 2483
    :cond_10b
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v6

    aget-object v4, v6, v4

    :goto_111
    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 2484
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_11b

    move v4, v2

    goto :goto_11c

    :cond_11b
    move v4, v1

    :goto_11c
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z

    .line 2485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_126

    move-object v4, v5

    goto :goto_12c

    .line 2486
    :cond_126
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object v6

    aget-object v4, v6, v4

    :goto_12c
    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    .line 2487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mStrCameraHardwareID:Ljava/lang/String;

    .line 2488
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mSceneMode:Ljava/lang/String;

    .line 2489
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_142

    move v4, v2

    goto :goto_143

    :cond_142
    move v4, v1

    :goto_143
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraAntiShake:Z

    .line 2490
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_14d

    move-object v4, v5

    goto :goto_153

    .line 2491
    :cond_14d
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    move-result-object v6

    aget-object v4, v6, v4

    :goto_153
    iput-object v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    .line 2492
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_15d

    move v4, v2

    goto :goto_15e

    :cond_15d
    move v4, v1

    :goto_15e
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableWideFOV:Z

    .line 2493
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_168

    move v4, v2

    goto :goto_169

    :cond_168
    move v4, v1

    :goto_169
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseHint:Z

    .line 2494
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_173

    move v4, v2

    goto :goto_174

    :cond_173
    move v4, v1

    :goto_174
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsCameraOpenCloseSync:Z

    .line 2495
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_17e

    move v4, v2

    goto :goto_17f

    :cond_17e
    move v4, v1

    :goto_17f
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsForceCloseCamera:Z

    .line 2496
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_189

    move v4, v2

    goto :goto_18a

    :cond_189
    move v4, v1

    :goto_18a
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableVBoost:Z

    .line 2497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mVBoostTimeoutMS:I

    .line 2498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFocusTimeoutMS:I

    .line 2499
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_1a0

    move v4, v2

    goto :goto_1a1

    :cond_1a0
    move v4, v1

    :goto_1a1
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseMaxWidthTakePicture:Z

    .line 2500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidth:I

    .line 2501
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    iput-byte v4, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptionFlags:B

    .line 2502
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/VESize;

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureSize:Lcom/ss/android/vesdk/VESize;

    .line 2503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_1c3

    move-object v0, v5

    goto :goto_1c9

    .line 2504
    :cond_1c3
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object v4

    aget-object v0, v4, v0

    :goto_1c9
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    .line 2505
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1d3

    move v0, v2

    goto :goto_1d4

    :cond_1d3
    move v0, v1

    :goto_1d4
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableFallback:Z

    .line 2506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_1de

    move-object v0, v5

    goto :goto_1e4

    .line 2507
    :cond_1de
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;->values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    move-result-object v4

    aget-object v0, v4, v0

    :goto_1e4
    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    .line 2508
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1ee

    move v0, v2

    goto :goto_1ef

    :cond_1ee
    move v0, v1

    :goto_1ef
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseSyncModeOnCamera2:Z

    .line 2509
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraZoomLimitFactor:F

    .line 2510
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1ff

    move v0, v2

    goto :goto_200

    :cond_1ff
    move v0, v1

    :goto_200
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableZsl:Z

    .line 2511
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_20a

    move v0, v2

    goto :goto_20b

    :cond_20a
    move v0, v1

    :goto_20b
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableManualReleaseCaptureResult:Z

    .line 2512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I

    .line 2513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryStartPreviewCnt:I

    .line 2514
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_221

    move v0, v2

    goto :goto_222

    :cond_221
    move v0, v1

    :goto_222
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecordStream:Z

    .line 2515
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_22c

    move v0, v2

    goto :goto_22d

    :cond_22c
    move v0, v1

    :goto_22d
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecord60Fps:Z

    .line 2516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    .line 2517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCamera2RetryCnt:I

    .line 2518
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;

    .line 2519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_248

    goto :goto_24e

    .line 2520
    :cond_248
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;->values()[Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    move-result-object v3

    aget-object v5, v3, v0

    :goto_24e
    iput-object v5, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureFlashStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    .line 2521
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_258

    move v0, v2

    goto :goto_259

    :cond_258
    move v0, v1

    :goto_259
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraPreviewIndependent:Z

    .line 2522
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_263

    move v0, v2

    goto :goto_264

    :cond_263
    move v0, v1

    :goto_264
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewingFallback:Z

    .line 2523
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_26e

    move v0, v2

    goto :goto_26f

    :cond_26e
    move v0, v1

    :goto_26f
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRefactorFocusAndMeter:Z

    .line 2524
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_279

    move v0, v2

    goto :goto_27a

    :cond_279
    move v0, v1

    :goto_27a
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreferOpenCameraByCameraId:Z

    .line 2525
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_284

    move v0, v2

    goto :goto_285

    :cond_284
    move v0, v1

    :goto_285
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableForceRestartWhenCameraError:Z

    .line 2526
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_28f

    move v0, v2

    goto :goto_290

    :cond_28f
    move v0, v1

    :goto_290
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    .line 2527
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_299

    move v1, v2

    :cond_299
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z

    .line 2528
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    .line 2529
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultZoomRatio:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/VECameraSettings$1;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraSettings;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/VECameraSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mStrCameraHardwareID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableZsl:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseSyncModeOnCamera2:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRefactorFocusAndMeter:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableForceRestartWhenCameraError:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/ss/android/vesdk/VECameraSettings;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsMaxLimit:I

    return p1
.end method

.method static synthetic access$1802(Lcom/ss/android/vesdk/VECameraSettings;F)F
    .registers 2

    .line 24
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraZoomLimitFactor:F

    return p1
.end method

.method static synthetic access$1902(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/ss/android/vesdk/VECameraSettings;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFps:I

    return p1
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/ss/android/vesdk/VECameraSettings;[I)[I
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    return-object p1
.end method

.method static synthetic access$2302(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/ss/android/vesdk/VECameraSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mSceneMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/ss/android/vesdk/VECameraSettings;B)B
    .registers 2

    .line 24
    iput-byte p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptionFlags:B

    return p1
.end method

.method static synthetic access$2602(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecordStream:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecord60Fps:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/ss/android/vesdk/VECameraSettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/ss/android/vesdk/VECameraSettings;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryStartPreviewCnt:I

    return p1
.end method

.method static synthetic access$3002(Lcom/ss/android/vesdk/VECameraSettings;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCamera2RetryCnt:I

    return p1
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureSize:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/ss/android/vesdk/VECameraSettings;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidth:I

    return p1
.end method

.method static synthetic access$3302(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureFlashStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraPreviewIndependent:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreferOpenCameraByCameraId:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewingFallback:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultCameraTypeInNewCameraStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p1
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z

    return p1
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraAntiShake:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ss/android/vesdk/VECameraSettings;)Landroid/os/Bundle;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$602(Lcom/ss/android/vesdk/VECameraSettings;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$702(Lcom/ss/android/vesdk/VECameraSettings;Z)Z
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseMaxWidthTakePicture:Z

    return p1
.end method

.method static synthetic access$802(Lcom/ss/android/vesdk/VECameraSettings;F)F
    .registers 2

    .line 24
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    return p1
.end method

.method static synthetic access$902(Lcom/ss/android/vesdk/VECameraSettings;I)I
    .registers 2

    .line 24
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I

    return p1
.end method

.method private static cameraTypeConverter(I)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_18

    packed-switch p0, :pswitch_data_1e

    .line 893
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 890
    :pswitch_c
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_OGXM_V2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 887
    :pswitch_f
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 884
    :pswitch_12
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_VENDOR_RDHW:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 881
    :pswitch_15
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_GNOB:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 878
    :cond_18
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_BEWO:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 875
    :cond_1b
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_GNOB_MEDIA:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x6
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public static getCameraOutputAndUpdateStrategy()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;
    .registers 5

    .line 1181
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_DEFAULT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    .line 1182
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_camera_output_and_update_strategy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 1184
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_ONETHREAD_ONEOUT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    goto :goto_24

    :cond_13
    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    .line 1186
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_ONETHREAD_TWOOUT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    goto :goto_24

    :cond_19
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1f

    .line 1188
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_TWOTHREAD_ONEOUT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    goto :goto_24

    :cond_1f
    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    .line 1190
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_TWOTHREAD_TWOOUT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    .line 1192
    :cond_24
    :goto_24
    sget-object v2, Lcom/ss/android/vesdk/VECameraSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ve_camera_output_and_update_strategy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enum:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCameraTypeFromConfigCenter()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    .registers 5

    .line 811
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultCameraTypeInNewCameraStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 812
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_camera_type"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 814
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_59

    .line 815
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_54

    .line 817
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_is_in_camera2_blocklist"

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 818
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5a

    .line 819
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_51

    .line 820
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    goto :goto_5a

    .line 821
    :cond_51
    sget-object p0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE2:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    goto :goto_5a

    .line 824
    :cond_54
    invoke-static {v0}, Lcom/ss/android/vesdk/VECameraSettings;->cameraTypeConverter(I)Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object p0

    goto :goto_5a

    :cond_59
    const/4 v0, -0x1

    .line 827
    :cond_5a
    :goto_5a
    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraTypeFromConfigCenter, cameraType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", realCameraType = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public enableManualReleaseCaptureResult(Z)V
    .registers 2

    .line 2313
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableManualReleaseCaptureResult:Z

    return-void
.end method

.method public getCamera2OutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;
    .registers 1

    .line 1276
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    return-object p0
.end method

.method public getCamera2RetryCnt()I
    .registers 1

    .line 1030
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCamera2RetryCnt:I

    return p0
.end method

.method public getCameraAntiShake()Z
    .registers 1

    .line 1066
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraAntiShake:Z

    return p0
.end method

.method public getCameraFaceDetect()Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;
    .registers 5

    .line 1239
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_face_detection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1241
    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->ENABLE_FACEAE_FOR_FRONT:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    iput-object v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    goto :goto_22

    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 1243
    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->ENABLE_FACEAE_FOR_REAR:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    iput-object v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    goto :goto_22

    :cond_1b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 1245
    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;->ENABLE_FACEAE_FOR_ALL:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    iput-object v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    .line 1247
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "useCameraFaceDetect"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1248
    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "faceae strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enum:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFaceAEStrategy:Lcom/ss/android/vesdk/VECameraSettings$FACEAE_STRATEGY;

    return-object p0
.end method

.method public getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .registers 1

    .line 783
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-object p0
.end method

.method public getCameraFrameRateStrategy()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;
    .registers 5

    .line 1284
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->DYNAMIC_FRAMERATE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    if-ne v0, v1, :cond_2b

    .line 1285
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "frame_rate_strategy"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 1287
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->FIXED_FRAMERATE_FOR_ALL:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    goto :goto_2b

    :cond_19
    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    .line 1289
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->FIXED_FRAMERATE_FOR_REAR:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    goto :goto_2b

    :cond_21
    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    .line 1291
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->DYNAMIC_FRAMERATE_WITHOUT_SELECT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    goto :goto_2b

    .line 1293
    :cond_29
    iput-object v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    .line 1297
    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    return-object p0
.end method

.method public getCameraHardwareID()Ljava/lang/String;
    .registers 1

    .line 793
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mStrCameraHardwareID:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraHdrDisableFromCenter()Z
    .registers 2

    .line 838
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_disable_camera_hdr"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 839
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_25

    .line 840
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public getCameraNoiseReduceFromCenter()Z
    .registers 2

    .line 851
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_enable_camera_noise_reduce"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 852
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_25

    .line 853
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;
    .registers 3

    .line 803
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0

    .line 804
    :cond_7
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->NULL:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-ne v0, v1, :cond_13

    .line 805
    invoke-direct {p0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraTypeFromConfigCenter()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    .line 807
    :cond_13
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-object p0
.end method

.method public getCameraVideoModeTemplate()Z
    .registers 4

    .line 1258
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_camera_preview_template"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewTemplate:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewTemplate:Z

    .line 1259
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;

    const-string v2, "enablePreviewTemplate"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1261
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewTemplate:Z

    return p0
.end method

.method public getCameraZoomLimitFactor()F
    .registers 1

    .line 1214
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraZoomLimitFactor:F

    return p0
.end method

.method public getCaptureFlashStrategy()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;
    .registers 1

    .line 1368
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureFlashStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    return-object p0
.end method

.method public getCaptureSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 1010
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getDefaultZoomRatio()F
    .registers 1

    .line 1441
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultZoomRatio:F

    return p0
.end method

.method public getEnableFallback()Z
    .registers 1

    .line 1092
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableFallback:Z

    return p0
.end method

.method public getEnableGcForCameraMetadataThreshold()I
    .registers 4

    .line 1361
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_gc_for_camera_metadata"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableGcForCameraMetadataThreshold:I

    return v0
.end method

.method public getEnableManualReleaseCaptureResult()Z
    .registers 1

    .line 1108
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableManualReleaseCaptureResult:Z

    return p0
.end method

.method public getEnableRecord60Fps()Z
    .registers 1

    .line 1226
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecord60Fps:Z

    return p0
.end method

.method public getEnableRecordStream()Z
    .registers 1

    .line 1222
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecordStream:Z

    return p0
.end method

.method public getEnableVBoost()Z
    .registers 4

    .line 1333
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_vboost"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableVBoost:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableVBoost:Z

    return v0
.end method

.method public getEnableZsl()Z
    .registers 1

    .line 1100
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableZsl:Z

    return p0
.end method

.method public getExtParameters()Landroid/os/Bundle;
    .registers 1

    .line 1218
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;

    return-object p0
.end method

.method public getFocusTimeout()I
    .registers 4

    .line 1353
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_camera_focus_timeout"

    const/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFocusTimeoutMS:I

    return v0
.end method

.method public getFps()I
    .registers 1

    .line 972
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFps:I

    return p0
.end method

.method public getFpsMaxLimit()I
    .registers 3

    .line 946
    iget v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsMaxLimit:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_26

    .line 947
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_camera_fps_max"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 948
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_26

    .line 949
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsMaxLimit:I

    .line 952
    :cond_26
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsMaxLimit:I

    return p0
.end method

.method public getFpsRange()[I
    .registers 5

    .line 927
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;->DYNAMIC_FRAMERATE_WITHOUT_SELECT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1e

    .line 928
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    aget v0, v0, v2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1e

    .line 929
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v3, "ve_camera_fps_range"

    invoke-virtual {v0, v3, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 931
    iget-object v1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    aput v0, v1, v2

    .line 935
    :cond_1e
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera FpsRange:["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    return-object p0
.end method

.method public getHwLevel()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;
    .registers 1

    .line 982
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    return-object p0
.end method

.method public getIsCameraOpenCloseSync()Z
    .registers 4

    .line 1315
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_camera_open_close_sync"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsCameraOpenCloseSync:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsCameraOpenCloseSync:Z

    return v0
.end method

.method public getIsForceCloseCamera()Z
    .registers 4

    .line 1324
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_force_close_camera_when_timeout"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsForceCloseCamera:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsForceCloseCamera:Z

    return v0
.end method

.method public getIsUseHint()Z
    .registers 4

    .line 1306
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "is_use_setrecordinghint"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseHint:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseHint:Z

    return v0
.end method

.method public getIsUseNewCameraTypeStrategy()Z
    .registers 1

    .line 907
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z

    return p0
.end method

.method public getMaxWidth()I
    .registers 1

    .line 1050
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidth:I

    return p0
.end method

.method public getMaxWidthTakePictureSizeAccuracy()F
    .registers 1

    .line 1082
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    return p0
.end method

.method public getMetadataConfig()Z
    .registers 2

    .line 864
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_enable_camera_metadata"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 865
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_25

    .line 866
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public getOptionFlag()B
    .registers 1

    .line 1002
    iget-byte p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptionFlags:B

    return p0
.end method

.method public getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;
    .registers 1

    .line 1058
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    return-object p0
.end method

.method public getPreviewSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 917
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getRecordStreamFolderPath()Ljava/lang/String;
    .registers 1

    .line 1230
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRetryCnt()I
    .registers 4

    .line 1018
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_retry_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    .line 1020
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I

    .line 1022
    :cond_f
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I

    return p0
.end method

.method public getSceneMode()Ljava/lang/String;
    .registers 1

    .line 992
    iget-object p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mSceneMode:Ljava/lang/String;

    return-object p0
.end method

.method public getVBoostTimeout()I
    .registers 4

    .line 1343
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_vboost_timeout"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mVBoostTimeoutMS:I

    return v0
.end method

.method public getWideFOV()Z
    .registers 4

    .line 1270
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_wide_fov_for_samsung"

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableWideFOV:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableWideFOV:Z

    .line 1271
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWideFOV: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableWideFOV:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableWideFOV:Z

    return p0
.end method

.method public getmRetryStartPreviewCnt()I
    .registers 4

    .line 1038
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_retry_start_preview_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    .line 1040
    iput v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryStartPreviewCnt:I

    .line 1042
    :cond_f
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryStartPreviewCnt:I

    return p0
.end method

.method public isBindSurfaceLifecycleToCamera()Z
    .registers 1

    .line 1141
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    return p0
.end method

.method public isCameraPreviewIndependent()Z
    .registers 1

    .line 1376
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraPreviewIndependent:Z

    return p0
.end method

.method public isEnableBackGroundStrategy()Z
    .registers 1

    .line 1396
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableBackGroundStrategy:Z

    return p0
.end method

.method public isEnableCameraFpsDoubleCheckInImageMode()Z
    .registers 3

    .line 1432
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_enable_camera_fps_double_check_in_image_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnableForceRestartWhenCameraError()Z
    .registers 1

    .line 1133
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableForceRestartWhenCameraError:Z

    return p0
.end method

.method public isEnableOpenCamera1Crs()Z
    .registers 1

    .line 1424
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableOpenCamera1Crs:Z

    return p0
.end method

.method public isEnableOpenCamera1Opt()Z
    .registers 1

    .line 1414
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableOpenCamera1Opt:Z

    return p0
.end method

.method public isEnablePreviewingFallback()Z
    .registers 1

    .line 1386
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewingFallback:Z

    return p0
.end method

.method public isEnableRefactorFocusAndMeter()Z
    .registers 4

    .line 1124
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRefactorFocusAndMeter:Z

    if-nez v0, :cond_15

    .line 1125
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_refactor_camera_focus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const/4 v2, 0x1

    :cond_16
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRefactorFocusAndMeter:Z

    return v2
.end method

.method public isEnableYuvBufferCapture()Z
    .registers 3

    .line 1201
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z

    if-nez v0, :cond_2d

    .line 1202
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_yuv_buffer_capture"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1203
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2d

    .line 1204
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    .line 1206
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z

    .line 1210
    :cond_2d
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z

    return p0
.end method

.method public isOptCameraSceneFps()Z
    .registers 3

    .line 962
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptCameraSceneFps:Z

    if-nez p0, :cond_17

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_camera_scene_diff_fps_opt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    return v1

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public isPreferOpenCameraByCameraId()Z
    .registers 1

    .line 1404
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreferOpenCameraByCameraId:Z

    return p0
.end method

.method public isSyncModeOnCamera2()Z
    .registers 1

    .line 1116
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseSyncModeOnCamera2:Z

    return p0
.end method

.method public isUseMaxWidthTakePicture()Z
    .registers 1

    .line 1074
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseMaxWidthTakePicture:Z

    return p0
.end method

.method public isVESetCameraTwoOutputMode()Z
    .registers 4

    .line 1158
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraOutputAndUpdateStrategy()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    move-result-object v0

    .line 1160
    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_ONETHREAD_TWOOUT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    if-eq v0, v1, :cond_1d

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_TWOTHREAD_TWOOUT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    if-eq v0, v1, :cond_1d

    .line 1162
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_set_camera_two_output"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    const/4 v2, 0x1

    :cond_1e
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mVESetCameraTwoOutputMode:Z

    return v2
.end method

.method public setCameraAntiShake(Z)V
    .registers 2

    .line 2285
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraAntiShake:Z

    return-void
.end method

.method public setCameraFacing(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)V
    .registers 2

    .line 2259
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    return-void
.end method

.method public setCameraType(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)V
    .registers 2

    .line 2270
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-void
.end method

.method public setConfigCameraType(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)V
    .registers 2

    .line 2274
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    return-void
.end method

.method public setEnableFallback(Z)V
    .registers 2

    .line 2295
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableFallback:Z

    return-void
.end method

.method public setEnableRecord60Fps(Z)V
    .registers 2

    .line 2337
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecord60Fps:Z

    return-void
.end method

.method public setEnableRecordStream(Z)V
    .registers 2

    .line 2333
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecordStream:Z

    return-void
.end method

.method public setEnableZsl(Z)V
    .registers 2

    .line 2305
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableZsl:Z

    return-void
.end method

.method public setFps(I)V
    .registers 2

    .line 2361
    iput p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFps:I

    return-void
.end method

.method public setFpsRange([I)V
    .registers 2

    .line 2372
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    return-void
.end method

.method public setHwLevel(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;)V
    .registers 2

    .line 2383
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    return-void
.end method

.method public setOptionFlag(B)V
    .registers 2

    .line 2411
    iput-byte p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptionFlags:B

    return-void
.end method

.method public setOutPutMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)V
    .registers 2

    .line 2350
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    .line 2325
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    return-void
.end method

.method public setRecordStreamFolderPath(Ljava/lang/String;)V
    .registers 2

    .line 2341
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .registers 2

    .line 2394
    iput-object p1, p0, Lcom/ss/android/vesdk/VECameraSettings;->mSceneMode:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 2421
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->CameraHWLevelTE2Android:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2422
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->CameraHWLevelAndroid2TE:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2423
    iget v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2425
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFpsRange:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2426
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mHwLevel:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_HW_LEVEL;

    const/4 v1, -0x1

    if-nez v0, :cond_20

    move v0, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2427
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-nez v0, :cond_2d

    move v0, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2428
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mConfigCameraType:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-nez v0, :cond_3a

    move v0, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2429
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseNewCameraTypeStrategy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2430
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFacing:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    if-nez v0, :cond_4c

    move v0, v1

    goto :goto_50

    :cond_4c
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2431
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mStrCameraHardwareID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2432
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mSceneMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2433
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraAntiShake:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2434
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraFrameRateStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FRAMERATE_STRATEGY;

    if-nez v0, :cond_68

    move v0, v1

    goto :goto_6c

    :cond_68
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_6c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2435
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableWideFOV:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2436
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsUseHint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2437
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsCameraOpenCloseSync:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2438
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mIsForceCloseCamera:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2439
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableVBoost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2440
    iget v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mVBoostTimeoutMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2441
    iget v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mFocusTimeoutMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2442
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseMaxWidthTakePicture:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2443
    iget v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    iget-byte v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOptionFlags:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 2445
    iget-object v0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2446
    iget-object p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mOutputMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-nez p2, :cond_ac

    move p2, v1

    goto :goto_b0

    :cond_ac
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_b0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2447
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableFallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2448
    iget-object p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraMode:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_MODE_TYPE;

    if-nez p2, :cond_be

    move p2, v1

    goto :goto_c2

    :cond_be
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_c2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2449
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mUseSyncModeOnCamera2:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2450
    iget p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraZoomLimitFactor:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2451
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableZsl:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2452
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableManualReleaseCaptureResult:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2453
    iget p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    iget p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRetryStartPreviewCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2455
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecordStream:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2456
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRecord60Fps:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2457
    iget-object p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mRecordStreamFolderPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2458
    iget p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCamera2RetryCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2459
    iget-object p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mExtParameters:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2460
    iget-object p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCaptureFlashStrategy:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_CAPTURE_FLASH_STRATEGY;

    if-nez p2, :cond_101

    goto :goto_105

    :cond_101
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    :goto_105
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2461
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mCameraPreviewIndependent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2462
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnablePreviewingFallback:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2463
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableRefactorFocusAndMeter:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2464
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mPreferOpenCameraByCameraId:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2465
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableForceRestartWhenCameraError:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2466
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mBindSurfaceLifecycleToCamera:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2467
    iget-boolean p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mEnableYuvBufferCapture:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2468
    iget p2, p0, Lcom/ss/android/vesdk/VECameraSettings;->mMaxWidthTakePictureSizeAccuracy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2469
    iget p0, p0, Lcom/ss/android/vesdk/VECameraSettings;->mDefaultZoomRatio:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
