.class public abstract Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ZOOM_VALUE:I

.field private static final FOCAL_LENGTH_23MM:Ljava/lang/String; = "23mm"

.field private static final FOCAL_LENGTH_35MM:Ljava/lang/String; = "35mm"

.field private static final FOCAL_LENGTH_50MM:Ljava/lang/String; = "50mm"

.field private static final FOCAL_LENGTH_70MM:Ljava/lang/String; = "70mm"

.field private static final INIT_CLICK_STEP:I = 0x14

.field private static final KEY:Ljava/lang/String; = "key_camera_zoom"

.field private static final MAX_WIDE_CAMERA_RECORDING_VALUE:I

.field private static final MAX_WIDE_CAMERA_VALUE:I

.field protected static final MAX_ZOOM_1000:I = 0x186a0

.field protected static final MAX_ZOOM_10000:I = 0xf4240

.field protected static final MAX_ZOOM_1500:I = 0x249f0

.field protected static final MAX_ZOOM_2000:I = 0x30d40

.field protected static final MAX_ZOOM_300:I = 0x7530

.field protected static final MAX_ZOOM_3000:I = 0x493e0

.field protected static final MAX_ZOOM_400:I = 0x9c40

.field protected static final MAX_ZOOM_500:I = 0xc350

.field protected static final MAX_ZOOM_5000:I = 0x7a120

.field protected static final MAX_ZOOM_600:I = 0xea60

.field protected static final MAX_ZOOM_6000:I = 0x927c0

.field protected static final MAX_ZOOM_800:I = 0x13880

.field protected static final NORMAL_SWITCH_TELE:I = 0x3

.field protected static final NORMAL_SWITCH_WIDE:I = 0x2

.field protected static final NO_SWITCH:I = 0x0

.field protected static final SAT_SWITCH_WIDE:I = 0x5

.field private static final STREAM_ID_CHANGE_GAP:I

.field protected static final SWITCH_CAM_MIN_VALUE:I = 0xb4

.field protected static final TELE_RATIO_2_8X:F = 2.8f

.field protected static final TELE_RATIO_3X:F = 3.0f

.field protected static final TELE_RATIO_5X:F = 5.0f

.field protected static final TELE_SWITCH_NORMAL:I = 0x4

.field protected static final WIDE_MAX_VALUE:I = 0xc8

.field protected static final WIDE_SWITCH_NORMAL:I = 0x1

.field protected static final WIDE_SWITCH_SAT:I = 0x6

.field private static final ZOOM_STEP_SHOW_ON_UI:I = 0xa

.field protected static mCurrentZoomInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/zoom/ZoomItemView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ZOOM_IN:I

.field private final ZOOM_INIT_DIRECT:I

.field private final ZOOM_OUT:I

.field private isCameraSwitchingAndNotPause:Z

.field isIncreaseWideToMainCamera:Z

.field protected m2XBlurCameraId:Ljava/lang/String;

.field protected mAIArtMuseumMode:Z

.field protected mActionZoomWheelBegin:Z

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mBackHighCameraId:Ljava/lang/String;

.field protected mBaseFocalLength:F

.field private mBaseZoomRatio:F

.field protected mBlurCameraId:Ljava/lang/String;

.field protected mBottomPadding:I

.field private mCameraChangeDuringScale:Z

.field protected mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected final mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field private mClickZoomSupport:Z

.field protected mCurrentCameraId:Ljava/lang/String;

.field protected volatile mCurrentValue:I

.field private mCurrentZoomRatio:Ljava/lang/String;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mDisplayDensity:F

.field protected mFoldFrontCameraId:Ljava/lang/String;

.field protected mFrontHighCameraId:Ljava/lang/String;

.field protected mFrontWideCameraId:Ljava/lang/String;

.field protected mGraduationViewSilpping:Z

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mInFragment:Z

.field private mInMicroPanTilt:Z

.field protected mInstantBottomPadding:I

.field protected mInstantItemPadding:I

.field protected mInstantItemWidth:I

.field protected mInstantZoomHeight:I

.field protected mInstantZoomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAfterRecordingSwitchCam:Z

.field protected mIsBackBressed:Z

.field protected mIsCameraSwitching:Z

.field protected mIsCapturing:Z

.field private mIsFilterSwitch:Z

.field protected mIsInAIGCMode:Z

.field protected mIsInAsdMode:Z

.field protected mIsInDUalVideoMode:Z

.field protected mIsInDocumentMode:Z

.field protected mIsInFlashSnapMode:Z

.field protected mIsInFunVideoMode:Z

.field protected mIsInIntentPhotoMode:Z

.field protected mIsInIntentVideMode:Z

.field protected mIsInMacroMode:Z

.field protected mIsInMovieMode:Z

.field protected mIsInPamsterMode:Z

.field protected mIsInPmasterMode:Z

.field protected mIsInProfessionMode:Z

.field protected mIsInSlowMotionMode:Z

.field protected mIsInSuperMoonMode:Z

.field protected mIsInSuperNightMode:Z

.field protected mIsInTimeLapseVideoMode:Z

.field protected mIsInVideoMode:Z

.field protected mIsInVlogMode:Z

.field protected mIsLongTouchToNormal:Z

.field private mIsMacroSupportZoom:Z

.field protected mIsModeSwitching:Z

.field protected mIsQuickRecording:Z

.field protected mIsSizeChanging:Z

.field protected mIsSlowMotionCameraAssigned:Z

.field protected mIsTeleCamSupport100X:Z

.field protected mIsVideoStartRecording:Z

.field protected mIsVlogSegmentEmpty:Z

.field protected mIsVlogSegmentFull:Z

.field private mIsWideCamUISupport:Z

.field protected mIsZoomClick:Z

.field protected mIsZoomUIHidedWhileScaling:Z

.field protected mLastCurrentValue:I

.field protected mMacroCameraId:Ljava/lang/String;

.field protected mMainBackCameraId:Ljava/lang/String;

.field protected mMaxValue:I

.field protected mMinValue:I

.field protected mMinZoomValue:I

.field private mModeDisableTouchZoom:Z

.field protected mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field protected mMoreMode:Z

.field protected mNextSwitchCamera:Ljava/lang/String;

.field protected mNoZoomItemPadding:I

.field private mNormalZoomMinValue:I

.field protected mNumOfWideCameraItem:I

.field protected mOffsetPadding:I

.field protected mOutofBound:Z

.field protected mOverrideClickListener:Landroid/view/View$OnClickListener;

.field protected mPausedZoom:Z

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field protected mPreIspFakeTeleId:Ljava/lang/String;

.field protected mPrevOffsetPadding:I

.field protected mPrevZoomItemStyle:I

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewStarted:Z

.field protected mPreviousCameraId:Ljava/lang/String;

.field protected mPreviousValue:I

.field protected mProOffsetfor11:I

.field protected mProgress:I

.field private mRecordStopZoom:Z

.field private mRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mResources:Landroid/content/res/Resources;

.field protected mSatCameraId:Ljava/lang/String;

.field private mSatReplaceWide:Z

.field protected mSatSupportWide:Z

.field protected mScaleBegin:Z

.field private mScaleFactor:F

.field protected mScaleStart:Z

.field protected mScaling:Z

.field protected mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field protected mSlowMotionZoomLimited:Z

.field private mSlowScale:Z

.field protected mSmoothZoomValue:I

.field protected mSmoothZoomViewMargin:I

.field private mStartScaleZoomValue:F

.field private mStartZoomValue:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStepCount:I

.field protected mSuperAntiVideoOn:Z

.field private mSuperAntiVideoRestrictionType:I

.field private mSuperAntivideoSupportWide:Z

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

.field protected mTranslateDistanceInVlogMode:I

.field protected mTreasureBoxShow:Z

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

.field private final mValueLongFocusScrollToMain:I

.field private final mValueLongFocusToMain:I

.field private final mValueNormalToLongFocus:I

.field private mValueSatReplacedToMain:I

.field private mValueWideToMain:I

.field protected mVideoCameraId:Ljava/lang/String;

.field protected mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

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

.field protected mZoomInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mZoomItemExtraPadding:I

.field protected mZoomItemPadding:I

.field protected mZoomItemType:I

.field protected mZoomItemWidth:I

.field private mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

.field protected mZoomWheelExtraPadding:I

.field protected mbSegmentDragging:Z


# direct methods
.method public static synthetic $r8$lambda$g843so0eIhphyD882HPWzP1oYBE(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->lambda$updateZoomInfo$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClickZoomSupport(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mClickZoomSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInMicroPanTilt(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInMicroPanTilt:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFilterSwitch(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsFilterSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeDisableTouchZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewStarted(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviewStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordStopZoom(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStepCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuperAntivideoSupportWide(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntivideoSupportWide:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportSuperAntiVideoV2(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportSuperAntiVideoV2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThreshholdValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mThreshholdValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmValueLongFocusScrollToMain(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueLongFocusScrollToMain:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmStartZoomValue(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartZoomValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStepCount(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStepCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableZoomBySuperAntiVideo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->disableZoomBySuperAntiVideo()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDVHintShowing(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isDVHintShowing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNearByStreamIdChanged(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isNearByStreamIdChanged()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misZoomLayoutUpdated(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isZoomLayoutUpdated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswitchCameraByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraByType(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNextCameraIdByType(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextCameraIdByType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateZoomInfo(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomInfo(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 121
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x7d0

    goto :goto_d

    :cond_b
    const/16 v0, 0x14

    :goto_d
    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->STREAM_ID_CHANGE_GAP:I

    .line 147
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    .line 148
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_22

    const/16 v0, 0x3e80

    goto :goto_24

    :cond_22
    const/16 v0, 0xa0

    :goto_24
    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->MAX_WIDE_CAMERA_VALUE:I

    .line 149
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_32

    const v0, 0x9470

    goto :goto_34

    :cond_32
    const/16 v0, 0x17c

    :goto_34
    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->MAX_WIDE_CAMERA_RECORDING_VALUE:I

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomInfo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 9

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAIGCMode:Z

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAIArtMuseumMode:Z

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMovieMode:Z

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMacroMode:Z

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInFunVideoMode:Z

    .line 129
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInPmasterMode:Z

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVideoMode:Z

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInDocumentMode:Z

    .line 133
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInFlashSnapMode:Z

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperNightMode:Z

    .line 135
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInTimeLapseVideoMode:Z

    .line 136
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperMoonMode:Z

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSizeChanging:Z

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSlowMotionMode:Z

    .line 139
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInDUalVideoMode:Z

    const/4 v1, 0x1

    .line 140
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAsdMode:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mActionZoomWheelBegin:Z

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInPamsterMode:Z

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentPhotoMode:Z

    .line 145
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentVideMode:Z

    .line 146
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsQuickRecording:Z

    .line 151
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinValue:I

    .line 152
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMaxValue:I

    .line 156
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInFragment:Z

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsBackBressed:Z

    .line 160
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 161
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentFull:Z

    .line 162
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentEmpty:Z

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mbSegmentDragging:Z

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomUIHidedWhileScaling:Z

    .line 165
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsLongTouchToNormal:Z

    .line 166
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    .line 167
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    .line 168
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    const/4 v2, 0x0

    .line 170
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMainBackCameraId:Ljava/lang/String;

    .line 172
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMacroCameraId:Ljava/lang/String;

    .line 173
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFrontWideCameraId:Ljava/lang/String;

    .line 174
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 175
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviousCameraId:Ljava/lang/String;

    .line 176
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mVideoCameraId:Ljava/lang/String;

    .line 177
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    .line 178
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 179
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    .line 180
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBlurCameraId:Ljava/lang/String;

    .line 181
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBackHighCameraId:Ljava/lang/String;

    .line 183
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFrontHighCameraId:Ljava/lang/String;

    .line 184
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFoldFrontCameraId:Ljava/lang/String;

    .line 187
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNumOfWideCameraItem:I

    .line 188
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 193
    sget v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviousValue:I

    .line 194
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 197
    sget-object v4, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    const/4 v5, -0x1

    .line 198
    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTopPadding:I

    .line 199
    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBottomPadding:I

    .line 200
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSlowMotionCameraAssigned:Z

    .line 202
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    .line 203
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevOffsetPadding:I

    .line 204
    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPrevZoomItemStyle:I

    .line 205
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraZoomList:Ljava/util/List;

    .line 208
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    .line 209
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviewRect:Landroid/graphics/Rect;

    .line 210
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    .line 211
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSlowMotionZoomLimited:Z

    .line 212
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleZoomEnlarged:Z

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsTeleCamSupport100X:Z

    .line 214
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 215
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 216
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleStart:Z

    .line 217
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    .line 218
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomClick:Z

    .line 220
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoOn:Z

    .line 221
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportFocalLength:Z

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    .line 224
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    .line 225
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const v6, 0x41baa3d7    # 23.33f

    .line 226
    iput v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseFocalLength:F

    .line 238
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinZoomValue:I

    .line 239
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTreasureBoxShow:Z

    .line 242
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMoreMode:Z

    const/high16 v4, -0x40800000    # -1.0f

    .line 243
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDisplayDensity:F

    .line 244
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    .line 245
    const-string v4, ""

    iput-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    .line 250
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportSuperAntiVideoV2:Z

    .line 251
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatReplaceWide:Z

    .line 254
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isCameraSwitchingAndNotPause:Z

    const/16 v4, 0x2710

    .line 259
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNormalZoomMinValue:I

    .line 261
    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->ZOOM_IN:I

    .line 262
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->ZOOM_OUT:I

    .line 263
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->ZOOM_INIT_DIRECT:I

    .line 264
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomDirect:I

    .line 265
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartZoomValue:I

    .line 272
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    .line 273
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    .line 276
    new-instance v3, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v4, 0x67

    invoke-direct {v3, v1, v4}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 277
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 280
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviewStarted:Z

    .line 281
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsFilterSwitch:Z

    .line 284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    .line 285
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isIncreaseWideToMainCamera:Z

    .line 551
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSlowScale:Z

    .line 552
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    .line 553
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    .line 923
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    .line 289
    new-instance v1, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 290
    sget v2, Lcom/transsion/camera/R$bool;->is_macro_support_zoom:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsMacroSupportZoom:Z

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    .line 292
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 293
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDisplayDensity:F

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayMetrics: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDisplayDensity:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->initZoom4Parameters(Landroid/content/res/Resources;)V

    .line 296
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntiVideoRestrictionType:I

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoRestrictionType:I

    .line 297
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperAntivideoSupportWide:Z

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntivideoSupportWide:Z

    .line 298
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportSuperAntiVideoV2:Z

    .line 299
    sget v1, Lcom/transsion/camera/R$bool;->sat_support_wide:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    .line 300
    sget v1, Lcom/transsion/camera/R$bool;->sat_replace_wide:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatReplaceWide:Z

    .line 301
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getBaseFocalLength()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseFocalLength:F

    .line 302
    sget v1, Lcom/transsion/camera/R$bool;->slow_motion_camera_assgined:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSlowMotionCameraAssigned:Z

    .line 303
    sget v1, Lcom/transsion/camera/R$array;->wide_camera_item_text_center_zoom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

    .line 304
    sget v1, Lcom/transsion/camera/R$array;->wide_camera_zoom_list:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 305
    sget v2, Lcom/transsion/camera/R$bool;->is_widecam_item_ui_support_in_widecam:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsWideCamUISupport:Z

    .line 306
    sget v2, Lcom/transsion/camera/R$bool;->slow_motion_zoom_limited:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSlowMotionZoomLimited:Z

    .line 307
    sget v2, Lcom/transsion/camera/R$bool;->is_tele_zoom_enlarged:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleZoomEnlarged:Z

    .line 308
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsTeleCamSupport100X:Z

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsTeleCamSupport100X:Z

    .line 309
    sget v2, Lcom/transsion/camera/R$bool;->pmaster_mode_focal_len:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportFocalLength:Z

    .line 310
    sget v2, Lcom/transsion/camera/R$dimen;->vlog_wide_camera_translation_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTranslateDistanceInVlogMode:I

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 312
    array-length p1, v1

    :goto_1ea
    if-ge v0, p1, :cond_1f6

    aget-object v2, v1, v0

    .line 313
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ea

    .line 316
    :cond_1f6
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateWideToNormalValue(Z)V

    .line 317
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 318
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueNormalToLongFocus:I

    add-int/lit8 v1, v1, -0xa

    .line 319
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueLongFocusScrollToMain:I

    .line 320
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueLongFocusToMain:I

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueSatReplacedToMain:I

    .line 323
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBaseZoomRatio(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseZoomRatio:F

    return-void
.end method

.method private addZoomInfo()V
    .registers 4

    .line 1801
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 1802
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isZoomInfoExist(Lcom/transsion/camera/app/common/ZoomInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1803
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private converProgressToValue(I)I
    .registers 4

    .line 909
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    .line 910
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

    .line 1615
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInPamsterMode:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportFocalLength:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private disableZoomBySuperAntiVideo()Z
    .registers 2

    .line 757
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoOn:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private getTargetZoomValue()F
    .registers 2

    .line 749
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSlowScale:Z

    if-eqz v0, :cond_a

    .line 750
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleFactor:F

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartScaleZoomValue:F

    :goto_8
    mul-float/2addr v0, p0

    return v0

    .line 752
    :cond_a
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleFactor:F

    mul-float/2addr v0, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartScaleZoomValue:F

    goto :goto_8
.end method

.method private hideWideTips()V
    .registers 3

    .line 1470
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_16

    .line 1471
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1472
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_tips"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_wide_camera_hide"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private isBackWideCamerSupport()Z
    .registers 2

    .line 1977
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinZoomValue:I

    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isDVHintShowing()Z
    .registers 4

    .line 2006
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 2009
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_f

    return v1

    .line 2012
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

.method private isNearByStreamIdChanged()Z
    .registers 4

    .line 919
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    sget v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v2, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->STREAM_ID_CHANGE_GAP:I

    if-lt v0, v2, :cond_19

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    if-ge v0, v1, :cond_17

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    sub-int/2addr v1, p0

    if-ne v1, v2, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method private isZoomInfoExist(Lcom/transsion/camera/app/common/ZoomInfo;)Z
    .registers 5

    .line 1791
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 1792
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomInfo;->getMaxZoomRatio()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMaxZoomRatio()I

    move-result v1

    if-ne v0, v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private isZoomLayoutUpdated()Z
    .registers 3

    .line 371
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTopPadding:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBottomPadding:I

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

.method private synthetic lambda$updateZoomInfo$0()V
    .registers 3

    const/4 v0, 0x0

    .line 1782
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomItemByInfos(ZLjava/lang/String;)V

    return-void
.end method

.method private ratioToClosestValue(F)I
    .registers 6

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 836
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinValue:I

    if-gt p1, v0, :cond_32

    .line 837
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToWideCamera()Z

    move-result v0

    if-eqz v0, :cond_21

    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 838
    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0xa

    .line 839
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinValue:I

    if-gt p1, p0, :cond_20

    return p0

    :cond_20
    return p1

    .line 840
    :cond_21
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingLongToMain()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 841
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueLongFocusScrollToMain:I

    .line 842
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinValue:I

    if-gt p1, p0, :cond_2e

    return p0

    :cond_2e
    return p1

    .line 844
    :cond_2f
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinValue:I

    return p0

    .line 846
    :cond_32
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMaxValue:I

    if-lt p1, v0, :cond_37

    return v0

    .line 849
    :cond_37
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_61

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

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

    .line 854
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

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

    .line 859
    :cond_7a
    sget p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    return p0
.end method

.method private removeMainCropItem()V
    .registers 6

    .line 1835
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 1836
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v2

    .line 1837
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseZoomRatio:F

    const v4, 0x402ccccd    # 2.7f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_34

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_34

    .line 1838
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v2, :cond_32

    const/16 v2, 0x7530

    goto :goto_34

    :cond_32
    const/16 v2, 0x12c

    .line 1840
    :cond_34
    :goto_34
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v3

    sget v4, Lcom/transsion/camera/utils/SettingInfo;->MAIN_LOWER_CROP_ZOOM_VALUE:I

    if-ne v3, v4, :cond_42

    .line 1841
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMaxZoomRatio()I

    move-result v3

    if-eq v3, v2, :cond_4a

    :cond_42
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1842
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1843
    :cond_4a
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_50
    return-void
.end method

.method private removeMainItem()V
    .registers 5

    .line 1848
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 1849
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 1850
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_24
    return-void
.end method

.method private removeTeleItem()V
    .registers 6

    .line 1815
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 1816
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v2

    .line 1817
    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBaseZoomRatio:F

    const v4, 0x402ccccd    # 2.7f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_34

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_34

    .line 1818
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v2, :cond_32

    const/16 v2, 0x7530

    goto :goto_34

    :cond_32
    const/16 v2, 0x12c

    .line 1820
    :cond_34
    :goto_34
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 1821
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_40
    return-void
.end method

.method private removeWideInfo()V
    .registers 5

    .line 1827
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 1828
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomInfo;->getMaxZoomRatio()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMainCameraMiniZoom()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 1829
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_24
    return-void
.end method

.method private removeZoomInfo()V
    .registers 4

    .line 1809
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ZoomInfo;

    .line 1810
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_18
    return-void
.end method

.method private resetStartScale(Landroid/view/ScaleGestureDetector;)V
    .registers 7

    .line 730
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 733
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraChangeDuringScale:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 734
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleFactor:F

    const v2, 0x461c4000    # 10000.0f

    const/4 v3, 0x1

    if-eq p1, v3, :cond_19

    const/4 v4, 0x2

    if-eq p1, v4, :cond_19

    const/4 v4, 0x3

    if-ne p1, v4, :cond_29

    .line 735
    :cond_19
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p1, :cond_29

    .line 736
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartScaleZoomValue:F

    goto :goto_30

    .line 738
    :cond_29
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartScaleZoomValue:F

    .line 740
    :goto_30
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsBase()Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    .line 741
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_44

    .line 744
    :cond_41
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSlowScale:Z

    return-void

    .line 742
    :cond_44
    :goto_44
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSlowScale:Z

    return-void
.end method

.method private sateMatchSatToWide(I)Z
    .registers 4

    .line 1307
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    .line 1308
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    if-nez v0, :cond_18

    .line 1310
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNormalZoomMinValue:I

    if-gt p1, p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private shouldResponseVolumeKey()Z
    .registers 2

    .line 915
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAsdMode:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isFrontCameraSupport()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private showWideTips()V
    .registers 4

    .line 1477
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-eq v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    if-eqz v0, :cond_1a

    .line 1478
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[showWideTips] vlog return while scaling"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1481
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-eq v0, v1, :cond_54

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_54

    .line 1482
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->open_wide_camera_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 1484
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 1485
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_47

    .line 1486
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1488
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_tips"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_wide_camera_show"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_54
    return-void
.end method

.method private stateMatchNormalToTele()Z
    .registers 3

    .line 1339
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueNormalToLongFocus:I

    if-lt v0, v1, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1340
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchNormalToWide()Z
    .registers 4

    .line 1279
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFrontWideCameraId:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "1"

    .line 1280
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1281
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNormalZoomMinValue:I

    if-ne v0, v2, :cond_1a

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartZoomValue:I

    if-ne v0, v2, :cond_1a

    return v1

    .line 1286
    :cond_1a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isBackWideCamerSupport()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "0"

    .line 1287
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1288
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNormalZoomMinValue:I

    if-ne v0, p0, :cond_31

    return v1

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchSatToWide()Z
    .registers 3

    .line 1296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    .line 1297
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    if-nez v0, :cond_1a

    .line 1299
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNormalZoomMinValue:I

    if-gt v0, p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchTeleToNormal()Z
    .registers 3

    .line 1329
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 1330
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_14
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueLongFocusToMain:I

    if-gt v0, p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchWideToSat(I)Z
    .registers 4

    .line 1318
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 1319
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    if-nez v0, :cond_16

    .line 1321
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNormalZoomMinValue:I

    if-lt p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private stateRejectSwitchCamera()Z
    .registers 2

    .line 1399
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedIntentMode()Z

    move-result p0

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

.method private switchCamWhenRecordingEnd()V
    .registers 9

    .line 865
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    if-eqz v0, :cond_6

    goto/16 :goto_ef

    .line 868
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_video_preisp"

    .line 869
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 868
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getLongFocusIdOrFakeId(Z)Ljava/lang/String;

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "   :   "

    const-string v3, "getCurrentZoomValue : "

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_9a

    .line 871
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getEquivalentZoomValue(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 872
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v7

    if-lt v1, v7, :cond_5e

    if-eqz v0, :cond_5e

    .line 874
    iput-boolean v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 875
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->converProgressToValue(I)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 876
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 877
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextCameraIdByType()V

    .line 878
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p0, v0, v6}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 879
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraAfterRecording(I)Z

    goto :goto_79

    .line 880
    :cond_5e
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_79

    .line 881
    iput-boolean v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 882
    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 883
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextCameraIdByType()V

    .line 884
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p0, v0, v6}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 885
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraAfterRecording(I)Z

    .line 887
    :cond_79
    :goto_79
    iput-boolean v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsAfterRecordingSwitchCam:Z

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 889
    :cond_9a
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 890
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v7}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v7

    if-lt v1, v7, :cond_cf

    .line 891
    iput-boolean v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v0, :cond_ef

    .line 893
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 897
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->converProgressToValue(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 898
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 899
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextCameraIdByType()V

    .line 900
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p0, v0, v6}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 901
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraAfterRecording(I)Z

    .line 903
    :cond_cf
    iput-boolean v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsAfterRecordingSwitchCam:Z

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProgress:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_ef
    :goto_ef
    return-void
.end method

.method private switchCameraAfterRecording(I)Z
    .registers 2

    .line 1344
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    move-result p0

    return p0
.end method

.method private switchCameraByType(I)V
    .registers 2

    .line 1179
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    return-void
.end method

.method private switchCameraTypeWhenZoomIn()I
    .registers 3

    .line 1227
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->stateRejectSwitchCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1230
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->stateMatchNormalToWide()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x2

    return p0

    .line 1232
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->stateMatchSatToWide()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x5

    return p0

    .line 1234
    :cond_18
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->stateMatchTeleToNormal()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x4

    return p0

    .line 1236
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->stateMatchNormalToTele()Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x3

    return p0

    :cond_28
    return v1
.end method

.method private switchCameraTypeWhenZoomOut()I
    .registers 6

    .line 1243
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->stateRejectSwitchCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1246
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFrontWideCameraId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    return v2

    .line 1248
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x6

    if-eqz v0, :cond_3f

    .line 1249
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mThreshholdValue:I

    if-ge v0, v4, :cond_26

    return v1

    .line 1252
    :cond_26
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isProjectSupportSat()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    return v3

    .line 1255
    :cond_39
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz p0, :cond_3e

    return v1

    :cond_3e
    return v2

    .line 1261
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1262
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mThreshholdValue:I

    if-ge v0, v4, :cond_4e

    return v1

    .line 1265
    :cond_4e
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isProjectSupportSat()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatSupportWide:Z

    if-nez v0, :cond_61

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_61

    return v3

    :cond_61
    return v2

    .line 1272
    :cond_62
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->stateMatchNormalToTele()Z

    move-result p0

    if-eqz p0, :cond_6a

    const/4 p0, 0x3

    return p0

    :cond_6a
    return v1
.end method

.method private updateNextCameraIdByType()V
    .registers 4

    .line 761
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateNextCameraIdByType]mSwitchType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mNextSwitchCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 762
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    packed-switch v0, :pswitch_data_62

    return-void

    .line 776
    :pswitch_28
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 772
    :pswitch_31
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_video_preisp"

    .line 773
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 772
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getLongFocusIdOrFakeId(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 769
    :pswitch_4a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getWideCamera(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 765
    :pswitch_54
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 779
    :pswitch_5d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_54
        :pswitch_4a
        :pswitch_31
        :pswitch_54
        :pswitch_4a
        :pswitch_28
    .end packed-switch
.end method

.method private updateWideToNormalValue(Z)V
    .registers 6

    if-eqz p1, :cond_19

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraZoomList:Ljava/util/List;

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

    .line 343
    :cond_19
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    div-double/2addr v0, v2

    double-to-int p1, v0

    :goto_27
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueWideToMain:I

    return-void
.end method

.method private updateZoomInfo(Ljava/lang/String;)V
    .registers 4

    .line 1760
    const-string v0, "super"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    .line 1761
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x3

    .line 1762
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    .line 1763
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntivideoSupportWide:Z

    if-nez p1, :cond_18

    .line 1764
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeWideInfo()V

    .line 1766
    :cond_18
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoRestrictionType:I

    if-nez p1, :cond_1f

    .line 1767
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeMainItem()V

    .line 1769
    :cond_1f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeMainCropItem()V

    .line 1770
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeTeleItem()V

    .line 1771
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeZoomInfo()V

    goto :goto_3b

    .line 1773
    :cond_29
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    .line 1774
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3b

    .line 1775
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->addZoomInfo()V

    .line 1776
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRemoveList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1780
    :cond_3b
    :goto_3b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq p1, v1, :cond_57

    .line 1781
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1785
    :cond_57
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomItemByInfos(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected calculateZoomPosByClick(ZIZ)I
    .registers 13

    .line 1518
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_11e

    .line 1519
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1520
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz p3, :cond_8f

    .line 1521
    iget-boolean p3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMacroMode:Z

    if-nez p3, :cond_8f

    move p3, v2

    move v2, v1

    .line 1522
    :goto_22
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_41

    .line 1523
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

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

    .line 1532
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-boolean v7, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v7, :cond_5f

    sget v7, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->MAX_WIDE_CAMERA_RECORDING_VALUE:I

    goto :goto_61

    :cond_5f
    sget v7, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->MAX_WIDE_CAMERA_VALUE:I

    :goto_61
    if-gt v6, v7, :cond_64

    goto :goto_81

    :cond_64
    if-eqz p1, :cond_7f

    .line 1536
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v4, :cond_79

    sget v4, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->MAX_WIDE_CAMERA_RECORDING_VALUE:I

    goto :goto_7b

    :cond_79
    sget v4, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->MAX_WIDE_CAMERA_VALUE:I

    :goto_7b
    if-le v2, v4, :cond_7f

    .line 1537
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isIncreaseWideToMainCamera:Z

    :cond_7f
    move v2, p3

    goto :goto_8f

    :cond_81
    :goto_81
    if-eqz p1, :cond_84

    goto :goto_86

    :cond_84
    add-int/lit8 v2, p3, -0x2

    .line 1534
    :goto_86
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1541
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

    .line 1542
    :goto_9c
    div-int/lit8 p3, p0, 0x2

    if-lt v0, p0, :cond_cd

    if-ltz v2, :cond_a8

    .line 1545
    div-int/lit8 p0, v0, 0x40

    if-ge v2, p0, :cond_a8

    goto/16 :goto_10f

    .line 1547
    :cond_a8
    div-int/lit8 p0, v0, 0x40

    if-lt v2, p0, :cond_b4

    div-int/lit8 p0, v0, 0x8

    if-ge v2, p0, :cond_b4

    :goto_b0
    mul-int/lit8 p2, p2, 0x2

    goto/16 :goto_10f

    .line 1549
    :cond_b4
    div-int/lit8 p0, v0, 0x8

    if-lt v2, p0, :cond_bf

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_bf

    :goto_bc
    mul-int/lit8 p2, p2, 0x3

    goto :goto_10f

    .line 1551
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

    .line 1558
    div-int/lit8 p0, v0, 0x20

    if-ge v2, p0, :cond_d6

    goto :goto_10f

    .line 1560
    :cond_d6
    div-int/lit8 p0, v0, 0x20

    if-lt v2, p0, :cond_df

    div-int/lit8 p0, v0, 0x8

    if-ge v2, p0, :cond_df

    goto :goto_b0

    .line 1562
    :cond_df
    div-int/lit8 p0, v0, 0x8

    if-lt v2, p0, :cond_e8

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_e8

    goto :goto_bc

    .line 1564
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

    .line 1572
    div-int/lit8 p0, v0, 0xa

    if-ge v2, p0, :cond_fd

    goto :goto_10f

    .line 1574
    :cond_fd
    div-int/lit8 p0, v0, 0xa

    if-lt v2, p0, :cond_106

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_106

    goto :goto_b0

    .line 1576
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

    .line 1584
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

    .line 1593
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 1594
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1595
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

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

    .line 1596
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_29
    return v1
.end method

.method protected correctZoomValue(I)I
    .registers 2

    .line 1686
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsWideCamUISupport:Z

    if-nez p0, :cond_5

    return p1

    :cond_5
    add-int/lit8 p1, p1, -0x32

    return p1
.end method

.method protected currentCameraFacingFront()Z
    .registers 1

    .line 1223
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected currentCameraIsBase()Z
    .registers 2

    .line 1198
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected currentCameraIsMacro()Z
    .registers 2

    .line 1218
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMacroCameraId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 1219
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
    .registers 2

    .line 1208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 1209
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method protected currentCameraIsTele()Z
    .registers 3

    .line 1202
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    .line 1203
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 1204
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x1

    return p0
.end method

.method protected currentCameraIsWide()Z
    .registers 2

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 1214
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

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method abstract doOrientationChanged(I)V
.end method

.method abstract enableZoomItem(Z)V
.end method

.method protected findMinZoomValue()I
    .registers 4

    .line 1856
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 1857
    :goto_7
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1858
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ZoomInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomInfo;->getMinZoomRatio()I

    move-result v2

    if-lt v0, v2, :cond_1e

    move v0, v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return v0
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

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 463
    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method abstract getSelectedView()Landroid/view/View;
.end method

.method protected getSmoothZoomStyle()Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;
    .registers 5

    .line 1981
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isBackWideCamerSupport()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedIntentMode()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 1982
    :goto_11
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    if-eqz v3, :cond_16

    move v1, v2

    :cond_16
    if-eqz v0, :cond_1b

    const/16 v0, 0x1770

    goto :goto_1d

    :cond_1b
    const/16 v0, 0x2710

    .line 1986
    :goto_1d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomLimit30xForSuperDefinition:Z

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v3, "key_super_definition"

    .line 1987
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const p0, 0x493e0

    goto :goto_44

    :cond_39
    if-eqz v1, :cond_40

    .line 1990
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getUpperTeleZoom()I

    move-result p0

    goto :goto_44

    .line 1992
    :cond_40
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getUpperMainZoom()I

    move-result p0

    .line 1995
    :goto_44
    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;->getSmoothZoomStyle(II)Lcom/transsion/camera/app/ui/widget/disc/SmoothZoomStyle;

    move-result-object p0

    return-object p0
.end method

.method protected getSwitchType(I)I
    .registers 4

    .line 1167
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    .line 1171
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraTypeWhenZoomIn()I

    move-result p0

    return p0

    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 1173
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraTypeWhenZoomOut()I

    move-result p0

    return p0

    :cond_1a
    return v1
.end method

.method protected getUpperMainZoom()I
    .registers 7

    .line 1950
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x9c40

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    .line 1951
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    .line 1952
    :goto_1e
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const v5, 0x13880

    if-nez v4, :cond_38

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    .line 1953
    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_38

    move v1, v2

    .line 1954
    :cond_38
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSlowMotionMode:Z

    if-eqz v2, :cond_3f

    const/16 v3, 0x7531

    goto :goto_6d

    :cond_3f
    if-eqz v0, :cond_42

    goto :goto_6d

    :cond_42
    if-eqz v1, :cond_46

    move v3, v5

    goto :goto_6d

    .line 1962
    :cond_46
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    const v3, 0x186a0

    if-eqz v0, :cond_6d

    .line 1963
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimtedThirdAlgoMode()Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedAIGCMode()Z

    move-result v0

    if-nez v0, :cond_6d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentVideMode:Z

    if-eqz v0, :cond_62

    goto :goto_6d

    .line 1966
    :cond_62
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedVideoMode()Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_6d

    :cond_69
    const v0, 0x249f0

    move v3, v0

    .line 1970
    :cond_6d
    :goto_6d
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedAIArtMuseumMode()Z

    move-result p0

    if-eqz p0, :cond_7b

    const p0, 0xc350

    .line 1971
    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_7b
    return v3
.end method

.method protected getUpperTeleZoom()I
    .registers 5

    .line 1901
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusRatio()F

    move-result v0

    .line 1902
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedIntentMode()Z

    move-result v1

    const v2, 0x249f0

    const v3, 0x186a0

    if-eqz v1, :cond_20

    .line 1903
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz v0, :cond_1f

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentPhotoMode:Z

    if-eqz p0, :cond_1f

    return v2

    :cond_1f
    return v3

    .line 1908
    :cond_20
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    const p0, 0xea60

    return p0

    .line 1910
    :cond_2a
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedVideoMode()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1912
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceZoom10XForVideo()Z

    move-result p0

    if-eqz p0, :cond_37

    return v3

    :cond_37
    return v2

    .line 1917
    :cond_38
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimtedThirdAlgoMode()Z

    move-result v1

    if-eqz v1, :cond_3f

    return v3

    .line 1919
    :cond_3f
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedAIGCMode()Z

    move-result v1

    const v2, 0x927c0

    if-eqz v1, :cond_52

    .line 1920
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mMainZoomEnlarged:Z

    if-eqz p0, :cond_51

    return v3

    :cond_51
    return v2

    .line 1925
    :cond_52
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isLimitedAIArtMuseumMode()Z

    move-result v1

    if-eqz v1, :cond_5c

    const p0, 0xc350

    return p0

    :cond_5c
    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v1, v0

    .line 1928
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_6c

    move v0, v2

    goto :goto_8e

    :cond_6c
    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v1, v0

    .line 1930
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_7b

    const v0, 0x493e0

    goto :goto_8e

    :cond_7b
    const v1, 0x40333333    # 2.8f

    sub-float/2addr v1, v0

    .line 1932
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8b

    const v0, 0x7a120

    goto :goto_8e

    :cond_8b
    const v0, 0x30d40

    .line 1937
    :goto_8e
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleZoomEnlarged:Z

    if-eqz v1, :cond_93

    goto :goto_94

    :cond_93
    move v2, v0

    .line 1940
    :goto_94
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsTeleCamSupport100X:Z

    if-eqz p0, :cond_9c

    const p0, 0xf4240

    return p0

    :cond_9c
    return v2
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 471
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getZoomRatio(I)Ljava/lang/String;
    .registers 5

    .line 1619
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getZoomRatio] zoomValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentCameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mNextSwitchCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSwitchType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1622
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    .line 1623
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentFocalMode()Z

    move-result v0

    const-string v1, "getZoomRation mCurrentZoomRatio = "

    if-eqz v0, :cond_a3

    .line 1624
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "10000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1625
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->is2XBlurCamera(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_64

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 1626
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_64

    .line 1629
    :cond_5f
    const-string p1, "23mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_8a

    .line 1627
    :cond_64
    :goto_64
    const-string p1, "70mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_8a

    .line 1631
    :cond_69
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "15000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1632
    const-string p1, "35mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_8a

    .line 1633
    :cond_7a
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "20000"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 1634
    const-string p1, "50mm"

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    .line 1636
    :cond_8a
    :goto_8a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1637
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p0

    .line 1638
    :cond_a3
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMacroMode:Z

    if-nez v0, :cond_ab

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInPmasterMode:Z

    if-eqz v0, :cond_b9

    :cond_ab
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsTele()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 1639
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p1

    goto/16 :goto_144

    .line 1640
    :cond_b9
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isNeedReCalculateForMacro()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 1642
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->correctZoomValue(I)I

    move-result p1

    goto/16 :goto_144

    .line 1643
    :cond_c5
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isNeedReCalculateForWide()Z

    move-result v0

    if-nez v0, :cond_d1

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToWideCamera()Z

    move-result v0

    if-eqz v0, :cond_107

    :cond_d1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingWideToMainCamera()Z

    move-result v0

    if-nez v0, :cond_107

    .line 1644
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraZoomList:Ljava/util/List;

    div-int/lit16 v2, p1, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_144

    .line 1646
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    .line 1647
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1648
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p0

    .line 1650
    :cond_107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_121

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 1651
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_121

    .line 1652
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingToLong()Z

    move-result v0

    if-eqz v0, :cond_134

    :cond_121
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isSwitchingLongToMain()Z

    move-result v0

    if-nez v0, :cond_134

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result v0

    if-nez v0, :cond_134

    .line 1653
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p1

    goto :goto_144

    .line 1654
    :cond_134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 1655
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->get2XBlurCameraZoom(I)I

    move-result p1

    .line 1658
    :cond_144
    :goto_144
    rem-int/lit16 v0, p1, 0x2710

    const-string v1, "%dx"

    if-nez v0, :cond_177

    .line 1659
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    .line 1660
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getZoomRatio, up, mCurrentZoomRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1661
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p0

    .line 1663
    :cond_177
    rem-int/lit16 v0, p1, 0x3e8

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_196

    add-int/lit16 p1, p1, -0x1f4

    .line 1665
    rem-int/lit16 v0, p1, 0x2710

    if-nez v0, :cond_196

    .line 1666
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p1

    .line 1670
    :cond_196
    div-int/lit16 v0, p1, 0x3e8

    rem-int/lit16 v2, v0, 0x3e8

    if-nez v2, :cond_1af

    .line 1671
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 p1, p1, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p1

    .line 1674
    :cond_1af
    rem-int/lit8 v0, v0, 0xa

    if-lez v0, :cond_1cc

    .line 1676
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

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    goto :goto_1de

    .line 1678
    :cond_1cc
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    div-int/lit16 v2, p1, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    .line 1680
    :goto_1de
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getZoomRatio, down, mCurrentZoomRatio = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",zoomValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1681
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentZoomRatio:Ljava/lang/String;

    return-object p0
.end method

.method abstract graduationViewIsShow()Z
.end method

.method public hideEntryView()V
    .registers 2

    const/4 v0, 0x0

    .line 521
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviewStarted:Z

    .line 522
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    return-void
.end method

.method abstract hideZoomItemView(Z)V
.end method

.method abstract hideZoomWheel(ZZ)V
.end method

.method protected initZoom4Parameters(Landroid/content/res/Resources;)V
    .registers 3

    .line 328
    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_no_zoom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNoZoomItemPadding:I

    .line 329
    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_instant_zoom_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantItemWidth:I

    .line 330
    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_instant_zoom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantItemPadding:I

    .line 331
    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_instant_zoom_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantBottomPadding:I

    .line 332
    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_root_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemExtraPadding:I

    .line 333
    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_zoom_wheel_bottom_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomWheelExtraPadding:I

    .line 334
    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_instant_zoom_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomHeight:I

    .line 335
    sget v0, Lcom/transsion/camera/R$dimen;->new_camera_zoom_item_with:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemWidth:I

    .line 336
    sget v0, Lcom/transsion/camera/R$dimen;->zoom_item_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemPadding:I

    .line 337
    sget v0, Lcom/transsion/camera/R$dimen;->zoom_ui4_normal_zoom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomViewMargin:I

    .line 338
    sget v0, Lcom/transsion/camera/R$dimen;->normal_1_1_preview_margin_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mProOffsetfor11:I

    return-void
.end method

.method protected isBaseCamera(Ljava/lang/String;)Z
    .registers 2

    .line 1189
    const-string p0, "0"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected isIszZoomStatus(Ljava/lang/String;)Z
    .registers 3

    .line 1335
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatReplaceWide:Z

    if-eqz p1, :cond_12

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAsdMode:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method protected isLimitedAIArtMuseumMode()Z
    .registers 1

    .line 1879
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAIArtMuseumMode:Z

    return p0
.end method

.method protected isLimitedAIGCMode()Z
    .registers 1

    .line 1875
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAIGCMode:Z

    return p0
.end method

.method protected isLimitedIntentMode()Z
    .registers 2

    .line 1883
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentPhotoMode:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentVideMode:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method protected isLimitedSlowMotionMode()Z
    .registers 2

    .line 1871
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSlowMotionMode:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSlowMotionZoomLimited:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method protected isLimitedVideoMode()Z
    .registers 2

    .line 1887
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVideoMode:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMovieMode:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSlowMotionMode:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInFunVideoMode:Z

    if-nez v0, :cond_17

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

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

    .line 1895
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInTimeLapseVideoMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInDocumentMode:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInSuperNightMode:Z

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

    .line 1690
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMacroMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 1692
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsMacro()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_1c
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_31

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_macro"

    .line 1693
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
    .registers 3

    .line 1701
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_1c

    :cond_16
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMacroMode:Z

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
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

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 825
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainFrontCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 826
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 827
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentIsSatCamera()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingLongToMain()Z
    .registers 3

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 817
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    .line 818
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 819
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_24
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingMainToWIdeCamera()Z
    .registers 3

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    .line 801
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 802
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 803
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentIsSatCamera()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingToLong()Z
    .registers 3

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    .line 808
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 809
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_16
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    .line 811
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 812
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingToWideCamera()Z
    .registers 3

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    .line 788
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 789
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    .line 790
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method protected isSwitchingWideToMainCamera()Z
    .registers 3

    .line 794
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    .line 795
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 796
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentIsSatCamera()Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_28

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isCameraSwitchingAndNotPause:Z

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method protected isTeleCamera(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_1c

    .line 1183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    .line 1184
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 1185
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method protected isWideCamera(Ljava/lang/String;)Z
    .registers 2

    .line 1193
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 1194
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method abstract loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected modeOrCameraSwitching()Z
    .registers 2

    .line 556
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 8

    .line 2017
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_21

    .line 2019
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    :cond_21
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_353

    const/16 v3, 0x36

    if-eq p1, v1, :cond_328

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2fe

    if-eq p1, v0, :cond_2dd

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2d1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2ce

    const/4 v4, 0x6

    if-eq p1, v4, :cond_2d1

    const/4 v4, 0x7

    if-eq p1, v4, :cond_2ce

    const/16 v4, 0x1f

    if-eq p1, v4, :cond_2c8

    const/16 v4, 0x20

    if-eq p1, v4, :cond_2c5

    const/16 v4, 0x2e

    if-eq p1, v4, :cond_2af

    const/16 v4, 0x2f

    if-eq p1, v4, :cond_27d

    const/16 v4, 0x35

    if-eq p1, v4, :cond_278

    if-eq p1, v3, :cond_2dd

    const/16 v4, 0x4d

    if-eq p1, v4, :cond_275

    const/16 v4, 0x4e

    if-eq p1, v4, :cond_272

    const/16 v4, 0x52

    if-eq p1, v4, :cond_247

    const/16 v4, 0x53

    if-eq p1, v4, :cond_21e

    const/16 v4, 0x55

    if-eq p1, v4, :cond_275

    const/16 v4, 0x56

    if-eq p1, v4, :cond_272

    const/16 v4, 0x5a

    if-eq p1, v4, :cond_1ee

    const/16 v5, 0x5b

    if-eq p1, v5, :cond_1e3

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_35e

    packed-switch p1, :pswitch_data_434

    packed-switch p1, :pswitch_data_44c

    goto/16 :goto_352

    .line 2214
    :pswitch_7c
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsFilterSwitch:Z

    return-void

    .line 2211
    :pswitch_7f
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsFilterSwitch:Z

    return-void

    .line 2060
    :pswitch_82
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 2061
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    .line 2062
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInFragment:Z

    .line 2063
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setLayoutPadding(ZZ)V

    return-void

    .line 2050
    :pswitch_8e
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    .line 2051
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p1, :cond_9a

    .line 2052
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 2054
    :cond_9a
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 2055
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    .line 2056
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInFragment:Z

    .line 2057
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setLayoutPadding(ZZ)V

    return-void

    .line 2117
    :pswitch_a6
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 2118
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2119
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onUp(Landroid/view/MotionEvent;)Z

    return-void

    .line 2366
    :sswitch_af
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 2367
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    .line 2369
    :cond_b8
    invoke-virtual {p0, v5}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onUp(Landroid/view/MotionEvent;)Z

    return-void

    .line 2350
    :sswitch_bc
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentFull:Z

    .line 2351
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentEmpty:Z

    goto :goto_12b

    .line 2123
    :pswitch_c1
    :sswitch_c1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 2124
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    return-void

    .line 2067
    :pswitch_c7
    :sswitch_c7
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 2068
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 2069
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    .line 2071
    :cond_d2
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    return-void

    .line 2108
    :sswitch_d9
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_352

    .line 2109
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    return-void

    .line 2041
    :sswitch_e3
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_352

    .line 2042
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    return-void

    .line 2357
    :sswitch_ed
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    return-void

    .line 2180
    :sswitch_f0
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateVideoRecordStopStatus(Z)V

    .line 2181
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 2182
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_352

    .line 2183
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setStartVideoRecording(Z)V

    return-void

    .line 2271
    :sswitch_101
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    .line 2272
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2273
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onSlipCancel()V

    .line 2274
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p1, :cond_352

    .line 2275
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 2028
    :sswitch_117
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMoreMode:Z

    return-void

    .line 2023
    :sswitch_11a
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMoreMode:Z

    .line 2024
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->cancelShow()V

    .line 2025
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomItemView(Z)V

    return-void

    .line 2394
    :sswitch_123
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz p1, :cond_352

    .line 2395
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    return-void

    .line 2353
    :goto_12b
    :sswitch_12b
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    return-void

    .line 2031
    :sswitch_12e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->showZoomItemView()V

    return-void

    .line 2347
    :sswitch_132
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInMicroPanTilt:Z

    return-void

    .line 2344
    :sswitch_135
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInMicroPanTilt:Z

    return-void

    .line 2206
    :sswitch_138
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz p1, :cond_352

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentVideMode:Z

    if-nez p1, :cond_352

    .line 2207
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCamWhenRecordingEnd()V

    return-void

    .line 2217
    :sswitch_144
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInFragment:Z

    .line 2218
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 2219
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMoreMode:Z

    .line 2220
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    .line 2221
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    .line 2222
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    .line 2223
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    .line 2224
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 2225
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsFilterSwitch:Z

    .line 2226
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    .line 2227
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSizeChanging:Z

    .line 2228
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInMicroPanTilt:Z

    .line 2229
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    .line 2230
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onSlipCancel()V

    .line 2231
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    .line 2232
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2233
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isCameraSwitchingAndNotPause:Z

    .line 2234
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    .line 2235
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSmoothZoomValue:I

    .line 2236
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p1, :cond_17b

    .line 2237
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 2239
    :cond_17b
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setStartVideoRecording(Z)V

    .line 2240
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_189

    .line 2241
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    .line 2243
    :cond_189
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomItemView(Z)V

    .line 2244
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->uninitZoomUI()V

    .line 2245
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateWideToNormalValue(Z)V

    .line 2246
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz p1, :cond_1a0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v0, :cond_1a0

    const/4 v0, -0x1

    .line 2247
    invoke-interface {p1, v1, v0, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 2249
    :cond_1a0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideWideTips()V

    return-void

    .line 2360
    :sswitch_1a4
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 2361
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    if-nez p1, :cond_352

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsQuickRecording:Z

    if-nez p1, :cond_352

    .line 2362
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->showZoomItemView()V

    return-void

    .line 2307
    :sswitch_1b2
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    .line 2308
    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    xor-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2309
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    if-eqz v1, :cond_1c1

    if-ne p1, v3, :cond_1c1

    goto :goto_1c7

    :cond_1c1
    if-eq p1, v0, :cond_1c5

    if-ne p1, v3, :cond_1c7

    .line 2313
    :cond_1c5
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    .line 2316
    :cond_1c7
    :goto_1c7
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateRangeState()V

    .line 2317
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setLayoutPadding(ZZ)V

    .line 2318
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_352

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p0, :cond_352

    .line 2319
    sget-object p0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    return-void

    .line 2338
    :sswitch_1db
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviewStarted:Z

    .line 2339
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 2340
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    return-void

    .line 2133
    :cond_1e3
    :pswitch_1e3
    :sswitch_1e3
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 2134
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsQuickRecording:Z

    .line 2135
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2136
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->showZoomItemView()V

    return-void

    .line 2084
    :cond_1ee
    :pswitch_1ee
    :sswitch_1ee
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    xor-int v0, v1, v1

    .line 2085
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2086
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomUIHidedWhileScaling:Z

    .line 2087
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mGraduationViewSilpping:Z

    const/16 v0, 0xe9

    if-ne p1, v0, :cond_202

    .line 2089
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsQuickRecording:Z

    .line 2090
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomItemView(Z)V

    :cond_202
    if-ne p1, v4, :cond_20e

    .line 2093
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_352

    .line 2094
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    return-void

    .line 2097
    :cond_20e
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result v3

    if-eqz v3, :cond_352

    if-ne p1, v0, :cond_21a

    .line 2099
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    return-void

    .line 2101
    :cond_21a
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    return-void

    .line 2166
    :cond_21e
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 2167
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_229

    .line 2168
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    .line 2170
    :cond_229
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_235

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result p1

    if-eqz p1, :cond_235

    .line 2171
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    .line 2173
    :cond_235
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setStartVideoRecording(Z)V

    .line 2174
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->resetupConverterState(Z)V

    .line 2175
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->sendRecordZoomUIState(Z)V

    .line 2176
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateWideToNormalValue(Z)V

    .line 2177
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setCurrentCameraId()V

    return-void

    .line 2139
    :cond_247
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 2140
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomUIHidedWhileScaling:Z

    .line 2141
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setStartVideoRecording(Z)V

    .line 2142
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->resetupConverterState(Z)V

    .line 2143
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->sendRecordZoomUIState(Z)V

    .line 2144
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateWideToNormalValue(Z)V

    .line 2145
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setCurrentCameraId()V

    .line 2146
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_265

    .line 2147
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    .line 2149
    :cond_265
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_352

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher()Z

    move-result p1

    if-eqz p1, :cond_352

    .line 2150
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    return-void

    .line 2391
    :cond_272
    :pswitch_272
    :sswitch_272
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInFragment:Z

    return-void

    .line 2383
    :cond_275
    :pswitch_275
    :sswitch_275
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInFragment:Z

    return-void

    :cond_278
    if-ne p1, v4, :cond_352

    .line 2286
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    return-void

    .line 2191
    :cond_27d
    :pswitch_27d
    :sswitch_27d
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 2192
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    if-nez v0, :cond_28a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsQuickRecording:Z

    if-nez v0, :cond_28a

    .line 2193
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->showZoomItemView()V

    .line 2195
    :cond_28a
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setStartVideoRecording(Z)V

    .line 2196
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->resetupConverterState(Z)V

    .line 2197
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->sendRecordZoomUIState(Z)V

    .line 2198
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateWideToNormalValue(Z)V

    .line 2199
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setCurrentCameraId()V

    .line 2200
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v0, :cond_352

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInDUalVideoMode:Z

    if-nez v0, :cond_352

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentVideMode:Z

    if-nez v0, :cond_352

    const/16 v0, 0x128

    if-eq p1, v0, :cond_352

    .line 2202
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCamWhenRecordingEnd()V

    return-void

    .line 2157
    :cond_2af
    :pswitch_2af
    :sswitch_2af
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    .line 2158
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsZoomUIHidedWhileScaling:Z

    .line 2159
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setStartVideoRecording(Z)V

    .line 2160
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->resetupConverterState(Z)V

    .line 2161
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->sendRecordZoomUIState(Z)V

    .line 2162
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateWideToNormalValue(Z)V

    .line 2163
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setCurrentCameraId()V

    return-void

    .line 2252
    :cond_2c5
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPausedZoom:Z

    return-void

    .line 2113
    :cond_2c8
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 2114
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    return-void

    .line 2047
    :cond_2ce
    :sswitch_2ce
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSizeChanging:Z

    return-void

    .line 2035
    :cond_2d1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsSizeChanging:Z

    .line 2036
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_352

    .line 2037
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    return-void

    .line 2324
    :cond_2dd
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    if-eqz v1, :cond_2e4

    if-ne p1, v3, :cond_2e4

    goto :goto_2ea

    :cond_2e4
    if-eq p1, v0, :cond_2e8

    if-ne p1, v3, :cond_2ea

    .line 2328
    :cond_2e8
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    .line 2331
    :cond_2ea
    :goto_2ea
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateRangeState()V

    .line 2332
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setLayoutPadding(ZZ)V

    .line 2333
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_352

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p0, :cond_352

    .line 2334
    sget-object p0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    return-void

    .line 2255
    :cond_2fe
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideWideTips()V

    .line 2256
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    .line 2257
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    .line 2258
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    .line 2259
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    .line 2260
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result p1

    if-eqz p1, :cond_312

    .line 2261
    invoke-virtual {p0, v2, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    .line 2263
    :cond_312
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    .line 2264
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2265
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onSlipCancel()V

    .line 2266
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    if-eqz p1, :cond_352

    .line 2267
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 2290
    :cond_328
    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 2291
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    .line 2292
    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    xor-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2293
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    if-eqz v1, :cond_339

    if-ne p1, v3, :cond_339

    goto :goto_33f

    :cond_339
    if-eq p1, v0, :cond_33d

    if-ne p1, v3, :cond_33f

    .line 2297
    :cond_33d
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsModeSwitching:Z

    .line 2300
    :cond_33f
    :goto_33f
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateRangeState()V

    .line 2301
    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setLayoutPadding(ZZ)V

    .line 2302
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_352

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez p0, :cond_352

    .line 2303
    sget-object p0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_352
    :goto_352
    return-void

    .line 2279
    :cond_353
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    .line 2280
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isCameraSwitchingAndNotPause:Z

    .line 2281
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    .line 2282
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideWideTips()V

    return-void

    :sswitch_data_35e
    .sparse-switch
        0x7 -> :sswitch_2ce
        0x8 -> :sswitch_1db
        0x9 -> :sswitch_1b2
        0x1a -> :sswitch_1a4
        0x1c -> :sswitch_144
        0x3b -> :sswitch_138
        0x5d -> :sswitch_2af
        0x5e -> :sswitch_27d
        0x61 -> :sswitch_135
        0x62 -> :sswitch_132
        0x63 -> :sswitch_12e
        0x66 -> :sswitch_275
        0x67 -> :sswitch_272
        0x68 -> :sswitch_275
        0x69 -> :sswitch_275
        0x6a -> :sswitch_275
        0x6b -> :sswitch_275
        0x6c -> :sswitch_135
        0x7b -> :sswitch_12b
        0x80 -> :sswitch_123
        0x89 -> :sswitch_275
        0x8a -> :sswitch_272
        0x8b -> :sswitch_275
        0x90 -> :sswitch_2af
        0x91 -> :sswitch_27d
        0x92 -> :sswitch_11a
        0x9b -> :sswitch_117
        0xa5 -> :sswitch_101
        0xc9 -> :sswitch_f0
        0xd2 -> :sswitch_1ee
        0xd3 -> :sswitch_1e3
        0xd6 -> :sswitch_ed
        0xe9 -> :sswitch_1ee
        0xea -> :sswitch_1e3
        0xed -> :sswitch_1ee
        0xef -> :sswitch_275
        0xf0 -> :sswitch_272
        0xf1 -> :sswitch_275
        0xfb -> :sswitch_e3
        0x101 -> :sswitch_1ee
        0x102 -> :sswitch_1e3
        0x103 -> :sswitch_d9
        0x111 -> :sswitch_c7
        0x112 -> :sswitch_c1
        0x119 -> :sswitch_bc
        0x11a -> :sswitch_ed
        0x121 -> :sswitch_1ee
        0x122 -> :sswitch_1ee
        0x128 -> :sswitch_27d
        0x137 -> :sswitch_af
        0x18b -> :sswitch_1ee
        0x18c -> :sswitch_1e3
        0x18e -> :sswitch_d9
    .end sparse-switch

    :pswitch_data_434
    .packed-switch 0xb
        :pswitch_1ee
        :pswitch_c1
        :pswitch_c7
        :pswitch_a6
        :pswitch_2af
        :pswitch_27d
        :pswitch_275
        :pswitch_272
        :pswitch_8e
        :pswitch_82
    .end packed-switch

    :pswitch_data_44c
    .packed-switch 0x24
        :pswitch_1ee
        :pswitch_1e3
        :pswitch_7f
        :pswitch_7c
        :pswitch_1ee
        :pswitch_1e3
    .end packed-switch
.end method

.method protected notifyZoomAction(I)V
    .registers 4

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/16 v0, 0x17

    .line 602
    const-string v1, "key_zoom_state"

    if-eq p1, v0, :cond_26

    const/16 v0, 0x19

    if-ne p1, v0, :cond_10

    goto :goto_26

    :cond_10
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    .line 605
    :cond_1a
    :goto_1a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_stop"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 603
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_begin"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 1606
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onConfigurationChanged()V

    const/4 v0, 0x0

    .line 1607
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 1608
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 1609
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCameraSwitching:Z

    .line 1610
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->enableZoomItem(Z)V

    :cond_14
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

    .line 515
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 516
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->doOrientationChanged(I)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    .line 611
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_111

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    if-nez v0, :cond_111

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v0, :cond_111

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mClickZoomSupport:Z

    if-nez v0, :cond_111

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->disableZoomBySuperAntiVideo()Z

    move-result v0

    if-nez v0, :cond_111

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isDVHintShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_111

    .line 620
    :cond_21
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v2, 0x2

    if-eqz v0, :cond_2b

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2b

    if-ne v0, v2, :cond_37

    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 623
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-ne v0, v2, :cond_3a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz v0, :cond_3a

    .line 624
    :cond_37
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    return v1

    .line 627
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v2, 0x17

    const/4 v3, -0x1

    const/16 v4, 0xb

    if-eq v0, v4, :cond_5b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v0, :cond_5b

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v3, v5}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleBegin()V

    .line 631
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 634
    :cond_5b
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    if-nez v0, :cond_ee

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    if-eqz v0, :cond_65

    goto/16 :goto_ee

    .line 640
    :cond_65
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaling:Z

    if-nez v0, :cond_73

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-eqz v0, :cond_73

    .line 641
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleBegin()V

    .line 642
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 645
    :cond_73
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScale() called with: isDVHintShowing() = ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isDVHintShowing()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 647
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleFactor:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_a5

    .line 649
    iput v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomDirect:I

    goto :goto_ab

    :cond_a5
    cmpg-float v0, v0, v2

    if-gez v0, :cond_ab

    .line 651
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomDirect:I

    .line 654
    :cond_ab
    :goto_ab
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomDirect:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSwitchType(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 655
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextCameraIdByType()V

    .line 656
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraChangeDuringScale:Z

    if-nez v0, :cond_be

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    if-eqz v0, :cond_c5

    :cond_be
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_c5

    .line 657
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->resetStartScale(Landroid/view/ScaleGestureDetector;)V

    .line 660
    :cond_c5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getTargetZoomValue()F

    move-result p1

    .line 661
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->ratioToClosestValue(F)I

    move-result p1

    .line 662
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_db

    .line 663
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 664
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraByType(I)V

    .line 666
    :cond_db
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 667
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    .line 668
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomDirect:I

    if-eqz p1, :cond_ed

    .line 669
    invoke-virtual {p0, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomValueToUI(Z)V

    .line 670
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    :cond_ed
    return v5

    .line 635
    :cond_ee
    :goto_ee
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScale] wrong status mRecordStopZoom:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeDisableTouchZoom:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 612
    :cond_111
    :goto_111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScale] wrong status mOutofBound:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsModeOrCameraSwitching:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mClickZoomSupport:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mClickZoomSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleEnd()V

    .line 617
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    return v1
.end method

.method abstract onScaleBegin()V
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 8

    .line 560
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    if-nez v0, :cond_81

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v0

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mClickZoomSupport:Z

    if-nez v0, :cond_81

    .line 562
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isDVHintShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_81

    .line 570
    :cond_21
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2c

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2c

    if-ne v0, v2, :cond_38

    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 573
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-ne v0, v2, :cond_39

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz v0, :cond_39

    :cond_38
    return v1

    :cond_39
    const/4 v0, 0x1

    .line 576
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    .line 577
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v2, :cond_4d

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v2, :cond_4d

    .line 578
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-interface {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 581
    :cond_4d
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomDirect:I

    .line 583
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v1, :cond_5c

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v2, :cond_5c

    .line 584
    sget-object v2, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 586
    :cond_5c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_69

    .line 588
    sget v1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_6f

    .line 590
    :cond_69
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 592
    :goto_6f
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->resetStartScale(Landroid/view/ScaleGestureDetector;)V

    .line 593
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartZoomValue:I

    .line 594
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleBegin()V

    const/16 p1, 0x17

    .line 595
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 596
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleStart:Z

    return v0

    .line 563
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScaleBegin] wrong status mOutofBound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsModeOrCameraSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRecordStopZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeDisableTouchZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 568
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method abstract onScaleEnd()V
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 9

    .line 678
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_b

    if-ne v0, v2, :cond_17

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 681
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-ne v0, v2, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInProfessionMode:Z

    if-eqz v0, :cond_18

    :cond_17
    return v3

    .line 684
    :cond_18
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    .line 685
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    const/4 v4, 0x1

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVlogMode:Z

    if-nez v0, :cond_2a

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface {v0, v4, v5, v6}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 688
    :cond_2a
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    const/16 v5, 0x18

    if-nez v0, :cond_a4

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v0

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    if-nez v0, :cond_a4

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mClickZoomSupport:Z

    if-nez v0, :cond_a4

    .line 690
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->isDVHintShowing()Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_a4

    .line 702
    :cond_4d
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    if-eqz v0, :cond_58

    if-eq v0, v1, :cond_58

    if-eq v0, v2, :cond_58

    .line 705
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    return v3

    .line 709
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_65

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v1, :cond_65

    .line 710
    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 712
    :cond_65
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomDirect:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSwitchType(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    .line 713
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextCameraIdByType()V

    .line 714
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-nez v0, :cond_89

    .line 715
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraChangeDuringScale:Z

    if-nez v0, :cond_7c

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    if-eqz v0, :cond_7f

    .line 716
    :cond_7c
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->resetStartScale(Landroid/view/ScaleGestureDetector;)V

    .line 718
    :cond_7f
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateNextSwitchCamera(I)V

    .line 719
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSwitchType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraByType(I)V

    .line 721
    :cond_89
    invoke-virtual {p0, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 722
    invoke-virtual {p0, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setSeekBarEnable(Z)V

    .line 723
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleEnd()V

    .line 724
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 725
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleStart:Z

    return v4

    .line 691
    :cond_a4
    :goto_a4
    invoke-virtual {p0, v5}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->notifyZoomAction(I)V

    .line 692
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->onScaleEnd()V

    .line 693
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mScaleBegin:Z

    .line 694
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScale] wrong status mOutofBound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOutofBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsModeOrCameraSwitching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->modeOrCameraSwitching()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRecordStopZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mRecordStopZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mClickZoomSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mClickZoomSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mModeDisableTouchZoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeDisableTouchZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 700
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method abstract onSlipCancel()V
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1395
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    return-void
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

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 2002
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method abstract setCurrentCameraId()V
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 7

    .line 376
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_32

    .line 382
    const-string v1, "mode_entry_key"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 387
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMainBackCameraId:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMacroCameraId:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFrontWideCameraId:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mVideoCameraId:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_video_preisp"

    .line 394
    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 393
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/CameraRepository;->getLongFocusIdOrFakeId(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackBlurCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBlurCameraId:Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBackHighCameraId:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFrontHighCameraId:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFoldFrontCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFoldFrontCameraId:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviousCameraId:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    .line 404
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAsdMode:Z

    if-eqz v1, :cond_c9

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatReplaceWide:Z

    if-eqz v1, :cond_c9

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 405
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueSatReplacedToMain:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mThreshholdValue:I

    goto :goto_cd

    .line 407
    :cond_c9
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mValueWideToMain:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mThreshholdValue:I

    .line 409
    :goto_cd
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviousCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraChangeDuringScale:Z

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDeviceSetting], camera id change:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviousCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 412
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 414
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviousValue:I

    if-nez p1, :cond_110

    .line 416
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    goto :goto_116

    .line 418
    :cond_110
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    .line 421
    :goto_116
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStartZoomValue:I

    .line 422
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mLastCurrentValue:I

    .line 423
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_165

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mVideoCameraId:Ljava/lang/String;

    .line 424
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_165

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    .line 425
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_165

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 426
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_165

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    .line 427
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14f

    goto :goto_165

    .line 435
    :cond_14f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    if-eqz p1, :cond_182

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_182

    .line 436
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInMacroMode:Z

    if-nez p1, :cond_182

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto :goto_182

    .line 428
    :cond_165
    :goto_165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 429
    :cond_169
    :goto_169
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_182

    .line 430
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 431
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x5

    if-ne v3, v4, :cond_169

    .line 432
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_169

    .line 442
    :cond_182
    :goto_182
    invoke-static {v0}, Lcom/transsion/camera/utils/StringUtils;->stringToIntList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_20c

    .line 444
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_20c

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_20c

    .line 445
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinValue:I

    .line 446
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMaxValue:I

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_208

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "1"

    .line 448
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_208

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mVideoCameraId:Ljava/lang/String;

    .line 449
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_208

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    .line 450
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_208

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 451
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_208

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBackHighCameraId:Ljava/lang/String;

    .line 452
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_208

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFrontHighCameraId:Ljava/lang/String;

    .line 453
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_208

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mFoldFrontCameraId:Ljava/lang/String;

    .line 454
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20c

    .line 455
    :cond_208
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mMinValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNormalZoomMinValue:I

    .line 458
    :cond_20c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "key_camera_click_zoom"

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_217

    goto :goto_218

    :cond_217
    move v1, v0

    :goto_218
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mClickZoomSupport:Z

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

    .line 362
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTopPadding:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_14

    .line 363
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTopPadding:I

    .line 365
    :cond_14
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBottomPadding:I

    if-ne p1, p2, :cond_20

    .line 366
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBottomPadding:I

    :cond_20
    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .registers 2

    .line 493
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 494
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    return-void
.end method

.method abstract setOrientation(IZ)V
.end method

.method public setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
    .registers 2

    .line 477
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method abstract setSeekBarEnable(Z)V
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 483
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method abstract setStartVideoRecording(Z)V
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method protected setValueToSetting(IZ)V
    .registers 12

    .line 1493
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1494
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1495
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_13

    .line 1496
    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1498
    :cond_13
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    if-nez v2, :cond_22

    goto :goto_45

    .line 1500
    :cond_22
    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVideoStartRecording:Z

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v2

    if-lt p1, v2, :cond_49

    .line 1501
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v4, "key_video_preisp"

    .line 1502
    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1501
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->getLongFocusIdOrFakeId(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    goto :goto_49

    .line 1499
    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    .line 1504
    :cond_49
    :goto_49
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomValueToZoomItem(ILjava/lang/String;ZZZ)V

    .line 1505
    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->currentCameraIsSat()Z

    move-result p0

    if-eqz p0, :cond_68

    .line 1506
    sget-object p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ge v4, p0, :cond_65

    .line 1507
    invoke-direct {v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->showWideTips()V

    goto :goto_68

    .line 1509
    :cond_65
    invoke-direct {v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideWideTips()V

    .line 1512
    :cond_68
    :goto_68
    iget-object p0, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[setValueToSetting] : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",valueBeforeSetValue : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mCurrentCameraId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",mNextSwitchCamera : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected setValueToSettingInSat(IFZ)V
    .registers 5

    .line 1409
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->sateMatchSatToWide(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 1410
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    const/4 p1, 0x5

    .line 1411
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    return-void

    .line 1412
    :cond_15
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->stateMatchWideToSat(I)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 1413
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    const/4 p1, 0x6

    .line 1414
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->switchCameraBy(I)Z

    return-void

    .line 1416
    :cond_23
    sget-object p2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge p1, p2, :cond_2f

    .line 1417
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->showWideTips()V

    goto :goto_32

    .line 1419
    :cond_2f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideWideTips()V

    .line 1421
    :goto_32
    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->setValueToSetting(IZ)V

    return-void
.end method

.method public setZoomInfoList(Ljava/util/List;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ZoomInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1749
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    if-eqz p1, :cond_10

    .line 1753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    .line 1755
    :cond_10
    iput p3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    const/4 p1, 0x1

    .line 1756
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->updateZoomItemByInfos(ZLjava/lang/String;)V

    return-void
.end method

.method public setZoomOffsetPadding(I)V
    .registers 2

    .line 1744
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOffsetPadding:I

    return-void
.end method

.method public setZoomUIState(Z)V
    .registers 2

    .line 1403
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_7

    .line 1404
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onZoomUIStateChanged(Z)V

    :cond_7
    return-void
.end method

.method abstract setZoomViewCanShow(Z)V
.end method

.method public setupEntryView()V
    .registers 1

    return-void
.end method

.method abstract showZoomItemView()V
.end method

.method abstract showZoomWheel(ZZ)V
.end method

.method protected switchCameraBy(I)Z
    .registers 6

    .line 1348
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1352
    :cond_8
    const-string v2, "off"

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_94

    return v1

    .line 1354
    :pswitch_f
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1355
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1356
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideWideTips()V

    return v3

    .line 1377
    :pswitch_1b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1378
    const-string p1, "2x_dual_exchange"

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_49

    .line 1379
    :cond_2b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_44

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    .line 1380
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_44

    .line 1383
    :cond_40
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_49

    .line 1381
    :cond_44
    :goto_44
    const-string p1, "tele_exchange"

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1385
    :goto_49
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1386
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideWideTips()V

    return v3

    .line 1370
    :pswitch_52
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 1371
    const-string p1, "on"

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1373
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1374
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->showWideTips()V

    return v3

    .line 1360
    :pswitch_6a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBlurCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 1361
    const-string p1, "1x_dual_exchange"

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_8b

    .line 1362
    :cond_7a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 1363
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1365
    :cond_8b
    :goto_8b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1366
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideWideTips()V

    return v3

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_52
        :pswitch_1b
        :pswitch_6a
        :pswitch_52
        :pswitch_f
    .end packed-switch
.end method

.method public unInit()V
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 529
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentFull:Z

    .line 533
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsVlogSegmentEmpty:Z

    .line 534
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mbSegmentDragging:Z

    .line 535
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->unregisterZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    .line 536
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->graduationViewIsShow()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    .line 537
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->hideZoomWheel(ZZ)V

    .line 539
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_47

    .line 540
    const-string v1, "mode_entry_key"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 545
    :cond_47
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method abstract uninitZoomUI()V
.end method

.method public updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V
    .registers 5

    .line 1707
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModeConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1708
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mModeSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentPhotoMode:Z

    .line 1709
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mModeSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInIntentVideMode:Z

    .line 1710
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mModeSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInVideoMode:Z

    .line 1711
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mModeSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInAIGCMode:Z

    .line 1712
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mModeSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mAIArtMuseumMode:Z

    .line 1713
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mModeSpec:Lcom/transsion/camera/app/common/ModeSettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mIsInFlashSnapMode:Z

    .line 1714
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    if-eqz v0, :cond_71

    .line 1715
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1717
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    if-eqz v0, :cond_78

    .line 1718
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1721
    :cond_78
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mInstantZoomList:Ljava/util/List;

    if-eqz v0, :cond_81

    .line 1722
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mInstantZoomList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1725
    :cond_81
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mZoomInfoList:Ljava/util/List;

    if-eqz v0, :cond_8a

    .line 1726
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1728
    :cond_8a
    iget p1, p1, Lcom/transsion/camera/app/common/ModeConfig;->mZoomItemType:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    .line 1729
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoOn:Z

    if-eqz p1, :cond_ac

    const/4 p1, 0x3

    .line 1730
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mZoomItemType:I

    .line 1731
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntivideoSupportWide:Z

    if-nez p1, :cond_9c

    .line 1732
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeWideInfo()V

    .line 1734
    :cond_9c
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSuperAntiVideoRestrictionType:I

    if-nez p1, :cond_a3

    .line 1735
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeMainItem()V

    .line 1737
    :cond_a3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeMainCropItem()V

    .line 1738
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeTeleItem()V

    .line 1739
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->removeZoomInfo()V

    :cond_ac
    return-void
.end method

.method protected updateNextSwitchCamera(I)V
    .registers 3

    packed-switch p1, :pswitch_data_b6

    goto/16 :goto_b4

    .line 1428
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 1429
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mSatCameraId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 1449
    :pswitch_14
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBlurCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1450
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 1451
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 1453
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    if-eqz p1, :cond_4e

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_video_preisp"

    .line 1454
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 1455
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreIspFakeTeleId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 1456
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    if-eqz p1, :cond_5f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 1457
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mTeleCameraId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 1459
    :cond_5f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 1460
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 1444
    :pswitch_76
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 1445
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mWideCameraId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 1434
    :pswitch_85
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 1435
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBlurCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 1436
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mBlurCameraId:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    return-void

    .line 1438
    :cond_9e
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b4

    .line 1439
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mNextSwitchCamera:Ljava/lang/String;

    :cond_b4
    :goto_b4
    return-void

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_85
        :pswitch_76
        :pswitch_14
        :pswitch_85
        :pswitch_76
        :pswitch_5
    .end packed-switch
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 504
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI4;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method abstract updateProgressByZoom()V
.end method

.method abstract updateRangeState()V
.end method

.method abstract updateVideoRecordStopStatus(Z)V
.end method

.method protected updateZoomItemByInfos(ZLjava/lang/String;)V
    .registers 3

    return-void
.end method

.method abstract updateZoomValueToUI(Z)V
.end method

.method abstract updateZoomValueToZoomItem(ILjava/lang/String;ZZZ)V
.end method
