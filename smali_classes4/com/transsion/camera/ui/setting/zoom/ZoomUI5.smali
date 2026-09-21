.class public Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;
.implements Lcom/transsion/camera/app/common/IPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ViewState;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;,
        Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;
    }
.end annotation


# static fields
.field private static final DEFAULT_ZOOM_RATIO:I

.field private static final DEFAULT_ZOOM_VALUE:Ljava/lang/String;

.field private static final HIDE_TICK_VIEW_DELAYED_MILLS:J = 0xbb8L

.field private static final KEY_PREVIEW_STATE:Ljava/lang/String; = "key_preview_state"

.field private static final MSG_HIDE_TICK_VIEW:I = 0x66

.field private static final MSG_SHOW_FOCAL_LENGTH_BAR:I = 0x68

.field private static final MSG_SHOW_TICK_VIEW:I = 0x67

.field private static final MSG_SHOW_ZOOM_BAR:I = 0x65

.field private static final SHOW_ZOOM_VIEW_DELAYED_MILLS:J = 0x64L

.field private static final SWIPE_DISTANCE_THRESHOLD:I = 0x14

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final UI_FLAG_CELEBRITY_SCENE:I = 0x4000

.field private static final UI_FLAG_CONFLICT_UI:I = 0x2

.field private static final UI_FLAG_CONTINUOUS_SHOT:I = 0x8

.field private static final UI_FLAG_FILTER_UI:I = 0x2000

.field private static final UI_FLAG_IMAGE_STYLE:I = 0x8000

.field private static final UI_FLAG_MORE_MODE:I = 0x20000

.field private static final UI_FLAG_POP_SETTING_VIEW:I = 0x200

.field private static final UI_FLAG_POP_UP_WINDOW:I = 0x4

.field private static final UI_FLAG_PORTRAIT_SPOT:I = 0x40000

.field private static final UI_FLAG_PRO_EXPOSURE_TIME_CAPTURE:I = 0x400

.field private static final UI_FLAG_QUICK_VIDEO_RECORDING:I = 0x40

.field private static final UI_FLAG_RECORDING:I = 0x1000

.field private static final UI_FLAG_SELF_TIMER_CAPTURE:I = 0x20

.field private static final UI_FLAG_TIME_LAPSE_WHEEL:I = 0x100

.field private static final UI_FLAG_VLOG_SEGMENT_FULL:I = 0x10

.field private static final UI_FLAG_VLOG_TEMPLATE:I = 0x10000

.field private static final UI_FLAG_ZOOM_SCALE:I = 0x80


# instance fields
.field private mApplyDefaultConfig:Z

.field private mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mConflictUIShowingFlags:I

.field private mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

.field private volatile mCurrentRatio:I

.field private mDefaultViewState:I

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

.field private mFocalLengthBase:F

.field private mInFragment:Z

.field private mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

.field private mInstantBottomPadding:I

.field private mInstantZoomHeight:I

.field private mIsEnable:Z

.field private mIsFocalLengthZoomBarScrolling:Z

.field private mIsModeSwitching:Z

.field private mIsModeTickRingHasMarginOffset:Z

.field private mIsOverlayGuideShow:Z

.field private mIsPaused:Z

.field private mIsRingScreenLightOn:Z

.field private mIsScaling:Z

.field private mIsShoulderButtonSwiped:Z

.field private mIsShowFromShoulderButton:Z

.field private mIsTickRingScrolling:Z

.field private mIsVideoRecording:Z

.field private mIsWideCameraHintShowing:Z

.field private mLimitedMaxZoomRatio:I

.field private mLimitedMinZoomRatio:I

.field private final mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

.field private mMarginToBottomArea:I

.field private mMaxZoomRatio:I

.field private mMinZoomRatio:I

.field private mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mNeedResetScaleValues:Z

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mScaleFactor:F

.field private mScaleInitRatio:I

.field private mScaleRatioHintHalfHeight:I

.field private mScaleRatioHintTextHalfSize:I

.field private mScaleRatioHintTopMarginToFullPreview:I

.field private mScaleRatioHintTopMarginToPreview:I

.field private mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTickRingBottomMargin:I

.field private mTickRingBottomMargin1_1:I

.field private mTickRingListener:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;

.field private mTotalSwipeDistance:I

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

.field private mViewState:I

.field private mWideCameraHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

.field private mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

.field private mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

.field private mZoomPointBarListener:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

.field private mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

.field private mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

.field private mZoomRootLayout:Landroid/view/ViewGroup;

.field private mZoomRootView:Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

.field private mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;


# direct methods
.method public static synthetic $r8$lambda$GmZwWU2UHF75C53EqATZQcMsFnk(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_UPG5iDYVi-bfJoEfp3IcRPw7A(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->lambda$doCreateEntryView$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VG16JUI5zNd9xFTA6SifiB2Lj-Q(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->lambda$new$2(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkajA4TMTFTVKVpJ9PS8VrO9NJY(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->lambda$new$3(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qZkTFoE9u1R0PAleDDoE1a1BIro(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateZoomConfig()V

    return-void
.end method

.method public static synthetic $r8$lambda$xEYnXPm5TUcRXNdrTK4ztNpBF6U(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->lambda$new$1(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocalLengthBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInFragment(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstantBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnable(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFocalLengthZoomBarScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsFocalLengthZoomBarScrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeSwitching(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPaused(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsShoulderButtonSwiped:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsTickRingScrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitedMaxZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mLimitedMaxZoomRatio:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitedMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mLimitedMinZoomRatio:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMaxZoomRatio:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinZoomRatio(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMinZoomRatio:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalSwipeDistance(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTotalSwipeDistance:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomPointBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomRootView(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootView:Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFocalLengthZoomBarScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsFocalLengthZoomBarScrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScaling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShoulderButtonSwiped(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsShoulderButtonSwiped:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShowFromShoulderButton(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsShowFromShoulderButton:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTickRingScrolling(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsTickRingScrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTotalSwipeDistance(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTotalSwipeDistance:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddConflictUIFlag(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearConflictUIFlag(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoOnConflictUIChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->doOnConflictUIChanged(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoOnZoomRatioChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->doOnZoomRatioChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideTickRingDelayed(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideTickRingDelayed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideZoomRatioHint(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideZoomRatioHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misInstantZoomSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isInstantZoomSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misZoomTypeSupported(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isZoomTypeSupported(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyZoomAction(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformOnMainThread(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->performOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOrientation(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setOrientation(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFocalLengthBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showFocalLengthBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPointBar(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showPointBar()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showTickRing()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowZoomRatioHint(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showZoomRatioHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToViewState(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateZoomConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_ZOOM_RATIO()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->DEFAULT_ZOOM_RATIO:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 102
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ZoomUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 109
    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_1X:I

    sput v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->DEFAULT_ZOOM_RATIO:I

    .line 135
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->DEFAULT_ZOOM_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 218
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 155
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    .line 156
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    .line 157
    sget v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->DEFAULT_ZOOM_RATIO:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMaxZoomRatio:I

    .line 158
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMinZoomRatio:I

    .line 159
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mLimitedMinZoomRatio:I

    .line 160
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mLimitedMaxZoomRatio:I

    .line 170
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleInitRatio:I

    const/4 v1, 0x0

    .line 172
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTotalSwipeDistance:I

    .line 173
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    .line 175
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInFragment:Z

    .line 176
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    .line 177
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    .line 178
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsTickRingScrolling:Z

    .line 179
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsFocalLengthZoomBarScrolling:Z

    .line 180
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsOverlayGuideShow:Z

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsEnable:Z

    .line 186
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsPaused:Z

    .line 188
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsShowFromShoulderButton:Z

    .line 189
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsShoulderButtonSwiped:Z

    const v0, 0x41baa3d7    # 23.33f

    .line 191
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBase:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 192
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleFactor:F

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 211
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Lcom/transsion/camera/ui/setting/zoom/ZoomUI5-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 271
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 616
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 876
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    .line 951
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBarListener:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

    .line 972
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$3;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTickRingListener:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;

    .line 1211
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$4;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    .line 219
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Lcom/transsion/camera/ui/setting/zoom/ZoomUI5-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    .line 220
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    .line 221
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->initResources()V

    .line 222
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getBaseFocalLength()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBase:F

    .line 223
    new-instance p1, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$ZoomUIController;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Landroid/os/Handler;)V

    invoke-direct {p1, v0}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;-><init>(Lcom/transsion/camera/ui/setting/ZoomReceiverManager$IZoomReceiverListener;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method private addConflictUIFlag(I)V
    .registers 3

    .line 1541
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    .line 1542
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1543
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1544
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, -0x1

    .line 1545
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    return-void
.end method

.method private clearConflictUIFlag(I)V
    .registers 4

    .line 1549
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    and-int v1, v0, p1

    if-eqz v1, :cond_f

    not-int p1, p1

    and-int/2addr p1, v0

    .line 1550
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    .line 1551
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    :cond_f
    return-void
.end method

.method private doOnConflictUIChanged(Ljava/lang/String;)V
    .registers 5

    .line 1869
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_11e

    goto/16 :goto_10d

    :sswitch_e
    const-string v0, "value_video_portrait_spot_panel_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_10d

    :cond_18
    const/16 v2, 0x13

    goto/16 :goto_10d

    :sswitch_1c
    const-string v0, "value_pro_seek_ui_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto/16 :goto_10d

    :cond_26
    const/16 v2, 0x12

    goto/16 :goto_10d

    :sswitch_2a
    const-string v0, "value_pro_seek_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto/16 :goto_10d

    :cond_34
    const/16 v2, 0x11

    goto/16 :goto_10d

    :sswitch_38
    const-string v0, "value_long_exposure_ui_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto/16 :goto_10d

    :cond_42
    const/16 v2, 0x10

    goto/16 :goto_10d

    :sswitch_46
    const-string v0, "value_timelapse_setting_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_10d

    :cond_50
    const/16 v2, 0xf

    goto/16 :goto_10d

    :sswitch_54
    const-string v0, "value_pro_setting_bar_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5e

    goto/16 :goto_10d

    :cond_5e
    const/16 v2, 0xe

    goto/16 :goto_10d

    :sswitch_62
    const-string v0, "value_ai_art_museum_ui_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto/16 :goto_10d

    :cond_6c
    const/16 v2, 0xd

    goto/16 :goto_10d

    :sswitch_70
    const-string v0, "value_timelapse_setting_ui_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto/16 :goto_10d

    :cond_7a
    const/16 v2, 0xc

    goto/16 :goto_10d

    :sswitch_7e
    const-string v0, "value_ai_art_museum_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_88

    goto/16 :goto_10d

    :cond_88
    const/16 v2, 0xb

    goto/16 :goto_10d

    :sswitch_8c
    const-string v0, "value_video_portrait_spot_panel_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    goto/16 :goto_10d

    :cond_96
    const/16 v2, 0xa

    goto/16 :goto_10d

    :sswitch_9a
    const-string v0, "value_facebeauty_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    goto/16 :goto_10d

    :cond_a4
    const/16 v2, 0x9

    goto/16 :goto_10d

    :sswitch_a8
    const-string v0, "value_aigc_effect_ui_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b2

    goto/16 :goto_10d

    :cond_b2
    const/16 v2, 0x8

    goto/16 :goto_10d

    :sswitch_b6
    const-string v0, "value_facebeauty_ui_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bf

    goto :goto_10d

    :cond_bf
    const/4 v2, 0x7

    goto :goto_10d

    :sswitch_c1
    const-string v0, "value_long_exposure_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ca

    goto :goto_10d

    :cond_ca
    const/4 v2, 0x6

    goto :goto_10d

    :sswitch_cc
    const-string v0, "value_videoportrait_bar_show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d5

    goto :goto_10d

    :cond_d5
    const/4 v2, 0x5

    goto :goto_10d

    :sswitch_d7
    const-string v0, "value_videoportrait_bar_hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e0

    goto :goto_10d

    :cond_e0
    const/4 v2, 0x4

    goto :goto_10d

    :sswitch_e2
    const-string v0, "value_stblur_ui_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_eb

    goto :goto_10d

    :cond_eb
    const/4 v2, 0x3

    goto :goto_10d

    :sswitch_ed
    const-string v0, "value_stblur_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f6

    goto :goto_10d

    :cond_f6
    move v2, v1

    goto :goto_10d

    :sswitch_f8
    const-string v0, "value_dv_video_mode_bottom_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_101

    goto :goto_10d

    :cond_101
    const/4 v2, 0x1

    goto :goto_10d

    :sswitch_103
    const-string v0, "value_aigc_effect_ui_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10c

    goto :goto_10d

    :cond_10c
    const/4 v2, 0x0

    :goto_10d
    packed-switch v2, :pswitch_data_170

    return-void

    .line 1883
    :pswitch_111
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideInstantBarImmediately()V

    return-void

    .line 1894
    :pswitch_115
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1880
    :pswitch_119
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    nop

    :sswitch_data_11e
    .sparse-switch
        -0x7b2286b7 -> :sswitch_103
        -0x68523a71 -> :sswitch_f8
        -0x4bdae93f -> :sswitch_ed
        -0x2f823f33 -> :sswitch_e2
        -0x24caae7b -> :sswitch_d7
        -0x24c5b0c0 -> :sswitch_cc
        0x3750687 -> :sswitch_c1
        0x6a3b3dc -> :sswitch_b6
        0x16d1af45 -> :sswitch_a8
        0x18fd05d2 -> :sswitch_9a
        0x276804c9 -> :sswitch_8c
        0x2baa12c2 -> :sswitch_7e
        0x47a78cc0 -> :sswitch_70
        0x499844ec -> :sswitch_62
        0x5ae677af -> :sswitch_54
        0x6568806e -> :sswitch_46
        0x6b2bc9c7 -> :sswitch_38
        0x6f623443 -> :sswitch_2a
        0x7ce4538b -> :sswitch_1c
        0x7d246345 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_115
        :pswitch_115
        :pswitch_119
        :pswitch_119
        :pswitch_115
        :pswitch_115
        :pswitch_119
        :pswitch_115
        :pswitch_119
        :pswitch_115
        :pswitch_115
        :pswitch_111
        :pswitch_119
        :pswitch_115
        :pswitch_119
        :pswitch_115
        :pswitch_119
    .end packed-switch
.end method

.method private doOnScaleEnd()Z
    .registers 6

    const/16 v0, 0x8

    .line 1174
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isZoomTypeSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1175
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onScaleEnd, not support"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1178
    :cond_11
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    if-nez v0, :cond_1d

    .line 1179
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onScaleEnd, not scaling"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1182
    :cond_1d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    .line 1183
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_38

    .line 1185
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1187
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_45

    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    if-nez v3, :cond_45

    .line 1188
    sget-object v3, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_45
    const/16 v0, 0x18

    .line 1190
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    const/16 v0, 0x193

    .line 1191
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    const/16 v0, 0x80

    .line 1192
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1193
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideZoomRatioHint()V

    .line 1194
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    int-to-float p0, p0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p0, v3

    sget v3, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v3, v3

    div-float/2addr p0, v3

    .line 1196
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    .line 1194
    invoke-virtual {v0, v2, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return v1
.end method

.method private doOnZoomRatioChanged(I)V
    .registers 5

    .line 1496
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMinZoomRatio:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMaxZoomRatio:I

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result p1

    .line 1497
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsPaused:Z

    if-eqz v0, :cond_13

    .line 1498
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doOnZoomRatioChanged, return for paused"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1500
    :cond_13
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnZoomRatioChanged, zoomRatio : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1501
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    .line 1502
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_36

    .line 1503
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1505
    :cond_36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateTickRingLayerType()V

    .line 1506
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateWideCameraHint()V

    return-void
.end method

.method private enableViewTalkback(Landroid/view/View;Z)V
    .registers 3

    if-eqz p1, :cond_19

    .line 832
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_19

    :cond_d
    if-eqz p2, :cond_14

    const/4 p0, 0x1

    .line 837
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void

    :cond_14
    const/4 p0, 0x4

    .line 839
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void

    .line 833
    :cond_19
    :goto_19
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[enableViewTalkback] view is null or talkback is not enabled"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private ensureRatioHintText()V
    .registers 4

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    if-nez v0, :cond_26

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->zoom_ratio_hint_layout:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/R$id;->zoom_ratio_hint_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    .line 653
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->setOrientation(IZ)V

    .line 654
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateScaleRatioHintLayout()V

    :cond_26
    return-void
.end method

.method private ensureWideCameraHintInfo()V
    .registers 5

    .line 1488
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mWideCameraHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-nez v0, :cond_1e

    .line 1489
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mWideCameraHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 1490
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$string;->open_wide_camera_tip:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1491
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mWideCameraHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    :cond_1e
    return-void
.end method

.method private getScaleRatio()I
    .registers 4

    .line 1158
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    if-eqz v0, :cond_12

    .line 1159
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;->getLensType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    .line 1160
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleFactor:F

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleInitRatio:I

    :goto_f
    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_18

    .line 1161
    :cond_12
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleFactor:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleInitRatio:I

    goto :goto_f

    :goto_18
    float-to-int v0, v0

    .line 1162
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mLimitedMinZoomRatio:I

    goto :goto_26

    :cond_24
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMinZoomRatio:I

    .line 1163
    :goto_26
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomRangeLimited()Z

    move-result v2

    if-eqz v2, :cond_31

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mLimitedMaxZoomRatio:I

    goto :goto_33

    :cond_31
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMaxZoomRatio:I

    .line 1164
    :goto_33
    invoke-static {v0, v1, p0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p0

    return p0
.end method

.method private hideFocalLengthBar()V
    .registers 2

    const/4 v0, 0x1

    .line 501
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideFocalLengthBar(Z)V

    return-void
.end method

.method private hideFocalLengthBar(Z)V
    .registers 4

    .line 505
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    return-void

    .line 508
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->hide(Z)V

    const/4 p1, -0x1

    .line 510
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateViewState(I)V

    return-void
.end method

.method private hideInstantBar()V
    .registers 2

    const/4 v0, 0x1

    .line 697
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideInstantBar(Z)V

    return-void
.end method

.method private hideInstantBar(Z)V
    .registers 5

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_48

    .line 687
    :cond_b
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideInstantBar withAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->hide(Z)V

    .line 689
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 690
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    if-ge p1, v0, :cond_3b

    .line 691
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showModePicker()V

    .line 693
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "key_instant_zoom_ui_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "value_instant_zoom_hide"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_48
    :goto_48
    return-void
.end method

.method private hideInstantBarImmediately()V
    .registers 2

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 702
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideInstantBar(Z)V

    :cond_e
    return-void
.end method

.method private hideModePicker()V
    .registers 3

    .line 827
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 828
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideModePicker"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private hidePointBar()V
    .registers 2

    const/4 v0, 0x1

    .line 730
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hidePointBar(Z)V

    return-void
.end method

.method private hidePointBar(Z)V
    .registers 5

    .line 734
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    return-void

    .line 738
    :cond_6
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePointBar, withAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->hide(Z)V

    const/4 p1, -0x1

    .line 741
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateViewState(I)V

    return-void
.end method

.method private hideTickRing()V
    .registers 2

    const/4 v0, 0x1

    .line 774
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideTickRing(Z)V

    return-void
.end method

.method private hideTickRing(Z)V
    .registers 5

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 779
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    return-void

    .line 783
    :cond_d
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideTickRing] mIsScaling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " withAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 784
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    if-nez v0, :cond_36

    const/16 v0, 0x18

    .line 785
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    .line 787
    :cond_36
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeTickRingHasMarginOffset:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    .line 788
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideInstantBar(Z)V

    goto :goto_46

    .line 790
    :cond_43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideInstantBar()V

    .line 792
    :goto_46
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->hide(Z)V

    .line 793
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_zoomwheel_view_hide"

    .line 794
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p1, 0x1a

    .line 795
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    .line 796
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootView:Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->setTouchEventTarget(Landroid/view/View;)V

    return-void
.end method

.method private hideTickRingDelayed()V
    .registers 5

    .line 768
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 770
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideTickRingDelayed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private hideWideCameraHint()V
    .registers 4

    .line 1458
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1d

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsWideCameraHintShowing:Z

    if-eqz v1, :cond_1d

    .line 1459
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mWideCameraHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1460
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_tips"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "value_wide_camera_hide"

    .line 1461
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1462
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsWideCameraHintShowing:Z

    :cond_1d
    return-void
.end method

.method private hideZoomRatioHint()V
    .registers 2

    .line 659
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    if-eqz v0, :cond_11

    .line 660
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method private initResources()V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->new_camera_instant_zoom_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBottomPadding:I

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->margin_to_bottom_area:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMarginToBottomArea:I

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->new_camera_instant_zoom_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantZoomHeight:I

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_ui4_normal_zoom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTickRingBottomMargin:I

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_ring_bottom_margin_1_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTickRingBottomMargin1_1:I

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_ratio_hint_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleRatioHintHalfHeight:I

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->zoom_ratio_hint_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleRatioHintTextHalfSize:I

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->scale_ratio_hint_top_margin_to_full_preview:I

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleRatioHintTopMarginToFullPreview:I

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->scale_ratio_hint_top_margin_to_preview:I

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleRatioHintTopMarginToPreview:I

    return-void
.end method

.method private isConflictUIShowing()Z
    .registers 4

    .line 1556
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConflictUIShowing, mConflictUIShowingFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    .line 1557
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1556
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1558
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private isInstantZoomSupported()Z
    .registers 1

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ZoomConfig;->getInstantZoomRatios()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private isPreviewRatio1_1()Z
    .registers 2

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isZoomTypeSupported(I)Z
    .registers 2

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomTypeSupported(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doCreateEntryView$4(I)V
    .registers 4

    .line 939
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setZoomRatio(IZ)V

    .line 940
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->doOnZoomRatioChanged(I)V

    .line 941
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 943
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1a

    .line 941
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 5

    .line 272
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsRingScreenLightOn:Z

    if-eq v0, p1, :cond_25

    .line 273
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsRingScreenLightOn:Z

    .line 274
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransfer, mIsRingScreenLightOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    if-eqz p1, :cond_25

    .line 276
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsRingScreenLightOn:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->invertColor(Z)V

    :cond_25
    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .registers 5

    .line 620
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingDataCallback, onDataCallback, previewState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 621
    :goto_1b
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Object;I)V
    .registers 4

    .line 617
    check-cast p1, Ljava/lang/String;

    .line 618
    const-string v0, "key_preview_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 619
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;I)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->performOnMainThread(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 878
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootLayout:Landroid/view/ViewGroup;

    if-eqz p0, :cond_c

    .line 879
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    return-void
.end method

.method private notifyZoomAction(I)V
    .registers 4

    .line 1201
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/16 v0, 0x17

    .line 1202
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

    .line 1207
    :cond_1a
    :goto_1a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_stop"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 1204
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_begin"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private performOnMainThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 1844
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 1845
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1847
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setOrientation(IZ)V
    .registers 4

    .line 1084
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    if-eqz v0, :cond_7

    .line 1085
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;->setOrientation(IZ)V

    .line 1087
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    if-eqz p2, :cond_e

    .line 1088
    invoke-virtual {p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->setOrientation(I)V

    .line 1090
    :cond_e
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    if-eqz p2, :cond_15

    .line 1091
    invoke-virtual {p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setOrientation(I)V

    .line 1093
    :cond_15
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    if-eqz p2, :cond_1c

    .line 1094
    invoke-virtual {p2, p1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->setOrientation(I)V

    .line 1096
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    if-eqz p0, :cond_23

    .line 1097
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setOrientation(I)V

    :cond_23
    return-void
.end method

.method private showFocalLengthBar()V
    .registers 4

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    if-eqz v0, :cond_18

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    goto :goto_18

    .line 522
    :cond_a
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setZoomRatio(I)V

    .line 523
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateViewState(I)V

    .line 524
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->show(Z)V

    :cond_18
    :goto_18
    return-void
.end method

.method private showFocalLengthBarDelayed()V
    .registers 5

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showInstantBar()V
    .registers 3

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isInstantZoomSupported()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_42

    .line 670
    :cond_7
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[showInstantBar]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 671
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateInstantZoomBarColor()V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 673
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 674
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideModePicker()V

    .line 676
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->updateZoomRatio(I)V

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->show()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 678
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_instant_zoom_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_instant_zoom_show"

    .line 679
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_42
    :goto_42
    return-void
.end method

.method private showModePicker()V
    .registers 3

    .line 820
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showModePicker"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 821
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_13

    .line 822
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    :cond_13
    return-void
.end method

.method private showPointBar()V
    .registers 5

    .line 716
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    if-nez v0, :cond_a

    goto :goto_29

    .line 722
    :cond_a
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "showPointBar"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->updateZoomRatio(IZ)V

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->show(Z)V

    .line 726
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateViewState(I)V

    return-void

    .line 717
    :cond_29
    :goto_29
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPointBar, mViewState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mZoomPointBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private showPointBarDelayed()V
    .registers 5

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showTickRing()V
    .registers 5

    .line 751
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return-void

    .line 755
    :cond_6
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[showTickRing]"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setZoomRatio(IZ)V

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsRingScreenLightOn:Z

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->invertColor(Z)V

    const/16 v0, 0x19

    .line 758
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->show(Z)V

    .line 760
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showInstantBar()V

    .line 761
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateViewState(I)V

    .line 762
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateTickRingLayerType()V

    .line 763
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideTickRingDelayed()V

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootView:Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;->setTouchEventTarget(Landroid/view/View;)V

    return-void
.end method

.method private showTickRingDelayed()V
    .registers 5

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showWideCameraHint()V
    .registers 3

    .line 1467
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsOverlayGuideShow:Z

    if-eqz v0, :cond_5

    goto :goto_3b

    .line 1471
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsWideCameraHintShowing:Z

    if-eqz v0, :cond_11

    .line 1472
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showWideCameraHint, return for showing"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1476
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    if-nez v0, :cond_3b

    .line 1477
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->ensureWideCameraHintInfo()V

    .line 1478
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2b

    .line 1479
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mWideCameraHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2b
    const/4 v0, 0x1

    .line 1481
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsWideCameraHintShowing:Z

    .line 1482
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_tips"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_wide_camera_show"

    .line 1483
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private showZoomRatioHint()V
    .registers 3

    .line 637
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsPaused:Z

    if-eqz v0, :cond_5

    goto :goto_21

    .line 641
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->ensureRatioHintText()V

    .line 642
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUtils;->getZoomRatioTextWithSuffix(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    .line 645
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    :goto_21
    return-void
.end method

.method private switchToViewState(I)V
    .registers 6

    .line 535
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    if-ne v0, p1, :cond_5

    goto :goto_57

    :cond_5
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2b

    .line 539
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isConflictUIShowing()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 540
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToViewState, return for conflict ui showing, flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    .line 541
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 540
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 545
    :cond_2b
    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToViewState to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eq p1, v0, :cond_a5

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_81

    if-eq p1, v2, :cond_6f

    if-eq p1, v1, :cond_58

    :goto_57
    return-void

    .line 556
    :cond_58
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    if-eq p1, v3, :cond_5e

    if-ne p1, v2, :cond_5f

    :cond_5e
    move v0, v3

    .line 558
    :cond_5f
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hidePointBar()V

    .line 559
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideTickRing()V

    if-eqz v0, :cond_6b

    .line 561
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showFocalLengthBarDelayed()V

    return-void

    .line 563
    :cond_6b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showFocalLengthBar()V

    return-void

    .line 567
    :cond_6f
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    if-ne p1, v3, :cond_7a

    .line 568
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hidePointBar()V

    .line 569
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showTickRingDelayed()V

    return-void

    .line 571
    :cond_7a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideZoomRatioHint()V

    .line 572
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showTickRing()V

    return-void

    .line 576
    :cond_81
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    if-ne p1, v2, :cond_98

    .line 577
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    if-eqz p1, :cond_91

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeTickRingHasMarginOffset:Z

    if-eqz p1, :cond_91

    .line 578
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideTickRing(Z)V

    goto :goto_94

    .line 580
    :cond_91
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideTickRing()V

    .line 582
    :goto_94
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showPointBarDelayed()V

    return-void

    :cond_98
    if-ne p1, v1, :cond_a1

    .line 584
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideFocalLengthBar()V

    .line 585
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showPointBarDelayed()V

    return-void

    .line 587
    :cond_a1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showPointBar()V

    return-void

    .line 549
    :cond_a5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hidePointBar()V

    .line 550
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideTickRing()V

    .line 551
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideFocalLengthBar()V

    .line 552
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideZoomRatioHint()V

    .line 553
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateViewState(I)V

    return-void
.end method

.method private switchViewStateToNoneImmediately()V
    .registers 3

    .line 334
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hidePointBar(Z)V

    .line 338
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideTickRing(Z)V

    .line 339
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideFocalLengthBar(Z)V

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideZoomRatioHint()V

    .line 341
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateViewState(I)V

    return-void
.end method

.method private translateZoomUIIfNeed(Z)V
    .registers 6

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->getMarginOffset(I)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_16

    .line 803
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->needTranslateZoomUIOnRecording()Z

    move-result v0

    if-nez v0, :cond_17

    :goto_16
    return-void

    .line 806
    :cond_17
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateZoomUIIfNeed, translateDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_49

    .line 809
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootView:Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->recording_graduationview_margin_bottom_normal:I

    .line 811
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p1, v1, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;-><init>(Landroid/view/View;FF)V

    filled-new-array {p1}, [Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 809
    invoke-static {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->translateZoomUI(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Z[Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;)V

    return-void

    .line 813
    :cond_49
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootView:Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    .line 814
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-direct {p1, v1, v2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;-><init>(Landroid/view/View;FF)V

    filled-new-array {p1}, [Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 813
    invoke-static {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils;->translateZoomUI(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;Z[Lcom/transsion/camera/ui/setting/zoom/ZoomAnimationUtils$TranslationInfo;)V

    return-void
.end method

.method private updateFocalLengthBarLayout()V
    .registers 4

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    if-eqz v0, :cond_30

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isZoomTypeSupported(I)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_30

    .line 476
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getMarginOffset(I)I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMarginToBottomArea:I

    add-int/2addr v1, v0

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 480
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v2, :cond_30

    .line 481
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 482
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_30
    :goto_30
    return-void
.end method

.method private updateInstantBarLayout()V
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-eqz v0, :cond_3a

    .line 456
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getInstantZoomRatios()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_3a

    .line 460
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->getMarginOffset(I)I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_20

    .line 461
    :cond_1a
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBottomPadding:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantZoomHeight:I

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 462
    :goto_20
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 465
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v2, :cond_3a

    .line 466
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 467
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private updateInstantZoomBarColor()V
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    if-nez v0, :cond_5

    return-void

    .line 847
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 848
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootView:Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v0

    .line 849
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 850
    :goto_1d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->updateBackgroundColor(Z)V

    return-void
.end method

.method private updatePointBarLayout()V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isZoomTypeSupported(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2f

    .line 426
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getMarginOffset(I)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMarginToBottomArea:I

    add-int/2addr v1, v0

    .line 429
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 430
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v2, :cond_2f

    .line 431
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private updateScaleRatioHintLayout()V
    .registers 4

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    if-eqz v0, :cond_32

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isZoomTypeSupported(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_32

    .line 858
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_16

    .line 859
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleRatioHintTopMarginToFullPreview:I

    goto :goto_18

    :cond_16
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleRatioHintTopMarginToPreview:I

    .line 860
    :goto_18
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleRatioHintTextHalfSize:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 861
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleRatioHintHalfHeight:I

    sub-int/2addr v0, v1

    .line 863
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 864
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, v0, :cond_32

    .line 865
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 866
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRatioHintText:Lcom/transsion/camera/app/ui/widget/RotateStrokeTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private updateTickRingLayerType()V
    .registers 5

    .line 1510
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-eqz v0, :cond_3b

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    goto :goto_3b

    .line 1515
    :cond_a
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isSATSupported()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    sget v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    if-ge v0, v1, :cond_17

    const/4 v2, 0x1

    .line 1518
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eq v2, v0, :cond_3b

    .line 1519
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTickRingLayerType, layerType: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1520
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private updateTickRingLayout()V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    if-eqz v0, :cond_43

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isZoomTypeSupported(I)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_43

    .line 440
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isPreviewRatio1_1()Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTickRingBottomMargin1_1:I

    :goto_14
    neg-int v1, v1

    goto :goto_19

    :cond_16
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTickRingBottomMargin:I

    goto :goto_14

    .line 441
    :goto_19
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getMarginOffset(I)I

    move-result v0

    if-eqz v0, :cond_22

    move v1, v0

    .line 443
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    add-int/2addr v0, v1

    if-lez v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 444
    :goto_2e
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeTickRingHasMarginOffset:Z

    .line 446
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 447
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v0, v2, :cond_43

    .line 448
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_43
    :goto_43
    return-void
.end method

.method private updateUIOnRecordingStateChanged(Z)V
    .registers 3

    .line 1852
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-nez v0, :cond_5

    return-void

    .line 1855
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isContinuousZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 1856
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    .line 1857
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->translateZoomUIIfNeed(Z)V

    .line 1858
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setVibrationEnable(Z)V

    return-void

    :cond_19
    const/16 v0, 0x1000

    if-eqz p1, :cond_21

    .line 1862
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    .line 1864
    :cond_21
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void
.end method

.method private updateViewState(I)V
    .registers 5

    .line 528
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    if-eq v0, p1, :cond_26

    .line 529
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewState to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 530
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    :cond_26
    return-void
.end method

.method private updateWideCameraHint()V
    .registers 3

    .line 1525
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    sget v1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->DEFAULT_ZOOM_RATIO:I

    if-ge v0, v1, :cond_a

    .line 1526
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showWideCameraHint()V

    return-void

    .line 1528
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideWideCameraHint()V

    return-void
.end method

.method private updateZoomConfig()V
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_d5

    .line 293
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IModeFeatureConfig;->getZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_d5

    .line 303
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    .line 304
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IModeFeatureConfig;->getZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    .line 306
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->getZoomRange()Landroid/util/Range;

    move-result-object v3

    .line 307
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMinZoomRatio:I

    .line 308
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMaxZoomRatio:I

    .line 309
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->getLimitedZoomRange()Landroid/util/Range;

    move-result-object v3

    .line 310
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mLimitedMinZoomRatio:I

    .line 311
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mLimitedMaxZoomRatio:I

    .line 313
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mApplyDefaultConfig:Z

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->isDefaultRatioSet()Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_68

    .line 318
    :cond_5f
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->getDefaultZoomRatio()I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    goto :goto_7e

    .line 314
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 315
    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMaxZoomRatio:I

    if-le v3, v4, :cond_75

    move v3, v4

    :cond_75
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    .line 316
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    iget v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/ZoomConfig;->setDefaultZoomRatio(I)Lcom/transsion/camera/app/common/ZoomConfig;

    .line 321
    :goto_7e
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateZoomViews()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateSettingUILayout(Z)V

    .line 323
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mApplyDefaultConfig:Z

    .line 325
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ZoomConfig;->isSATSupported()Z

    move-result v3

    if-eqz v3, :cond_8f

    goto :goto_95

    :cond_8f
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentLensInfo()Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    move-result-object v1

    :goto_95
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentLensInfo:Lcom/transsion/camera/app/common/ZoomConfig$LensInfo;

    if-eqz v0, :cond_a6

    .line 327
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentLensType()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig;->getCurrentLensType()I

    move-result v1

    if-eq v0, v1, :cond_a6

    const/4 v2, 0x1

    :cond_a6
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mNeedResetScaleValues:Z

    .line 328
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZoomConfig, mMaxZoomRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMaxZoomRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMinZoomRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMinZoomRatio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 294
    :cond_d5
    :goto_d5
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    .line 295
    sget v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->DEFAULT_ZOOM_RATIO:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    const/4 v0, -0x1

    .line 296
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    .line 297
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mApplyDefaultConfig:Z

    .line 298
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    .line 299
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateZoomConfig, null ModeFeatureConfig or zoomConfig"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateZoomConfigToViews()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-nez v0, :cond_5

    goto :goto_4f

    :cond_5
    const/16 v1, 0x20

    .line 348
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    if-eqz v0, :cond_16

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V

    .line 353
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    if-eqz v0, :cond_28

    .line 355
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V

    .line 358
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    if-eqz v0, :cond_3a

    .line 360
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V

    .line 363
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getInstantZoomRatios()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    if-eqz v0, :cond_4f

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ZoomConfig;->getInstantZoomRatios()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->updateInstantRatios([Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private updateZoomViews()V
    .registers 6

    const/4 v0, -0x1

    .line 370
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    .line 372
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    const/16 v2, 0x20

    .line 373
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomTypeSupported(I)Z

    move-result v1

    .line 374
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomTypeSupported(I)Z

    move-result v2

    if-nez v1, :cond_1a

    if-nez v2, :cond_1a

    .line 376
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    return-void

    :cond_1a
    if-eqz v1, :cond_25

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    if-eqz v0, :cond_25

    .line 382
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V

    :cond_25
    if-eqz v2, :cond_30

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    if-eqz v0, :cond_30

    .line 386
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V

    :cond_30
    if-eqz v1, :cond_34

    const/4 v0, 0x3

    goto :goto_35

    :cond_34
    const/4 v0, 0x1

    .line 389
    :goto_35
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    .line 390
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    if-eq v1, v0, :cond_3d

    if-ne v1, v3, :cond_45

    :cond_3d
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    if-nez v1, :cond_45

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mApplyDefaultConfig:Z

    if-eqz v1, :cond_48

    .line 393
    :cond_45
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    .line 396
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ZoomConfig;->isZoomTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    if-eqz v0, :cond_5a

    .line 398
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setZoomConfig(Lcom/transsion/camera/app/common/ZoomConfig;)V

    .line 401
    :cond_5a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->getInstantZoomRatios()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    if-eqz v0, :cond_6f

    .line 403
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ZoomConfig;->getInstantZoomRatios()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->updateInstantRatios([Ljava/lang/String;)V

    .line 406
    :cond_6f
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateZoomViews, mDefaultViewState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsModeSwitching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mApplyDefaultConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mApplyDefaultConfig:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimation(Landroid/view/View;ZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 885
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->camera_zoom_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootLayout:Landroid/view/ViewGroup;

    .line 886
    sget v0, Lcom/transsion/camera/R$layout;->zoom_layout_5:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 887
    sget p2, Lcom/transsion/camera/R$id;->zoom_ui_root_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootView:Lcom/transsion/camera/ui/setting/zoom/ZoomLayout;

    .line 889
    sget p2, Lcom/transsion/camera/R$id;->zoom_point_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    .line 890
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBase:F

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->setFocalLengthBase(F)V

    .line 891
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->setOrientation(I)V

    .line 892
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBarListener:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->setListener(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$Listener;)V

    .line 893
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsRingScreenLightOn:Z

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->invertColor(Z)V

    .line 895
    sget p2, Lcom/transsion/camera/R$id;->focal_length_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    .line 896
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 897
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;->setListener(Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar$Listener;)V

    .line 932
    sget p2, Lcom/transsion/camera/R$id;->zoom_tick_ring:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    .line 933
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mTickRingListener:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setListener(Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing$Listener;)V

    .line 934
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBase:F

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setFocalLengthBase(F)V

    .line 935
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    invoke-static {}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->getInstance()Lcom/transsion/camera/app/common/vibrate/VibratorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/vibrate/VibratorController;->isSupport()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setVibratorSupport(Z)V

    .line 937
    sget p2, Lcom/transsion/camera/R$id;->instant_zoom_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInstantBar:Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;

    .line 938
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar;->setInstantZoomSelectedListener(Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$InstantZoomSelectedListener;)V

    .line 946
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateZoomConfigToViews()V

    .line 947
    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    return-object p1
.end method

.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;",
            ")",
            "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;"
        }
    .end annotation

    .line 873
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 1007
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomRootLayout:Landroid/view/ViewGroup;

    return-object p0
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

    .line 1022
    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 1027
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->DEFAULT_ZOOM_VALUE:Ljava/lang/String;

    return-object p0

    :cond_7
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 265
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->init(Landroid/content/Context;)V

    .line 267
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsRingScreenLightOn:Z

    .line 268
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public isEntryViewRetained()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isNextRecordingAnimationEnable(Landroid/view/View;Z)Z
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_b

    .line 2001
    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[isNextVideoRecordingAnimationEnable]: rootView is null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 2004
    :cond_b
    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_17

    const/4 p1, 0x5

    goto :goto_1b

    .line 2005
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2006
    :goto_1b
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isNextVideoRecordingAnimationEnable]: current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRecordBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eqz p2, :cond_41

    if-le p1, v1, :cond_40

    return v0

    :cond_40
    return p0

    :cond_41
    if-ltz p1, :cond_46

    if-ge p1, v1, :cond_46

    return v0

    :cond_46
    return p0
.end method

.method public bridge synthetic isRecordingAnimationComplete(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isRecordingAnimationComplete(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 15

    .line 1564
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1f5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1f1

    const/4 v2, 0x2

    const/high16 v3, 0x10000

    if-eq p1, v2, :cond_1e5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1df

    const/16 v4, 0x24

    if-eq p1, v4, :cond_1d2

    const/16 v4, 0x25

    if-eq p1, v4, :cond_1c9

    const/16 v4, 0x30

    const/16 v5, 0x2000

    if-eq p1, v4, :cond_1c5

    const/16 v4, 0x31

    if-eq p1, v4, :cond_1c1

    const/16 v4, 0x35

    if-eq p1, v4, :cond_1e5

    const/16 v4, 0x36

    if-eq p1, v4, :cond_1df

    const/16 v4, 0x4d

    if-eq p1, v4, :cond_1b7

    const/16 v4, 0x4e

    if-eq p1, v4, :cond_1ad

    const/16 v4, 0x50

    const/16 v5, 0x100

    if-eq p1, v4, :cond_1a9

    const/16 v4, 0x51

    if-eq p1, v4, :cond_1a5

    const/16 v4, 0x55

    if-eq p1, v4, :cond_1a2

    const/16 v4, 0x56

    if-eq p1, v4, :cond_19f

    const/16 v4, 0x5a

    const/16 v6, 0x400

    if-eq p1, v4, :cond_198

    const/16 v4, 0x5b

    if-eq p1, v4, :cond_191

    const/16 v4, 0x20

    const/high16 v6, 0x20000

    const/high16 v7, 0x40000

    const/16 v8, 0x200

    const/16 v9, 0x40

    const v10, 0x8000

    const/16 v11, 0x4000

    const/16 v12, 0x10

    sparse-switch p1, :sswitch_data_1fc

    const/4 v2, 0x4

    packed-switch p1, :pswitch_data_2c2

    goto/16 :goto_190

    .line 1785
    :pswitch_7c
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    .line 1786
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsPaused:Z

    .line 1787
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    .line 1788
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1671
    :pswitch_89
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1668
    :pswitch_8d
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    .line 1692
    :pswitch_91
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsPaused:Z

    .line 1693
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    .line 1694
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInFragment:Z

    .line 1695
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    and-int/2addr p1, v12

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mConflictUIShowingFlags:I

    .line 1696
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    if-eqz p1, :cond_a6

    .line 1697
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    .line 1698
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateUIOnRecordingStateChanged(Z)V

    .line 1700
    :cond_a6
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    if-eqz p1, :cond_ad

    .line 1701
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->doOnScaleEnd()Z

    .line 1703
    :cond_ad
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsTickRingScrolling:Z

    if-eqz p1, :cond_b6

    const/16 p1, 0x18

    .line 1704
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    .line 1706
    :cond_b6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1707
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->enableViewTalkback(Landroid/view/View;Z)V

    return-void

    .line 1683
    :sswitch_c5
    invoke-direct {p0, v11}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1680
    :sswitch_c9
    invoke-direct {p0, v11}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    .line 1609
    :sswitch_cd
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1763
    :sswitch_d1
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsOverlayGuideShow:Z

    return-void

    .line 1759
    :sswitch_d4
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsOverlayGuideShow:Z

    .line 1760
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideWideCameraHint()V

    return-void

    .line 1782
    :sswitch_da
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->translateZoomUIIfNeed(Z)V

    return-void

    .line 1779
    :sswitch_de
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->translateZoomUIIfNeed(Z)V

    return-void

    .line 1773
    :sswitch_e2
    invoke-direct {p0, v12}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1774
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    if-nez p1, :cond_190

    .line 1775
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateZoomConfig()V

    return-void

    .line 1770
    :sswitch_ed
    invoke-direct {p0, v12}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    .line 1767
    :sswitch_f1
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    return-void

    .line 1634
    :sswitch_f7
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1635
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    if-nez p1, :cond_190

    .line 1636
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->performOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 1620
    :sswitch_107
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    .line 1621
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    if-nez p1, :cond_116

    .line 1622
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->performOnMainThread(Ljava/lang/Runnable;)V

    .line 1624
    :cond_116
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchViewStateToNoneImmediately()V

    return-void

    .line 1689
    :sswitch_11a
    invoke-direct {p0, v10}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1686
    :sswitch_11e
    invoke-direct {p0, v10}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    .line 1593
    :sswitch_122
    invoke-direct {p0, v9}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1594
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1589
    :sswitch_129
    invoke-direct {p0, v9}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    .line 1590
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1665
    :sswitch_130
    invoke-direct {p0, v8}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1662
    :sswitch_134
    invoke-direct {p0, v8}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    .line 1797
    :sswitch_138
    invoke-direct {p0, v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1794
    :sswitch_13c
    invoke-direct {p0, v7}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    .line 1631
    :sswitch_140
    invoke-direct {p0, v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1627
    :sswitch_144
    invoke-direct {p0, v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    .line 1628
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchViewStateToNoneImmediately()V

    return-void

    .line 1791
    :sswitch_14b
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    return-void

    .line 1648
    :sswitch_151
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    if-eqz p1, :cond_190

    .line 1649
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateUIOnRecordingStateChanged(Z)V

    .line 1650
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    return-void

    .line 1640
    :sswitch_15b
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    if-nez p1, :cond_190

    .line 1641
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    .line 1642
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateUIOnRecordingStateChanged(Z)V

    return-void

    .line 1573
    :pswitch_165
    :sswitch_165
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1567
    :sswitch_169
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    .line 1568
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    return-void

    .line 1612
    :sswitch_172
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1613
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1605
    :sswitch_179
    invoke-direct {p0, v4}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    .line 1606
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1718
    :sswitch_180
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    .line 1719
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_190

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    if-nez p0, :cond_190

    .line 1720
    sget-object p0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_190
    :goto_190
    return-void

    .line 1601
    :cond_191
    invoke-direct {p0, v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1602
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1597
    :cond_198
    invoke-direct {p0, v6}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    .line 1598
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1756
    :cond_19f
    :sswitch_19f
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInFragment:Z

    return-void

    .line 1744
    :cond_1a2
    :sswitch_1a2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInFragment:Z

    return-void

    .line 1659
    :cond_1a5
    :sswitch_1a5
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1654
    :cond_1a9
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    .line 1748
    :cond_1ad
    :sswitch_1ad
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInFragment:Z

    .line 1749
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->enableViewTalkback(Landroid/view/View;Z)V

    return-void

    .line 1731
    :cond_1b7
    :sswitch_1b7
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mInFragment:Z

    .line 1732
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->enableViewTalkback(Landroid/view/View;Z)V

    return-void

    .line 1677
    :cond_1c1
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    return-void

    .line 1674
    :cond_1c5
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return-void

    :cond_1c9
    const/16 p1, 0x8

    .line 1616
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1617
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1576
    :cond_1d2
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    if-eqz p1, :cond_1db

    const/16 p1, 0x80

    .line 1577
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1579
    :cond_1db
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1726
    :cond_1df
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    .line 1727
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1712
    :cond_1e5
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    .line 1713
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->clearConflictUIFlag(I)V

    .line 1714
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    .line 1715
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->hideWideCameraHint()V

    return-void

    .line 1586
    :cond_1f1
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    return-void

    .line 1582
    :cond_1f5
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setEnable(Z)V

    .line 1583
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsWideCameraHintShowing:Z

    return-void

    nop

    :sswitch_data_1fc
    .sparse-switch
        0x9 -> :sswitch_180
        0xb -> :sswitch_179
        0xc -> :sswitch_172
        0xd -> :sswitch_169
        0xe -> :sswitch_165
        0xf -> :sswitch_15b
        0x10 -> :sswitch_151
        0x11 -> :sswitch_1b7
        0x12 -> :sswitch_1ad
        0x13 -> :sswitch_19f
        0x3a -> :sswitch_14b
        0x66 -> :sswitch_1a2
        0x67 -> :sswitch_19f
        0x68 -> :sswitch_1a2
        0x69 -> :sswitch_1a2
        0x6a -> :sswitch_1a2
        0x6b -> :sswitch_1a2
        0x89 -> :sswitch_1a2
        0x8a -> :sswitch_19f
        0x8b -> :sswitch_1a2
        0x92 -> :sswitch_144
        0x9b -> :sswitch_140
        0x9c -> :sswitch_165
        0xc9 -> :sswitch_151
        0xca -> :sswitch_13c
        0xcb -> :sswitch_138
        0xcf -> :sswitch_134
        0xd0 -> :sswitch_130
        0xe9 -> :sswitch_129
        0xea -> :sswitch_122
        0xef -> :sswitch_1a2
        0xf0 -> :sswitch_19f
        0xf1 -> :sswitch_1a2
        0xf2 -> :sswitch_11e
        0xf3 -> :sswitch_11a
        0x106 -> :sswitch_1a5
        0x119 -> :sswitch_107
        0x11a -> :sswitch_f7
        0x11b -> :sswitch_f1
        0x11d -> :sswitch_ed
        0x11e -> :sswitch_e2
        0x140 -> :sswitch_de
        0x141 -> :sswitch_da
        0x142 -> :sswitch_f1
        0x16b -> :sswitch_d4
        0x16c -> :sswitch_d1
        0x175 -> :sswitch_cd
        0x183 -> :sswitch_c9
        0x184 -> :sswitch_c5
    .end sparse-switch

    :pswitch_data_2c2
    .packed-switch 0x1c
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_165
        :pswitch_7c
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .line 628
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mViewState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsShowFromShoulderButton:Z

    if-eqz v0, :cond_a

    goto :goto_18

    .line 631
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDefaultViewState:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->switchToViewState(I)V

    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 1076
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 1077
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ZoomConfig;->isOrientationFixed()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_12

    :cond_e
    const/4 v0, 0x1

    .line 1080
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->setOrientation(IZ)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    const/16 v0, 0x8

    .line 1129
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isZoomTypeSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 1130
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScale, not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1133
    :cond_11
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsEnable:Z

    if-nez v0, :cond_1d

    .line 1134
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScale, not enable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1137
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    if-nez v0, :cond_24

    .line 1138
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 1141
    :cond_24
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 1142
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleFactor:F

    .line 1143
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mNeedResetScaleValues:Z

    if-eqz p1, :cond_3b

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1144
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleFactor:F

    .line 1145
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleInitRatio:I

    .line 1146
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mNeedResetScaleValues:Z

    .line 1149
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->getScaleRatio()I

    move-result p1

    .line 1150
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    if-eq p1, v0, :cond_46

    .line 1151
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->doOnZoomRatioChanged(I)V

    .line 1153
    :cond_46
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->showZoomRatioHint()V

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    const/16 p1, 0x8

    .line 1103
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->isZoomTypeSupported(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 1104
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScaleBegin, not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 1107
    :cond_11
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsEnable:Z

    if-nez p1, :cond_1d

    .line 1108
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScaleBegin, not enable"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_1d
    const/4 p1, 0x1

    .line 1111
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsScaling:Z

    .line 1112
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleBegin, UIState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    if-ne v0, p1, :cond_4d

    .line 1114
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1116
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_5a

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsVideoRecording:Z

    if-nez v1, :cond_5a

    .line 1117
    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_5a
    const/16 v0, 0x17

    .line 1119
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    const/16 v0, 0x192

    .line 1120
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->notifyZoomAction(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1121
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleFactor:F

    .line 1122
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mScaleInitRatio:I

    const/16 v0, 0x80

    .line 1123
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->addConflictUIFlag(I)V

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 1170
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->doOnScaleEnd()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic resetRecordingUI()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->resetRecordingUI()V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 1534
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 1535
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_a

    .line 1536
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->registerPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    :cond_a
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 1071
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 6

    .line 597
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 599
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 602
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_4b

    .line 603
    const-string v1, "mode_entry_key"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_conflict_ui_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_super_anti_video"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_vlog_correct_orientation"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_config_changed"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_record_state"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 611
    :cond_4b
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_54

    .line 612
    sget p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->DEFAULT_ZOOM_RATIO:I

    goto :goto_58

    :cond_54
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_58
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mCurrentRatio:I

    .line 613
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    if-eqz p1, :cond_7

    .line 1048
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 1051
    :cond_7
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsEnable:Z

    .line 1052
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsModeSwitching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsModeSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomConfig:Lcom/transsion/camera/app/common/ZoomConfig;

    if-nez v0, :cond_2e

    goto :goto_43

    .line 1057
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomPointBar:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    if-eqz v0, :cond_35

    .line 1058
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1060
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomTickRing:Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    if-eqz v0, :cond_3c

    .line 1061
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1063
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mFocalLengthBar:Lcom/transsion/camera/ui/setting/zoom/FocalLengthZoomBar;

    if-eqz p0, :cond_43

    .line 1064
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_43
    :goto_43
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
    .registers 3

    .line 283
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mApplyDefaultConfig:Z

    .line 287
    :cond_e
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mModeFeatureConfig:Lcom/transsion/camera/app/common/IModeFeatureConfig;

    .line 288
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateZoomConfig()V

    return-void
.end method

.method public setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
    .registers 2

    .line 1032
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 1033
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 1038
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 1043
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 1017
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public bridge synthetic startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public unInit()V
    .registers 6

    .line 1903
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_7

    .line 1904
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPrivacyControl;->unregisterPrivacyCallback(Lcom/transsion/camera/app/common/IPrivacyCallback;)V

    .line 1906
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mMainHandler:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MainHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1908
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_16

    .line 1909
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mWideCameraHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1912
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->unregisterZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    .line 1913
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_5c

    .line 1914
    const-string v2, "mode_entry_key"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1915
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_conflict_ui_state"

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1916
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v3, "key_super_anti_video"

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1917
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_vlog_correct_orientation"

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1918
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_zoom_config_changed"

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1919
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v2, "key_record_state"

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1920
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1922
    :cond_5c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 1923
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mZoomReceiverManager:Lcom/transsion/camera/ui/setting/ZoomReceiverManager;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/ZoomReceiverManager;->unInit()V

    .line 1924
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    const/4 v0, 0x0

    .line 1925
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mIsRingScreenLightOn:Z

    .line 1926
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 489
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateSettingUILayout(Z)V

    return-void
.end method

.method public bridge synthetic updateRecordingAnimationState(Landroid/view/View;ZZ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 2

    .line 413
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    .line 414
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updatePointBarLayout()V

    .line 415
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateTickRingLayout()V

    .line 416
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateInstantBarLayout()V

    .line 417
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateFocalLengthBarLayout()V

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->updateScaleRatioHintLayout()V

    return-void
.end method
