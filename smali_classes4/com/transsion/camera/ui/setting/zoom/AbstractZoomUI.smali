.class public abstract Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ZOOM_VALUE:I

.field private static final FINGER_SLIDE_STEP:I = 0xa

.field private static final FOCAL_LENGTH_23MM:Ljava/lang/String; = "23mm"

.field private static final FOCAL_LENGTH_24MM:Ljava/lang/String; = "24mm"

.field private static final FOCAL_LENGTH_28MM:Ljava/lang/String; = "28mm"

.field private static final FOCAL_LENGTH_35MM:Ljava/lang/String; = "35mm"

.field private static final FOCAL_LENGTH_50MM:Ljava/lang/String; = "50mm"

.field private static final FOCAL_LENGTH_70MM:Ljava/lang/String; = "70mm"

.field private static final INIT_CLICK_STEP:I = 0x14

.field private static final KEY:Ljava/lang/String; = "key_camera_zoom"

.field protected static final LIMIT_VALUE_IN_SLOW_MOTION_FOR_MAIN:I = 0x7530

.field private static final MAX_WIDE_CAMERA_RECORDING_VALUE:I

.field private static final MAX_WIDE_CAMERA_VALUE:I

.field protected static final MAX_ZOOM_1000:I = 0x186a0

.field protected static final MAX_ZOOM_10000:I = 0xf4240

.field protected static final MAX_ZOOM_1500:I = 0x249f0

.field protected static final MAX_ZOOM_2000:I = 0x30d40

.field protected static final MAX_ZOOM_300:I = 0x7530

.field protected static final MAX_ZOOM_3000:I = 0x493e0

.field protected static final MAX_ZOOM_400:I = 0x9c40

.field protected static final MAX_ZOOM_600:I = 0xea60

.field protected static final MAX_ZOOM_6000:I = 0x927c0

.field protected static final MAX_ZOOM_800:I = 0x13880

.field private static final NORMAL_SWITCH_TELE:I = 0x3

.field private static final NORMAL_SWITCH_WIDE:I = 0x2

.field private static final NO_SWITCH:I = 0x0

.field private static final SAT_SWITCH_WIDE:I = 0x5

.field private static final STREAM_ID_CHANGE_GAP:I

.field protected static final SWITCH_CAM_MIN_VALUE:I = 0xb4

.field protected static final TELE_RATIO_3X:F = 3.0f

.field protected static final TELE_RATIO_5X:F = 5.0f

.field protected static final TELE_SETTING_ITEM_ENTRY:Ljava/lang/String; = "com.transsion.camera.ui.setting.zoom.TeleZoomSettingUIEntry"

.field private static final TELE_SWITCH_NORMAL:I = 0x4

.field protected static final WIDE_MAX_VALUE:I = 0xc8

.field private static final WIDE_SWITCH_NORMAL:I = 0x1

.field private static final WIDE_SWITCH_SAT:I = 0x6

.field private static final ZOOM_STEP_SHOW_ON_UI:I = 0xa


# instance fields
.field private final ZOOM_IN:I

.field private final ZOOM_INIT_DIRECT:I

.field private final ZOOM_OUT:I

.field protected isCameraSwitching:Z

.field private isCameraSwitchingAndNotPause:Z

.field isIncreaseWideToMainCamera:Z

.field protected m2XBlurCameraId:Ljava/lang/String;

.field protected mActionZoomWheelBegin:Z

.field protected mAntiVideoRestrict4K30FPS:Z

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mBackHighCameraId:Ljava/lang/String;

.field protected mBlurCameraId:Ljava/lang/String;

.field protected mBottomPadding:I

.field private mCameraChangeDuringScale:Z

.field protected mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected final mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mClickZoomSupport:Z

.field protected mCurrentCameraId:Ljava/lang/String;

.field protected mCurrentModeName:Ljava/lang/String;

.field protected mCurrentValue:I

.field private mCurrentZoomRatio:Ljava/lang/String;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mFoldFrontCameraId:Ljava/lang/String;

.field protected mFrontHighCameraId:Ljava/lang/String;

.field protected mFrontWideCameraId:Ljava/lang/String;

.field protected mGraduationViewSilpping:Z

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mInEditWaterMarkFragment:Z

.field protected mInFragment:Z

.field private mInMicroPanTilt:Z

.field private mInOrderEditorFragment:Z

.field private mInProWaterMarkFragment:Z

.field private mInRemoteCaptureFragment:Z

.field private mInShutterSoundOptionalFragment:Z

.field protected mIsAfterRecordingSwitchCam:Z

.field protected mIsCapturing:Z

.field private mIsFilterSwitch:Z

.field protected mIsInAIGCMode:Z

.field protected mIsInAsdMode:Z

.field protected mIsInDocumentMode:Z

.field protected mIsInDualVideoMode:Z

.field protected mIsInFunVideoMode:Z

.field protected mIsInMacroMode:Z

.field protected mIsInMovieMode:Z

.field protected mIsInPmasterMode:Z

.field protected mIsInProfessionMode:Z

.field protected mIsInSlowMotionMode:Z

.field protected mIsInStreetPhotoMode:Z

.field protected mIsInSuperMoonMode:Z

.field protected mIsInSuperNightMode:Z

.field protected mIsInTimeLapseVideoMode:Z

.field protected mIsInVideoMode:Z

.field protected mIsInVlogMode:Z

.field protected mIsIntentPhotoMode:Z

.field protected mIsIntentVideoMode:Z

.field protected mIsLongTouchToNormal:Z

.field private mIsMacroSupportZoom:Z

.field protected mIsModeOrCameraSwitching:Z

.field protected mIsSizeChanging:Z

.field protected mIsSlowMotionCameraAssigned:Z

.field protected mIsVideoStartRecording:Z

.field protected mIsVlogHomepage:Z

.field protected mIsVlogSegmentEmpty:Z

.field protected mIsVlogSegmentFull:Z

.field private mIsWideCamUISupport:Z

.field protected mIsZoomClick:Z

.field protected mIsZoomClickShowSeekBar:Z

.field protected mIsZoomUIHidedWhileScaling:Z

.field protected mLastCurrentValue:I

.field protected mMacroCameraId:Ljava/lang/String;

.field protected mMaxValue:I

.field protected mMinValue:I

.field private mModeDisableTouchZoom:Z

.field protected mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field protected mModeSupportFrontWide:Z

.field protected mModeSupportSat:Z

.field protected mModeSupportTele:Z

.field protected mModeSupportWide:Z

.field protected mNeedRemoveAction:Z

.field protected mNextSwitchCamera:Ljava/lang/String;

.field private mNormalZoomMinValue:I

.field protected mNumOfWideCameraItem:I

.field protected mOffsetPadding:I

.field protected mOutofBound:Z

.field protected mPausedZoom:Z

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewStarted:Z

.field protected mPreviousCameraId:Ljava/lang/String;

.field protected mPreviousValue:I

.field protected mProgress:I

.field private mRatio:F

.field private mRecordStopZoom:Z

.field protected mResources:Landroid/content/res/Resources;

.field protected mSatCameraId:Ljava/lang/String;

.field private mSatReplaceWide:Z

.field protected mSatSupportWide:Z

.field private mScaleFactor:F

.field protected mScaleStart:Z

.field protected mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mShot2shotEnable:Z

.field protected mSlowMotionZoomLimited:Z

.field private mSlowScale:Z

.field protected mSmoothZoomNeed:Z

.field protected mSmoothZoomValue:I

.field private mStartScaleZoomValue:F

.field private mStartSpan:F

.field private mStartZoomValue:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStepCount:I

.field protected mSuperAntiVideoOn:Z

.field protected mSupportFocalLength:Z

.field private mSupportSuperAntiVideoV2:Z

.field protected mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSwitchType:I

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTeleCameraId:Ljava/lang/String;

.field protected mTeleZoomEnlarged:Z

.field private mThreshholdValue:I

.field protected mTopPadding:I

.field protected mTranslateDisInVlogMode:I

.field private final mValueLongFocusScrollToMain:I

.field private final mValueLongFocusToMain:I

.field private final mValueNormalToLongFocus:I

.field private mValueSatReplacedToMain:I

.field private mValueWideToMain:I

.field protected mVideoCameraId:Ljava/lang/String;

.field protected mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

.field protected mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

.field protected mWideCameraId:Ljava/lang/String;

.field protected mWideCameraZoomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomDirect:I

.field private mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

.field protected mZoomStyle:I

.field private mZoomUIState:Z

.field protected mbSegmentDragging:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mClickZoomSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInEditWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInMicroPanTilt:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInOrderEditorFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInProWaterMarkFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInProWaterMarkFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInRemoteCaptureFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInShutterSoundOptionalFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInShutterSoundOptionalFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMacroSupportZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStepCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportSuperAntiVideoV2(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportSuperAntiVideoV2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusScrollToMain:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomUIState(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStartZoomValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStepCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableZoomBySuperAntiVideo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->disableZoomBySuperAntiVideo()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDVHintShowing(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isDVHintShowing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNearByStreamIdChanged(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isNearByStreamIdChanged()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misZoomDisable(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isZoomDisable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misZoomLayoutUpdated(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isZoomLayoutUpdated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldResponseVolumeKey(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->shouldResponseVolumeKey()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraByType(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateNextCameraIdByType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateZoomUI(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x7d0

    goto :goto_d

    :cond_b
    const/16 v0, 0x14

    :goto_d
    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->STREAM_ID_CHANGE_GAP:I

    .line 122
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    .line 123
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_22

    const/16 v0, 0x3e80

    goto :goto_24

    :cond_22
    const/16 v0, 0xa0

    :goto_24
    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->MAX_WIDE_CAMERA_VALUE:I

    .line 124
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_32

    const v0, 0x9470

    goto :goto_34

    :cond_32
    const/16 v0, 0x17c

    :goto_34
    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->MAX_WIDE_CAMERA_RECORDING_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAIGCMode:Z

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInPmasterMode:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDocumentMode:Z

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperNightMode:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    .line 108
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDualVideoMode:Z

    .line 114
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mAntiVideoRestrict4K30FPS:Z

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInStreetPhotoMode:Z

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentPhotoMode:Z

    .line 121
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentVideoMode:Z

    .line 135
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    .line 136
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    .line 145
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    .line 146
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    .line 147
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInProWaterMarkFragment:Z

    .line 148
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    .line 149
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInShutterSoundOptionalFragment:Z

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 152
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentFull:Z

    .line 154
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentEmpty:Z

    .line 155
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mbSegmentDragging:Z

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    .line 157
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewStarted:Z

    .line 161
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    .line 165
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x67

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    .line 166
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMacroCameraId:Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    .line 169
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 170
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mVideoCameraId:Ljava/lang/String;

    .line 172
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 173
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    .line 174
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBlurCameraId:Ljava/lang/String;

    .line 175
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 176
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBackHighCameraId:Ljava/lang/String;

    .line 177
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontHighCameraId:Ljava/lang/String;

    .line 178
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFoldFrontCameraId:Ljava/lang/String;

    const/16 v3, 0x2710

    .line 182
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    const/4 v3, -0x1

    .line 184
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->ZOOM_IN:I

    .line 185
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->ZOOM_OUT:I

    .line 186
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->ZOOM_INIT_DIRECT:I

    .line 187
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    .line 188
    sget v4, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    .line 189
    new-instance v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;

    invoke-direct {v5, p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI-IA;)V

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 190
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    .line 191
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 197
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousValue:I

    .line 198
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 201
    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 202
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    .line 203
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    .line 206
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSlowMotionCameraAssigned:Z

    .line 208
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    .line 210
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    .line 214
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatReplaceWide:Z

    .line 217
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 218
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitchingAndNotPause:Z

    .line 220
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 221
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPausedZoom:Z

    .line 223
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowMotionZoomLimited:Z

    .line 224
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleZoomEnlarged:Z

    .line 225
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIState:Z

    .line 226
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 227
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 228
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleStart:Z

    .line 229
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    .line 230
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClick:Z

    .line 231
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomClickShowSeekBar:Z

    .line 232
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportSuperAntiVideoV2:Z

    .line 235
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSuperAntiVideoOn:Z

    .line 236
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportFocalLength:Z

    .line 237
    const-string v1, ""

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    .line 238
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mShot2shotEnable:Z

    .line 246
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIncreaseWideToMainCamera:Z

    .line 247
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    .line 248
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 888
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRatio:F

    .line 889
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowScale:Z

    .line 890
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    .line 1244
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    .line 250
    new-instance v1, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 251
    sget v1, Lcom/transsion/camera/R$bool;->is_macro_support_zoom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    .line 252
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    .line 253
    sget v1, Lcom/transsion/camera/R$integer;->zoom_style_type:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    .line 254
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportSuperAntiVideoV2:Z

    .line 255
    sget v1, Lcom/transsion/camera/R$bool;->sat_support_wide:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    .line 256
    sget v1, Lcom/transsion/camera/R$bool;->smooth_zoom_need:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    .line 257
    sget v1, Lcom/transsion/camera/R$bool;->sat_replace_wide:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatReplaceWide:Z

    .line 258
    sget v1, Lcom/transsion/camera/R$bool;->slow_motion_camera_assgined:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSlowMotionCameraAssigned:Z

    .line 259
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAntiVideoRestrict4K30FPS:Z

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mAntiVideoRestrict4K30FPS:Z

    if-eqz v1, :cond_15e

    .line 260
    sget v1, Lcom/transsion/camera/R$array;->wide_camera_item_text_center_zoom_india:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_164

    .line 261
    :cond_15e
    sget v1, Lcom/transsion/camera/R$array;->wide_camera_item_text_center_zoom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_164
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

    .line 262
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mAntiVideoRestrict4K30FPS:Z

    if-eqz v1, :cond_171

    sget v1, Lcom/transsion/camera/R$array;->wide_camera_zoom_list_india:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_177

    .line 263
    :cond_171
    sget v1, Lcom/transsion/camera/R$array;->wide_camera_zoom_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 264
    :goto_177
    sget v2, Lcom/transsion/camera/R$bool;->is_widecam_item_ui_support_in_widecam:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsWideCamUISupport:Z

    .line 265
    sget v2, Lcom/transsion/camera/R$bool;->slow_motion_zoom_limited:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowMotionZoomLimited:Z

    .line 266
    sget v2, Lcom/transsion/camera/R$bool;->is_tele_zoom_enlarged:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleZoomEnlarged:Z

    .line 267
    sget v2, Lcom/transsion/camera/R$bool;->pmaster_mode_focal_len:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportFocalLength:Z

    .line 268
    sget v2, Lcom/transsion/camera/R$dimen;->vlog_wide_camera_translation_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTranslateDisInVlogMode:I

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 270
    array-length p1, v1

    :goto_1a5
    if-ge v0, p1, :cond_1b1

    aget-object v2, v1, v0

    .line 271
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a5

    .line 274
    :cond_1b1
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateWideToNormalValue(Z)V

    .line 275
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 276
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueNormalToLongFocus:I

    add-int/lit8 p1, p1, -0xa

    .line 277
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusScrollToMain:I

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusToMain:I

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0xa

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueSatReplacedToMain:I

    return-void
.end method

.method private converProgressToValue(I)I
    .registers 4

    .line 1126
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    .line 1127
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result p0

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private currentFocalMode()Z
    .registers 2

    .line 2046
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInPmasterMode:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportFocalLength:Z

    if-nez v0, :cond_c

    :cond_8
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInStreetPhotoMode:Z

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private disableZoomBySuperAntiVideo()Z
    .registers 2

    .line 969
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSuperAntiVideoOn:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private getTargetZoomValue()F
    .registers 2

    .line 961
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowScale:Z

    if-eqz v0, :cond_a

    .line 962
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    :goto_8
    mul-float/2addr v0, p0

    return v0

    .line 964
    :cond_a
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    mul-float/2addr v0, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    goto :goto_8
.end method

.method private getTargetZoomValue(F)F
    .registers 3

    .line 973
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartSpan:F

    sub-float/2addr p1, v0

    .line 974
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRatio:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    .line 975
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    add-float/2addr p0, v0

    return p0
.end method

.method private handleRecordingEndAction()V
    .registers 3

    const/4 v0, 0x0

    .line 853
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setStartVideoRecording(Z)V

    .line 854
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->resetupConverterState(Z)V

    .line 855
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSeekBarWhenRecording(ZZ)V

    .line 856
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendRecordZoomUIState(Z)V

    .line 857
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateWideToNormalValue(Z)V

    .line 858
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setCurrentCameraId()V

    return-void
.end method

.method private isDVHintShowing()Z
    .registers 4

    .line 2289
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2290
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_f

    return v1

    .line 2291
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

.method private isLimitedZoom4XForSomeMode()Z
    .registers 2

    .line 2303
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsLimitedZoom4XForSomeMode:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    if-nez v0, :cond_16

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentPhotoMode:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private isNearByStreamIdChanged()Z
    .registers 4

    .line 1237
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    sget v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->STREAM_ID_CHANGE_GAP:I

    if-lt v0, v2, :cond_17

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    if-ge p0, v1, :cond_15

    sub-int/2addr v1, p0

    if-ne v1, v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private isZoomDisable()Z
    .registers 2

    .line 2286
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isFrontCameraSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private isZoomLayoutUpdated()Z
    .registers 3

    .line 345
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    if-ne p0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method

.method private notifyFlipUI(Z)V
    .registers 3

    .line 1004
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p0, :cond_5

    return-void

    .line 1007
    :cond_5
    const-string v0, "key_zoom_limit_monitor"

    if-eqz p1, :cond_13

    .line 1008
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_scale_begin"

    .line 1009
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1011
    :cond_13
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_scale_end"

    .line 1012
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private ratioToClosestValue(F)I
    .registers 6

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1061
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    if-gt p1, v0, :cond_32

    .line 1062
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToWideCamera()Z

    move-result v0

    if-eqz v0, :cond_21

    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 1063
    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0xa

    .line 1064
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    if-gt p1, p0, :cond_20

    return p0

    :cond_20
    return p1

    .line 1065
    :cond_21
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1066
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusScrollToMain:I

    .line 1067
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    if-gt p1, p0, :cond_2e

    return p0

    :cond_2e
    return p1

    .line 1069
    :cond_2f
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    return p0

    .line 1071
    :cond_32
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    if-lt p1, v0, :cond_37

    return v0

    .line 1074
    :cond_37
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1075
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_61

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_61

    return p1

    .line 1079
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_67

    return v0

    .line 1084
    :cond_7a
    sget p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    return p0
.end method

.method private resetStartScale(Landroid/view/ScaleGestureDetector;)V
    .registers 8

    .line 938
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 941
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraChangeDuringScale:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 942
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    .line 943
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartSpan:F

    .line 944
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    const v2, 0x461c4000    # 10000.0f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_21

    if-eq p1, v3, :cond_21

    const/4 v5, 0x3

    if-ne p1, v5, :cond_31

    :cond_21
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p1, :cond_31

    .line 946
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    goto :goto_38

    .line 948
    :cond_31
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    .line 950
    :goto_38
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsBase()Z

    move-result p1

    if-nez p1, :cond_50

    :cond_42
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-ne p1, v3, :cond_57

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 951
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 952
    :cond_50
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowScale:Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 953
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRatio:F

    return-void

    .line 955
    :cond_57
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowScale:Z

    .line 956
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRatio:F

    return-void
.end method

.method private shouldResponseVolumeKey()Z
    .registers 2

    .line 1242
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isFrontCameraSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchNormalToTele()Z
    .registers 3

    .line 1640
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueNormalToLongFocus:I

    if-lt v0, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchNormalToWide()Z
    .registers 4

    .line 1551
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "1"

    .line 1553
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1554
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    if-ne v0, v2, :cond_1e

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    if-ne v0, v2, :cond_1e

    return v1

    .line 1559
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "0"

    .line 1561
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1562
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    if-ne v0, p0, :cond_37

    return v1

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchSatToWide()Z
    .registers 3

    .line 1570
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 1572
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1573
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    if-ne v0, p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchTeleToNormal()Z
    .registers 3

    .line 1581
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusToMain:I

    if-gt v0, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private stateRejectSwitchCamera()Z
    .registers 2

    .line 1696
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_f

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    if-eqz v0, :cond_f

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private switchCamWhenRecordingEnd()V
    .registers 7

    .line 1090
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    if-eqz v0, :cond_6

    goto/16 :goto_f5

    .line 1093
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "   :   "

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_93

    .line 1094
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCamWhenRecordingEnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1095
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getEquivalentZoomValue(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1096
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v4

    if-lt v0, v4, :cond_5c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1097
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 1098
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->converProgressToValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 1099
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1100
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateNextCameraIdByType()V

    .line 1101
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraAfterRecording(I)Z

    goto :goto_70

    .line 1102
    :cond_5c
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v0, v2, :cond_70

    .line 1103
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1104
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateNextCameraIdByType()V

    .line 1105
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraAfterRecording(I)Z

    .line 1107
    :cond_70
    :goto_70
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsAfterRecordingSwitchCam:Z

    .line 1108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentZoomValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1109
    :cond_93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1110
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto :goto_f5

    .line 1113
    :cond_b4
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v4

    if-lt v0, v4, :cond_d3

    .line 1114
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->converProgressToValue(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1115
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 1116
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1117
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateNextCameraIdByType()V

    .line 1118
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraAfterRecording(I)Z

    .line 1120
    :cond_d3
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsAfterRecordingSwitchCam:Z

    .line 1121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getCurrentZoomValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mProgress:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_f5
    :goto_f5
    return-void
.end method

.method private switchCameraAfterRecording(I)Z
    .registers 4

    const/4 v0, 0x1

    .line 1646
    const-string v1, "key_zoom_limit_monitor"

    packed-switch p1, :pswitch_data_38

    const/4 p0, 0x0

    return p0

    .line 1662
    :pswitch_8
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_disable_tele"

    .line 1663
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1658
    :pswitch_14
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_enable_tele"

    .line 1659
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1654
    :pswitch_20
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_enable_wide"

    .line 1655
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1649
    :pswitch_2c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_disable_wide_from_recording"

    .line 1650
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_20
        :pswitch_14
        :pswitch_8
        :pswitch_20
        :pswitch_2c
    .end packed-switch
.end method

.method private switchCameraBy(I)Z
    .registers 4

    const/4 v0, 0x1

    .line 1671
    const-string v1, "key_zoom_limit_monitor"

    packed-switch p1, :pswitch_data_38

    const/4 p0, 0x0

    return p0

    .line 1687
    :pswitch_8
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_disable_tele"

    .line 1688
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1683
    :pswitch_14
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_enable_tele"

    .line 1684
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1679
    :pswitch_20
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_enable_wide"

    .line 1680
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1674
    :pswitch_2c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_disable_wide"

    .line 1675
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_20
        :pswitch_14
        :pswitch_8
        :pswitch_20
        :pswitch_2c
    .end packed-switch
.end method

.method private switchCameraByType(I)V
    .registers 2

    .line 1505
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraBy(I)Z

    return-void
.end method

.method private switchCameraTypeWhenZoomIn()I
    .registers 3

    .line 1535
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateRejectSwitchCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1538
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchNormalToWide()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x2

    return p0

    .line 1540
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchSatToWide()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x5

    return p0

    .line 1542
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchTeleToNormal()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x4

    return p0

    .line 1544
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchNormalToTele()Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x3

    return p0

    :cond_28
    return v1
.end method

.method private switchCameraTypeWhenZoomOut()I
    .registers 7

    .line 1590
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateRejectSwitchCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1593
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    .line 1595
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-eqz v0, :cond_74

    .line 1596
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "wide_camera"

    invoke-interface {v0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "on"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1597
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-ne v0, v3, :cond_3b

    .line 1598
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    if-ge v0, v3, :cond_3b

    return v1

    .line 1602
    :cond_3b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isProjectSupportSat()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    return v4

    .line 1605
    :cond_4e
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz p0, :cond_53

    return v1

    :cond_53
    return v2

    .line 1611
    :cond_54
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v3, "key_macro"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1612
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    if-nez v0, :cond_9b

    .line 1613
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-nez v0, :cond_73

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_73

    return v4

    :cond_73
    return v2

    .line 1620
    :cond_74
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1621
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-ne v0, v3, :cond_87

    .line 1622
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    if-ge v0, v3, :cond_87

    return v1

    .line 1626
    :cond_87
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isProjectSupportSat()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-nez v0, :cond_9a

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9a

    return v4

    :cond_9a
    return v2

    .line 1633
    :cond_9b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchNormalToTele()Z

    move-result p0

    if-eqz p0, :cond_a3

    const/4 p0, 0x3

    return p0

    :cond_a3
    return v1
.end method

.method private updateNextCameraIdByType()V
    .registers 4

    .line 979
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateNextCameraIdByType]mSwitchType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mNextSwitchCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 980
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    packed-switch v0, :pswitch_data_52

    return-void

    .line 993
    :pswitch_28
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 990
    :pswitch_31
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 987
    :pswitch_3a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getWideCamera(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 983
    :pswitch_44
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 996
    :pswitch_4d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_44
        :pswitch_3a
        :pswitch_31
        :pswitch_44
        :pswitch_3a
        :pswitch_28
    .end packed-switch
.end method

.method private updateWideToNormalValue(Z)V
    .registers 6

    if-eqz p1, :cond_19

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_27

    .line 284
    :cond_19
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    div-double/2addr v0, v2

    double-to-int p1, v0

    :goto_27
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueWideToMain:I

    return-void
.end method

.method private updateZoomUI()V
    .registers 2

    .line 1847
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1848
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1849
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1850
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    const/4 v0, 0x1

    .line 1851
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    const/4 v0, 0x0

    .line 1852
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    :cond_1f
    return-void
.end method


# virtual methods
.method protected calculateZoomPosByClick(ZIZ)I
    .registers 13

    .line 1761
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_11e

    .line 1762
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1763
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz p3, :cond_8f

    .line 1764
    iget-boolean p3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez p3, :cond_8f

    move p3, v2

    move v2, v1

    .line 1765
    :goto_22
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_41

    .line 1766
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    if-le v4, v5, :cond_3b

    goto :goto_41

    :cond_3b
    add-int/lit8 p3, v2, 0x1

    move v8, v2

    move v2, p3

    move p3, v8

    goto :goto_22

    :cond_41
    :goto_41
    add-int/lit8 v2, p3, 0x2

    add-int/lit8 v4, v0, -0x1

    if-le v2, v4, :cond_49

    move v5, v4

    goto :goto_4a

    :cond_49
    move v5, v2

    :goto_4a
    if-eqz p1, :cond_81

    .line 1775
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-boolean v7, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz v7, :cond_5f

    sget v7, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->MAX_WIDE_CAMERA_RECORDING_VALUE:I

    goto :goto_61

    :cond_5f
    sget v7, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->MAX_WIDE_CAMERA_VALUE:I

    :goto_61
    if-gt v6, v7, :cond_64

    goto :goto_81

    :cond_64
    if-eqz p1, :cond_7f

    .line 1779
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-eqz v4, :cond_79

    sget v4, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->MAX_WIDE_CAMERA_RECORDING_VALUE:I

    goto :goto_7b

    :cond_79
    sget v4, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->MAX_WIDE_CAMERA_VALUE:I

    :goto_7b
    if-le v2, v4, :cond_7f

    .line 1780
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIncreaseWideToMainCamera:Z

    :cond_7f
    move v2, p3

    goto :goto_8f

    :cond_81
    :goto_81
    if-eqz p1, :cond_84

    goto :goto_86

    :cond_84
    add-int/lit8 v2, p3, -0x2

    .line 1777
    :goto_86
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1784
    :cond_8f
    :goto_8f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz p0, :cond_9a

    const/16 p0, 0x1900

    goto :goto_9c

    :cond_9a
    const/16 p0, 0x40

    .line 1785
    :goto_9c
    div-int/lit8 p3, p0, 0x2

    if-lt v0, p0, :cond_cd

    if-ltz v2, :cond_a8

    .line 1788
    div-int/lit8 p0, v0, 0x40

    if-ge v2, p0, :cond_a8

    goto/16 :goto_10f

    .line 1790
    :cond_a8
    div-int/lit8 p0, v0, 0x40

    if-lt v2, p0, :cond_b4

    div-int/lit8 p0, v0, 0x8

    if-ge v2, p0, :cond_b4

    :goto_b0
    mul-int/lit8 p2, p2, 0x2

    goto/16 :goto_10f

    .line 1792
    :cond_b4
    div-int/lit8 p0, v0, 0x8

    if-lt v2, p0, :cond_bf

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_bf

    :goto_bc
    mul-int/lit8 p2, p2, 0x3

    goto :goto_10f

    .line 1794
    :cond_bf
    div-int/lit8 p0, v0, 0x4

    if-lt v2, p0, :cond_ca

    div-int/lit8 p0, v0, 0x2

    if-ge v2, p0, :cond_ca

    mul-int/lit8 p2, p2, 0x5

    goto :goto_10f

    :cond_ca
    mul-int/lit8 p2, p2, 0xa

    goto :goto_10f

    :cond_cd
    if-lt v0, p3, :cond_f6

    if-ltz v2, :cond_d6

    .line 1801
    div-int/lit8 p0, v0, 0x20

    if-ge v2, p0, :cond_d6

    goto :goto_10f

    .line 1803
    :cond_d6
    div-int/lit8 p0, v0, 0x20

    if-lt v2, p0, :cond_df

    div-int/lit8 p0, v0, 0x8

    if-ge v2, p0, :cond_df

    goto :goto_b0

    .line 1805
    :cond_df
    div-int/lit8 p0, v0, 0x8

    if-lt v2, p0, :cond_e8

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_e8

    goto :goto_bc

    .line 1807
    :cond_e8
    div-int/lit8 p0, v0, 0x4

    if-lt v2, p0, :cond_f3

    div-int/lit8 p0, v0, 0x2

    if-ge v2, p0, :cond_f3

    :cond_f0
    mul-int/lit8 p2, p2, 0x4

    goto :goto_10f

    :cond_f3
    mul-int/lit8 p2, p2, 0x8

    goto :goto_10f

    :cond_f6
    if-ltz v2, :cond_fd

    .line 1815
    div-int/lit8 p0, v0, 0xa

    if-ge v2, p0, :cond_fd

    goto :goto_10f

    .line 1817
    :cond_fd
    div-int/lit8 p0, v0, 0xa

    if-lt v2, p0, :cond_106

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_106

    goto :goto_b0

    .line 1819
    :cond_106
    div-int/lit8 p0, v0, 0x4

    if-lt v2, p0, :cond_f0

    div-int/lit8 p0, v0, 0x2

    if-ge v2, p0, :cond_f0

    goto :goto_bc

    :goto_10f
    if-eqz p1, :cond_113

    add-int/2addr v2, p2

    goto :goto_114

    :cond_113
    sub-int/2addr v2, p2

    :goto_114
    sub-int/2addr v0, v3

    .line 1827
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_11e
    return v1
.end method

.method protected calculateZoomPosByLongPress(ZI)I
    .registers 6

    .line 1836
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 1837
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1838
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eqz p1, :cond_1b

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p0, p2

    goto :goto_1e

    :cond_1b
    mul-int/lit8 p2, p2, 0xa

    sub-int/2addr p0, p2

    :goto_1e
    add-int/lit8 v0, v0, -0x1

    .line 1839
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_29
    return v1
.end method

.method protected correctZoomValue(I)I
    .registers 3

    .line 2119
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_10

    .line 2120
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsWideCamUISupport:Z

    if-nez p0, :cond_d

    goto :goto_14

    :cond_d
    add-int/lit16 p1, p1, -0x1388

    return p1

    .line 2122
    :cond_10
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsWideCamUISupport:Z

    if-nez p0, :cond_15

    :goto_14
    return p1

    :cond_15
    add-int/lit8 p1, p1, -0x32

    return p1
.end method

.method protected currentCameraFacingFront()Z
    .registers 1

    .line 1531
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected currentCameraIsBase()Z
    .registers 2

    .line 1508
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected currentCameraIsMacro()Z
    .registers 2

    .line 1526
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMacroCameraId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 1527
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method protected currentCameraIsSat()Z
    .registers 3

    .line 1516
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 1517
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method protected currentCameraIsTele()Z
    .registers 2

    .line 1512
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected currentCameraIsWide()Z
    .registers 2

    .line 1521
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 1522
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method protected currentIsSatCamera()Z
    .registers 2

    .line 1056
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method abstract doOrientationChanged(I)V
.end method

.method abstract getEquivalentZoomValue(I)I
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getGraduationStyle()Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;
    .registers 6

    .line 2260
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 2261
    :goto_d
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    if-eqz v3, :cond_16

    move v1, v2

    :cond_16
    if-eqz v0, :cond_1b

    const/16 v0, 0x1770

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x2710

    :goto_1d
    if-eqz v1, :cond_24

    .line 2266
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getUpperTeleZoom()I

    move-result v1

    goto :goto_28

    .line 2268
    :cond_24
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getUpperMainZoom()I

    move-result v1

    .line 2270
    :goto_28
    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->getGraduationStyle(II)Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    move-result-object v2

    .line 2271
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz v3, :cond_32

    .line 2272
    sget-object v2, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->SUPER_MOON:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    .line 2275
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGraduatedStyle style: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " zoomMin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " zoomMax:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 427
    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method protected getSwitchType(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 1497
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraTypeWhenZoomIn()I

    move-result p0

    return p0

    :cond_8
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 1499
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraTypeWhenZoomOut()I

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method protected getUpperMainZoom()I
    .registers 7

    .line 2240
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x9c40

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    move v0, v1

    .line 2241
    :goto_20
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const v5, 0x13880

    if-eqz v4, :cond_3c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_3c

    move v1, v2

    .line 2242
    :cond_3c
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-eqz v2, :cond_43

    const/16 p0, 0x7530

    return p0

    :cond_43
    if-eqz v0, :cond_46

    return v3

    :cond_46
    if-eqz v1, :cond_49

    return v5

    .line 2248
    :cond_49
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isLimitedZoom4XForSomeMode()Z

    move-result v0

    if-eqz v0, :cond_50

    return v3

    .line 2252
    :cond_50
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    const v1, 0x186a0

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-nez v0, :cond_67

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    if-nez v0, :cond_67

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentPhotoMode:Z

    if-eqz v0, :cond_72

    .line 2253
    :cond_67
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isLimitedVideoMode()Z

    move-result p0

    if-eqz p0, :cond_6e

    return v1

    :cond_6e
    const p0, 0x249f0

    return p0

    :cond_72
    return v1
.end method

.method protected getUpperTeleZoom()I
    .registers 6

    .line 2203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v0

    .line 2204
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isLimitedSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_10

    const p0, 0xea60

    return p0

    .line 2206
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isLimitedVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    const p0, 0x249f0

    return p0

    .line 2208
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isLimtedThirdAlgoMode()Z

    move-result v1

    const v2, 0x186a0

    if-eqz v1, :cond_24

    return v2

    .line 2210
    :cond_24
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isLimitedProModeForTele()Z

    move-result v1

    const v3, 0x927c0

    const v4, 0x493e0

    if-eqz v1, :cond_43

    .line 2211
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport30XForPro:Z

    if-eqz p0, :cond_39

    return v4

    .line 2213
    :cond_39
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport60XForPro:Z

    if-eqz p0, :cond_42

    return v3

    :cond_42
    return v4

    .line 2218
    :cond_43
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isLimitedAIGCMode()Z

    move-result v1

    if-eqz v1, :cond_4a

    return v2

    :cond_4a
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_52

    move v4, v3

    goto :goto_5c

    :cond_52
    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_59

    goto :goto_5c

    :cond_59
    const v4, 0x30d40

    .line 2228
    :goto_5c
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleZoomEnlarged:Z

    if-eqz p0, :cond_61

    goto :goto_62

    :cond_61
    move v3, v4

    .line 2231
    :goto_62
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport100X:Z

    if-eqz p0, :cond_6e

    const p0, 0xf4240

    return p0

    :cond_6e
    return v3
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 435
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getZoomRatio(I)Ljava/lang/String;
    .registers 5

    .line 2049
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getZoomRatio] zoomValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mNextSwitchCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSwitchType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mZoomUIState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2052
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 2053
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentFocalMode()Z

    move-result v0

    const-string v1, "getZoomRatio mCurrentZoomRatio = "

    if-eqz v0, :cond_cf

    .line 2054
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "10000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2055
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->is2XBlurCamera(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 2056
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_69

    goto :goto_6e

    .line 2059
    :cond_69
    const-string p1, "23mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_b6

    .line 2057
    :cond_6e
    :goto_6e
    const-string p1, "70mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_b6

    .line 2061
    :cond_73
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "15000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2062
    const-string p1, "35mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_b6

    .line 2063
    :cond_84
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "20000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2064
    const-string p1, "50mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_b6

    .line 2065
    :cond_95
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "10300"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 2066
    const-string p1, "24mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_b6

    .line 2067
    :cond_a6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "12000"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 2068
    const-string p1, "28mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    .line 2070
    :cond_b6
    :goto_b6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2071
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p0

    .line 2072
    :cond_cf
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez v0, :cond_d7

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInPmasterMode:Z

    if-eqz v0, :cond_e5

    :cond_d7
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 2073
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p1

    goto/16 :goto_16a

    .line 2074
    :cond_e5
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isNeedReCalculateForMacro()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 2076
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->correctZoomValue(I)I

    move-result p1

    goto/16 :goto_16a

    .line 2077
    :cond_f1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isNeedReCalculateForWide()Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIState:Z

    if-eqz v0, :cond_101

    :cond_fb
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToWideCamera()Z

    move-result v0

    if-eqz v0, :cond_137

    :cond_101
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingWideToMainCamera()Z

    move-result v0

    if-nez v0, :cond_137

    .line 2078
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    div-int/lit16 v2, p1, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16a

    .line 2080
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    .line 2081
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2082
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p0

    .line 2084
    :cond_137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_147

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingToLong()Z

    move-result v0

    if-eqz v0, :cond_15a

    :cond_147
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isSwitchingLongToMain()Z

    move-result v0

    if-nez v0, :cond_15a

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsSat()Z

    move-result v0

    if-nez v0, :cond_15a

    .line 2085
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p1

    goto :goto_16a

    .line 2086
    :cond_15a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 2087
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->get2XBlurCameraZoom(I)I

    move-result p1

    .line 2090
    :cond_16a
    :goto_16a
    rem-int/lit16 v0, p1, 0x2710

    const-string v1, "%dx"

    if-nez v0, :cond_19d

    .line 2091
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    .line 2092
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getZoomRatio, up, mCurrentZoomRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2093
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p0

    .line 2095
    :cond_19d
    rem-int/lit16 v0, p1, 0x3e8

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_1bc

    add-int/lit16 p1, p1, -0x1f4

    .line 2097
    rem-int/lit16 v0, p1, 0x2710

    if-nez v0, :cond_1bc

    .line 2098
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p1

    .line 2102
    :cond_1bc
    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit16 v2, v0, 0x3e8

    if-nez v2, :cond_1d5

    .line 2103
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p1

    .line 2106
    :cond_1d5
    rem-int/lit8 v0, v0, 0xa

    if-lez v0, :cond_1f2

    .line 2108
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 v2, p1, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%d.%dx"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_204

    .line 2110
    :cond_1f2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 v2, p1, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    .line 2112
    :goto_204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getZoomRatio, down, mCurrentZoomRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",zoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2113
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p0
.end method

.method abstract graduationViewIsShow()Z
.end method

.method abstract hideCenterZoomUI()V
.end method

.method public hideEntryView()V
    .registers 3

    const/4 v0, 0x0

    .line 490
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewStarted:Z

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_c

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 494
    :cond_c
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    return-void
.end method

.method abstract hideZoomUI()V
.end method

.method abstract hideZoomUI(II)V
.end method

.method abstract hideZoomWheel()V
.end method

.method protected isIszZoomStatus(Ljava/lang/String;)Z
    .registers 3

    .line 1586
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatReplaceWide:Z

    if-eqz p1, :cond_12

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method protected isLimitedAIGCMode()Z
    .registers 1

    .line 2180
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAIGCMode:Z

    return p0
.end method

.method protected isLimitedProModeForTele()Z
    .registers 2

    .line 2192
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport30XForPro:Z

    if-nez v0, :cond_10

    .line 2193
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport60XForPro:Z

    if-eqz v0, :cond_1a

    :cond_10
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    if-eqz v0, :cond_1a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method protected isLimitedSlowMotionMode()Z
    .registers 2

    .line 2176
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowMotionZoomLimited:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected isLimitedVideoMode()Z
    .registers 2

    .line 2184
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-nez v0, :cond_17

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method protected isLimtedThirdAlgoMode()Z
    .registers 2

    .line 2198
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDocumentMode:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperNightMode:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method protected isNeedReCalculateForMacro()Z
    .registers 4

    .line 2128
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 2130
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsMacro()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_1c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_macro"

    .line 2131
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_31

    return v1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method protected isNeedReCalculateForWide()Z
    .registers 4

    .line 2139
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    if-ne v0, v1, :cond_16

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 2140
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_22
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_2c

    :cond_26
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method protected isSwitchingBackToFront()Z
    .registers 3

    .line 1049
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1050
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1051
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1052
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentIsSatCamera()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingLongToMain()Z
    .registers 3

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1044
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 1045
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingMainToWIdeCamera()Z
    .registers 3

    .line 1030
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 1031
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1032
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    if-eqz v0, :cond_2a

    .line 1033
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentIsSatCamera()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingToLong()Z
    .registers 3

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 1038
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 1039
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingToWideCamera()Z
    .registers 3

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 1018
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 1019
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 1020
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingWideToMainCamera()Z
    .registers 3

    .line 1024
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 1025
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    if-eqz v0, :cond_2c

    .line 1026
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentIsSatCamera()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_2c

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitchingAndNotPause:Z

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method abstract loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyCameraOperateAction(I)V
    .registers 7

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_25

    .line 529
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    :cond_25
    const/4 v1, 0x1

    if-eqz p1, :cond_276

    const/16 v2, 0x36

    const/4 v3, 0x0

    if-eq p1, v1, :cond_248

    const/4 v4, 0x2

    if-eq p1, v4, :cond_22b

    if-eq p1, v0, :cond_259

    const/4 v0, 0x4

    if-eq p1, v0, :cond_225

    const/4 v0, 0x5

    if-eq p1, v0, :cond_21b

    const/4 v0, 0x6

    if-eq p1, v0, :cond_225

    const/4 v0, 0x7

    if-eq p1, v0, :cond_222

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_216

    const/16 v0, 0x20

    if-eq p1, v0, :cond_213

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1f3

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1e1

    const/16 v0, 0x35

    if-eq p1, v0, :cond_27d

    if-eq p1, v2, :cond_259

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_1de

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_1db

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1af

    const/16 v0, 0x53

    if-eq p1, v0, :cond_19a

    const/16 v0, 0x55

    if-eq p1, v0, :cond_197

    const/16 v0, 0x56

    if-eq p1, v0, :cond_194

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_184

    const/16 v4, 0x5b

    if-eq p1, v4, :cond_17a

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_280

    packed-switch p1, :pswitch_data_35e

    packed-switch p1, :pswitch_data_376

    goto/16 :goto_275

    .line 706
    :pswitch_80
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    .line 707
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mShot2shotEnable:Z

    return-void

    .line 703
    :pswitch_85
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    return-void

    .line 577
    :pswitch_88
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p1, :cond_94

    .line 579
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 582
    :cond_94
    :pswitch_94
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 583
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 584
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    .line 585
    invoke-virtual {p0, v3, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setLayoutPadding(ZZ)V

    return-void

    .line 623
    :pswitch_a0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mShot2shotEnable:Z

    if-nez p1, :cond_a6

    .line 624
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 626
    :cond_a6
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onUp(Landroid/view/MotionEvent;)Z

    return-void

    .line 589
    :pswitch_aa
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 590
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_275

    .line 591
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomWheel()V

    return-void

    .line 629
    :pswitch_b6
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 630
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideCenterZoomUI()V

    goto :goto_e4

    .line 845
    :sswitch_bc
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentEmpty:Z

    return-void

    .line 842
    :sswitch_bf
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentEmpty:Z

    return-void

    .line 838
    :sswitch_c2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 839
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onUp(Landroid/view/MotionEvent;)Z

    return-void

    .line 831
    :sswitch_c9
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentFull:Z

    return-void

    .line 828
    :sswitch_cc
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentFull:Z

    return-void

    .line 798
    :sswitch_cf
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentFull:Z

    .line 799
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentEmpty:Z

    goto :goto_110

    .line 616
    :sswitch_d4
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomWheel()V

    return-void

    .line 561
    :sswitch_d8
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInProWaterMarkFragment:Z

    return-void

    .line 558
    :sswitch_db
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInProWaterMarkFragment:Z

    return-void

    .line 825
    :sswitch_de
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInShutterSoundOptionalFragment:Z

    return-void

    .line 822
    :sswitch_e1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInShutterSoundOptionalFragment:Z

    return-void

    .line 632
    :goto_e4
    :sswitch_e4
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_275

    .line 633
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->showZoomWheel()V

    return-void

    .line 805
    :sswitch_ec
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    return-void

    .line 685
    :sswitch_ef
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 686
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomBarStyle()V

    .line 687
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz p1, :cond_275

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_275

    .line 688
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    return-void

    .line 835
    :sswitch_106
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideCenterZoomUI()V

    return-void

    .line 812
    :sswitch_10a
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    return-void

    .line 809
    :sswitch_10d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    return-void

    .line 801
    :goto_110
    :sswitch_110
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    return-void

    .line 554
    :sswitch_113
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    return-void

    .line 551
    :sswitch_116
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    return-void

    .line 795
    :sswitch_119
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInMicroPanTilt:Z

    return-void

    .line 792
    :sswitch_11c
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInMicroPanTilt:Z

    return-void

    .line 710
    :sswitch_11f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    .line 711
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 712
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    .line 713
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    .line 714
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 715
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    .line 716
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 717
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    .line 718
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    .line 719
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    .line 720
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInProWaterMarkFragment:Z

    .line 721
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    .line 722
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInShutterSoundOptionalFragment:Z

    .line 723
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mShot2shotEnable:Z

    .line 724
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInMicroPanTilt:Z

    .line 725
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 726
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->onSlipCancel()V

    .line 727
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 728
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitchingAndNotPause:Z

    .line 729
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNeedRemoveAction:Z

    .line 730
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPausedZoom:Z

    .line 731
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p1, :cond_156

    .line 732
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 734
    :cond_156
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setStartVideoRecording(Z)V

    .line 735
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSeekBarWhenRecording(ZZ)V

    .line 736
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 737
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateWideToNormalValue(Z)V

    return-void

    .line 815
    :sswitch_16b
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 816
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    if-eq p1, v1, :cond_275

    .line 817
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    return-void

    .line 787
    :sswitch_175
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewStarted:Z

    .line 788
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    return-void

    .line 643
    :cond_17a
    :pswitch_17a
    :sswitch_17a
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 644
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-eqz p1, :cond_275

    .line 645
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideCenterZoomUI()V

    return-void

    .line 605
    :cond_184
    :pswitch_184
    :sswitch_184
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 606
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 607
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mGraduationViewSilpping:Z

    if-ne p1, v0, :cond_190

    .line 609
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomWheel()V

    return-void

    .line 611
    :cond_190
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    return-void

    .line 547
    :cond_194
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    return-void

    .line 544
    :cond_197
    :sswitch_197
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    return-void

    .line 677
    :cond_19a
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 678
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 679
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->handleRecordingEndAction()V

    .line 680
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_275

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result p1

    if-eqz p1, :cond_275

    .line 681
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    return-void

    .line 649
    :cond_1af
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 650
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 651
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setStartVideoRecording(Z)V

    .line 652
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSeekBarWhenRecording(ZZ)V

    .line 653
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->resetupConverterState(Z)V

    .line 654
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendRecordZoomUIState(Z)V

    .line 655
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateWideToNormalValue(Z)V

    .line 656
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setCurrentCameraId()V

    .line 657
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 658
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_275

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result p1

    if-eqz p1, :cond_275

    .line 659
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    return-void

    .line 540
    :cond_1db
    :pswitch_1db
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    return-void

    .line 536
    :cond_1de
    :pswitch_1de
    :sswitch_1de
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    return-void

    .line 695
    :cond_1e1
    :pswitch_1e1
    :sswitch_1e1
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 696
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_1ec

    .line 697
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 699
    :cond_1ec
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->handleRecordingEndAction()V

    .line 700
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCamWhenRecordingEnd()V

    return-void

    .line 666
    :cond_1f3
    :pswitch_1f3
    :sswitch_1f3
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 667
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 668
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setStartVideoRecording(Z)V

    .line 669
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSeekBarWhenRecording(ZZ)V

    .line 670
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->resetupConverterState(Z)V

    .line 671
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendRecordZoomUIState(Z)V

    .line 672
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateWideToNormalValue(Z)V

    .line 673
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setCurrentCameraId()V

    .line 674
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideCenterZoomUI()V

    return-void

    .line 740
    :cond_213
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPausedZoom:Z

    return-void

    .line 619
    :cond_216
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 620
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mShot2shotEnable:Z

    return-void

    .line 570
    :cond_21b
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_222

    .line 571
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->showZoomWheel()V

    .line 574
    :cond_222
    :sswitch_222
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    return-void

    .line 565
    :cond_225
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    .line 567
    :sswitch_227
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    return-void

    .line 743
    :cond_22b
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 744
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 745
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    .line 746
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    .line 747
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mShot2shotEnable:Z

    .line 748
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomWheel()V

    .line 750
    :sswitch_238
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 751
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->onSlipCancel()V

    .line 752
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p1, :cond_275

    .line 753
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 765
    :cond_248
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDualVideoMode:Z

    if-nez v0, :cond_255

    .line 766
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->graduationViewIsShow()Z

    move-result v0

    if-eqz v0, :cond_255

    .line 767
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 770
    :cond_255
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 772
    :sswitch_257
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 775
    :cond_259
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    if-eqz v0, :cond_260

    if-ne p1, v2, :cond_260

    goto :goto_262

    .line 778
    :cond_260
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 780
    :goto_262
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateRangeState()V

    .line 781
    invoke-virtual {p0, v3, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setLayoutPadding(ZZ)V

    .line 782
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_275

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p0, :cond_275

    .line 783
    sget-object p0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_275
    :goto_275
    return-void

    .line 757
    :cond_276
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 758
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitchingAndNotPause:Z

    .line 760
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideCenterZoomUI()V

    .line 762
    :cond_27d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    return-void

    :sswitch_data_280
    .sparse-switch
        0x7 -> :sswitch_222
        0x8 -> :sswitch_175
        0x9 -> :sswitch_257
        0x1a -> :sswitch_16b
        0x1c -> :sswitch_11f
        0x5d -> :sswitch_1f3
        0x5e -> :sswitch_1e1
        0x61 -> :sswitch_11c
        0x62 -> :sswitch_119
        0x66 -> :sswitch_116
        0x67 -> :sswitch_113
        0x68 -> :sswitch_116
        0x69 -> :sswitch_197
        0x6a -> :sswitch_1de
        0x6b -> :sswitch_1de
        0x6c -> :sswitch_11c
        0x7b -> :sswitch_110
        0x89 -> :sswitch_10d
        0x8a -> :sswitch_10a
        0x8b -> :sswitch_10d
        0x90 -> :sswitch_1f3
        0x91 -> :sswitch_1e1
        0x92 -> :sswitch_106
        0xa5 -> :sswitch_238
        0xc9 -> :sswitch_ef
        0xd2 -> :sswitch_184
        0xd3 -> :sswitch_17a
        0xd6 -> :sswitch_ec
        0xe9 -> :sswitch_184
        0xea -> :sswitch_17a
        0xed -> :sswitch_184
        0xee -> :sswitch_e4
        0xef -> :sswitch_e1
        0xf0 -> :sswitch_de
        0xf1 -> :sswitch_e1
        0xf4 -> :sswitch_db
        0xf5 -> :sswitch_d8
        0xf6 -> :sswitch_db
        0xfb -> :sswitch_227
        0x101 -> :sswitch_184
        0x102 -> :sswitch_17a
        0x103 -> :sswitch_d4
        0x105 -> :sswitch_106
        0x119 -> :sswitch_cf
        0x11a -> :sswitch_ec
        0x11d -> :sswitch_cc
        0x11e -> :sswitch_c9
        0x121 -> :sswitch_184
        0x122 -> :sswitch_184
        0x137 -> :sswitch_c2
        0x140 -> :sswitch_bf
        0x141 -> :sswitch_bc
        0x18b -> :sswitch_184
        0x18c -> :sswitch_17a
        0x18e -> :sswitch_d4
    .end sparse-switch

    :pswitch_data_35e
    .packed-switch 0xb
        :pswitch_184
        :pswitch_b6
        :pswitch_aa
        :pswitch_a0
        :pswitch_1f3
        :pswitch_1e1
        :pswitch_1de
        :pswitch_1db
        :pswitch_88
        :pswitch_94
    .end packed-switch

    :pswitch_data_376
    .packed-switch 0x24
        :pswitch_184
        :pswitch_17a
        :pswitch_85
        :pswitch_80
        :pswitch_184
        :pswitch_17a
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 2036
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onConfigurationChanged()V

    const/4 v0, 0x0

    .line 2037
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNextSwitchCamera:Ljava/lang/String;

    .line 2038
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 2039
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 2040
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 2041
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->handleRecordingEndAction()V

    :cond_12
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 484
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->doOrientationChanged(I)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 7

    .line 1133
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    const/4 v1, 0x0

    if-nez v0, :cond_de

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    if-nez v0, :cond_de

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_de

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mClickZoomSupport:Z

    if-nez v0, :cond_de

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    if-nez v0, :cond_de

    .line 1138
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->disableZoomBySuperAntiVideo()Z

    move-result v0

    if-nez v0, :cond_de

    .line 1139
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isDVHintShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_de

    :cond_23
    const/4 v0, 0x1

    .line 1147
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->notifyFlipUI(Z)V

    .line 1148
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    if-nez v2, :cond_bb

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    if-nez v2, :cond_bb

    sget-object v2, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentModeName:Ljava/lang/String;

    .line 1149
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_bb

    .line 1150
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isZoomDisable()Z

    move-result v2

    if-eqz v2, :cond_41

    goto/16 :goto_bb

    .line 1155
    :cond_41
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScale() called with: isDVHintShowing() = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isDVHintShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    .line 1157
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_72

    .line 1159
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    goto :goto_79

    :cond_72
    cmpg-float v2, v2, v3

    if-gez v2, :cond_79

    const/4 v2, -0x1

    .line 1161
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    .line 1164
    :cond_79
    :goto_79
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getSwitchType(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1165
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateNextCameraIdByType()V

    .line 1166
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraChangeDuringScale:Z

    if-nez v2, :cond_8c

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    if-eqz v2, :cond_93

    :cond_8c
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v2, :cond_93

    .line 1167
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->resetStartScale(Landroid/view/ScaleGestureDetector;)V

    .line 1170
    :cond_93
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getTargetZoomValue()F

    move-result p1

    .line 1171
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->ratioToClosestValue(F)I

    move-result p1

    .line 1172
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v2, :cond_a4

    .line 1173
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraByType(I)V

    .line 1175
    :cond_a4
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 1177
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    if-eqz p1, :cond_ba

    .line 1178
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 1179
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 1180
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 1181
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    :cond_ba
    return v0

    .line 1151
    :cond_bb
    :goto_bb
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScale] wrong status mRecordStopZoom:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeDisableTouchZoom:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1140
    :cond_de
    :goto_de
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScale] wrong status mOutofBound:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsModeOrCameraSwitching:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mClickZoomSupport:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mClickZoomSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsVlogHomepage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    .line 894
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onScaleBegin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 895
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mClickZoomSupport:Z

    if-nez v0, :cond_7a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    if-nez v0, :cond_7a

    .line 902
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isDVHintShowing()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 903
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isZoomDisable()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_7a

    .line 912
    :cond_30
    sget-object v0, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    return v1

    :cond_3c
    const/4 v0, 0x1

    .line 915
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->notifyFlipUI(Z)V

    .line 916
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    .line 918
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v2, :cond_4f

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v3, :cond_4f

    .line 919
    sget-object v3, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 921
    :cond_4f
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5c

    .line 923
    sget v2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_62

    .line 925
    :cond_5c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 927
    :goto_62
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->resetStartScale(Landroid/view/ScaleGestureDetector;)V

    .line 928
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    .line 929
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0x17

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 930
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    if-eqz p1, :cond_77

    .line 931
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    .line 933
    :cond_77
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleStart:Z

    return v0

    .line 904
    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScaleBegin] wrong status mOutofBound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsModeOrCameraSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRecordStopZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeDisableTouchZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsVlogHomepage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 910
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    .line 1189
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1190
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    const/16 v1, 0x18

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mClickZoomSupport:Z

    if-nez v0, :cond_92

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    if-nez v0, :cond_92

    .line 1197
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isDVHintShowing()Z

    move-result v0

    if-nez v0, :cond_92

    .line 1198
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isZoomDisable()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_92

    .line 1209
    :cond_32
    sget-object v0, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    return v2

    .line 1212
    :cond_3e
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->notifyFlipUI(Z)V

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_4e

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v3, :cond_4e

    .line 1214
    sget-object v3, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 1216
    :cond_4e
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getSwitchType(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    .line 1217
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateNextCameraIdByType()V

    .line 1218
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_6d

    .line 1219
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraChangeDuringScale:Z

    if-nez v0, :cond_65

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    if-eqz v0, :cond_68

    .line 1220
    :cond_65
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->resetStartScale(Landroid/view/ScaleGestureDetector;)V

    .line 1222
    :cond_68
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSwitchType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraByType(I)V

    .line 1224
    :cond_6d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p1, 0x1

    .line 1225
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    .line 1226
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 1228
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 1229
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleStart:Z

    .line 1230
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    if-eq v0, p1, :cond_91

    .line 1231
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateSmoothStatus(I)V

    :cond_91
    return p1

    .line 1199
    :cond_92
    :goto_92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScaleEnd] wrong status mOutofBound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsModeOrCameraSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRecordStopZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mClickZoomSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mClickZoomSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeDisableTouchZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsVlogHomepage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogHomepage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1207
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method abstract onSlipCancel()V
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method abstract resetupConverterState(Z)V
.end method

.method abstract sendRecordZoomUIState(Z)V
.end method

.method abstract sendZoomUIMessage(Z)V
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 2282
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 479
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method abstract setCurrentCameraId()V
.end method

.method public setCurrentModeName(Ljava/lang/String;)V
    .registers 3

    .line 862
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentModeName:Ljava/lang/String;

    .line 863
    const-string v0, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    .line 864
    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    .line 865
    const-string v0, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    .line 866
    const-string v0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInPmasterMode:Z

    .line 867
    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    .line 868
    const-string v0, "com.transsion.camera.feature.mode.supermoon.SuperMoonModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    .line 869
    const-string v0, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    .line 870
    const-string v0, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVlogMode:Z

    .line 871
    const-string v0, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAIGCMode:Z

    .line 872
    const-string v0, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDocumentMode:Z

    .line 873
    const-string v0, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    .line 874
    const-string v0, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDualVideoMode:Z

    .line 875
    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    .line 876
    const-string v0, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    .line 877
    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 878
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    goto :goto_85

    :cond_83
    const/4 v0, 0x0

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v0, 0x1

    :goto_86
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperNightMode:Z

    .line 879
    const-string v0, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInStreetPhotoMode:Z

    .line 880
    const-string v0, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentPhotoMode:Z

    .line 881
    const-string v0, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsIntentVideoMode:Z

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 6

    .line 350
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 355
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_5f

    .line 356
    const-string v1, "key_macro"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "wide_camera"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_tele_camera_item_long_click"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_normal_camera_item_long_click"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_long_click"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "mode_entry_key"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 367
    :cond_5f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMacroCameraId:Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mVideoCameraId:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBlurCameraId:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBackHighCameraId:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontHighCameraId:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFoldFrontCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFoldFrontCameraId:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 381
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-eqz v1, :cond_d8

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatReplaceWide:Z

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 382
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueSatReplacedToMain:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    goto :goto_dc

    .line 384
    :cond_d8
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueWideToMain:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    .line 386
    :goto_dc
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraChangeDuringScale:Z

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDeviceSetting], camera id change:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 389
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 391
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousValue:I

    if-nez p1, :cond_11f

    .line 393
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_125

    .line 395
    :cond_11f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 398
    :goto_125
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    .line 399
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 400
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz p1, :cond_140

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_140

    .line 401
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez p1, :cond_140

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 406
    :cond_140
    invoke-static {v0}, Lcom/transsion/camera/utils/StringUtils;->stringToIntList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1cc

    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_1cc

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_1cc

    .line 409
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    .line 410
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "1"

    .line 412
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mVideoCameraId:Ljava/lang/String;

    .line 413
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 414
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 415
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBackHighCameraId:Ljava/lang/String;

    .line 416
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontHighCameraId:Ljava/lang/String;

    .line 417
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c8

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFoldFrontCameraId:Ljava/lang/String;

    .line 418
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1cc

    .line 419
    :cond_1c8
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    .line 422
    :cond_1cc
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_camera_click_zoom"

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d7

    goto :goto_1d8

    :cond_1d7
    move v1, v0

    :goto_1d8
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mClickZoomSupport:Z

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method setLayoutPadding(ZZ)V
    .registers 4

    .line 336
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_14

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    .line 339
    :cond_14
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    if-ne p1, p2, :cond_20

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    :cond_20
    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .registers 2

    .line 462
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 463
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    return-void
.end method

.method public setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 442
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method abstract setSeekBarEnable(Z)V
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method abstract setStartVideoRecording(Z)V
.end method

.method protected setValueToSetting(I)V
    .registers 7

    .line 1716
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1717
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1718
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_13

    .line 1719
    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1721
    :cond_13
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setValueToSetting] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",valueBeforeSetValue : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1722
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 1723
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_96

    .line 1724
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBack5XLongFocusCameraMiniZoom()I

    move-result v3

    if-eq v0, v3, :cond_96

    .line 1725
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    if-ge v1, v0, :cond_96

    .line 1727
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$bool;->is_telescopic_camera_support:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 1728
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez p1, :cond_7b

    .line 1729
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->telescopic_camera_on_tips:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7d

    .line 1731
    :cond_7b
    const-string p1, ""

    :goto_7d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1732
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 1733
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 1734
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_10d

    .line 1735
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1737
    :cond_96
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge p1, v3, :cond_a4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v1, v3, :cond_ab

    :cond_a4
    if-nez v1, :cond_ea

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_ea

    .line 1739
    :cond_ab
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_c9

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isMicroPanTiltCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 1740
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->micro_pan_tilt_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_d6

    .line 1742
    :cond_c9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->open_wide_camera_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1744
    :goto_d6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 1745
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 1746
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_10d

    .line 1747
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 1749
    :cond_ea
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p1, v0, :cond_10d

    .line 1750
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    if-lt p1, v0, :cond_104

    .line 1751
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10d

    .line 1752
    :cond_104
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_10d

    .line 1753
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_10d
    return-void
.end method

.method abstract setWheelViewShowFlag(Z)V
.end method

.method public setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method public setZoomOffsetPadding(I)V
    .registers 2

    .line 2171
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    return-void
.end method

.method public setZoomUIState(Z)V
    .registers 3

    .line 1709
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_7

    .line 1710
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    .line 1712
    :cond_7
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomUIState:Z

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    .line 293
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    return-void
.end method

.method protected showHint(Ljava/lang/String;)V
    .registers 3

    .line 1700
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1701
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 1702
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 1703
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_19

    .line 1704
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_19
    return-void
.end method

.method abstract showZoomUI(Z)V
.end method

.method abstract showZoomWheel()V
.end method

.method public unInit()V
    .registers 4

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 501
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentFull:Z

    .line 505
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVlogSegmentEmpty:Z

    .line 506
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mbSegmentDragging:Z

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNeedRemoveAction:Z

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->unregisterZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    .line 509
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_70

    .line 511
    const-string v1, "key_macro"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "wide_camera"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_tele_camera_item_long_click"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_normal_camera_item_long_click"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_long_click"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "mode_entry_key"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 522
    :cond_70
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V
    .registers 5

    .line 2146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModeConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2147
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    .line 2148
    iget-object v1, p1, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraEntries:[Ljava/lang/String;

    if-nez v1, :cond_28

    .line 2149
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    .line 2150
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    .line 2151
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    .line 2152
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    .line 2153
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    goto :goto_3f

    .line 2155
    :cond_28
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mSatSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    .line 2156
    array-length v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    .line 2157
    iget-boolean v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraSupport:Z

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    .line 2158
    iget-boolean p1, p1, Lcom/transsion/camera/app/common/ModeConfig;->mFrontWideCameraSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    .line 2159
    const-string p1, "com.transsion.camera.ui.setting.zoom.TeleZoomSettingUIEntry"

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    .line 2162
    :goto_3f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-eqz p1, :cond_4f

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-nez p1, :cond_4f

    .line 2163
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    const/16 v0, 0x7530

    if-le p1, v0, :cond_4f

    .line 2164
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    :cond_4f
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method abstract updateProgressByZoom()V
.end method

.method abstract updateRangeState()V
.end method

.method abstract updateSeekBarWhenRecording(ZZ)V
.end method

.method updateSmoothStatus(I)V
    .registers 3

    .line 2295
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomValue:I

    .line 2296
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_13

    .line 2297
    const-string v0, "key_smooth_zoom"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 2298
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2297
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method abstract updateZoomBarStyle()V
.end method

.method abstract updateZoomValueToUI()V
.end method
