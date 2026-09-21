.class public Lcom/transsion/camera/app/ui/manager/TopBarUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;,
        Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY:I = 0x96

.field private static final ANIMATION_DURATION:J = 0xc8L

.field private static final ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final HIDE_REASON_BY_AIGC_EFFECT_UI:I = 0x80

.field private static final HIDE_REASON_BY_AI_ART_MUSEUM_UI:I = 0x100

.field private static final HIDE_REASON_BY_FILTER_UI:I = 0x1

.field private static final HIDE_REASON_BY_MAGICSKY_PANEL_UI:I = 0x20

.field private static final HIDE_REASON_BY_PMASTER_BOTTOM_UI:I = 0x4

.field private static final HIDE_REASON_BY_TIMELAPSE_PANEL_UI:I = 0x40

.field private static final HIDE_REASON_BY_VIDEO_MAKEUP_UI:I = 0x10

.field private static final HIDE_REASON_BY_VIDEO_POTRAIT_UI:I = 0x8

.field private static final HIDE_REASON_NONE:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mDisableTopbar:Z

.field private mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

.field private mHideReasonWhenExpanded:I

.field private mInVideoMode:Z

.field private mIsCameraSwitching:Z

.field private mIsCelebrityUIShow:Z

.field private mIsFilterUIShow:Z

.field private mIsImageStyleShow:Z

.field private mIsPopSettingRestore:Z

.field private mIsPopSettingShow:Z

.field private mIsPopSettingSupport:Z

.field private mIsPreviewDown:Z

.field private mIsStateProcessing:Z

.field private mIsVideoRecording:Z

.field private mIsZoomScrolling:Z

.field private mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

.field private mLeftSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

.field private mNeedPlayShowViewAnimation:Z

.field private mNeedShowTopBar:Z

.field private mPMasterBottomUIShow:Z

.field protected mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

.field private mPopWindowShow:Z

.field private final mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mProExposureCaptureOn:Z

.field private mRecordingOrientation:I

.field private mRightSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfTimerOn:Z

.field private mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

.field private mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

.field private mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

.field private mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

.field private mTempShowKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTempShowing:Z

.field private mTopBarIn:Landroid/animation/ObjectAnimator;

.field private mTopBarOut:Landroid/animation/ObjectAnimator;

.field private mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

.field private final mVideoFlashlightSupportWhenRecording:Z


# direct methods
.method public static synthetic $r8$lambda$_1imdsSHYpFwAPlr4Lps3hnJR-0(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onItemSelected()V

    return-void
.end method

.method public static synthetic $r8$lambda$_h9JYbj1WiNeNmD9IJlS4HkQk2A(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTm4-VrsY9WTsx9Z_STOIKq1a_s(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->lambda$getCurrentDisplaySettingUIs$0(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragmentListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLottieAnimationListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBlurCameraListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchTeleCameraListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopBarIn(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopBarUI(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/ui/AbstractTopBarUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTopBarIn(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Landroid/animation/ObjectAnimator;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarIn:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$monItemSelected(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->onItemSelected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTopBarLayoutParams(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarLayoutParams(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetANIMATOR_INTERPOLATOR()Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 73
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V
    .registers 15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v7, p4

    .line 141
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p0, 0x0

    .line 86
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTempShowing:Z

    .line 88
    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p2, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTempShowKeys:Ljava/util/List;

    .line 91
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 109
    iput p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 110
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 117
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    const/4 p0, 0x1

    .line 132
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mNeedPlayShowViewAnimation:Z

    const/4 p0, -0x1

    .line 133
    iput p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRecordingOrientation:I

    .line 484
    new-instance p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 142
    new-instance p0, Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;-><init>()V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 143
    iput-object p1, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v0, p1, v1, p0, p6}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    .line 145
    iget-object p2, v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 146
    iget-object p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingViewControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingSupport:Z

    .line 149
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result p0

    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Z)Z
    .registers 2

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/view/View;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Z)Z
    .registers 2

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/view/ViewGroup;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)I
    .registers 1

    .line 70
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Landroid/view/ViewGroup;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private cancelAnimation()V
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private currentModeSupportVideoSizePoint()Z
    .registers 2

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mCurrentModeName:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 267
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private doSetLeftAndRightSettingUIList(Ljava/util/List;Ljava/util/List;)V
    .registers 6

    .line 527
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 529
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v1, :cond_37

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz v2, :cond_37

    .line 530
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    .line 532
    :goto_38
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_42

    .line 535
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 537
    :cond_42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    .line 539
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setLeftSettingUIList(Ljava/util/List;)V

    .line 541
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_55

    .line 542
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 544
    :cond_55
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    .line 546
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setRightSettingUIList(Ljava/util/List;)V

    .line 547
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->currentModeSupportVideoSizePoint()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->startVideoSizePointAnimation(Z)V

    return-void
.end method

.method private findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_2f

    .line 1600
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_2f

    .line 1604
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_e

    .line 1605
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, p3, :cond_e

    const/4 p0, 0x1

    :cond_2f
    :goto_2f
    return p0
.end method

.method private getCurrentDisplayLeftSettingUIs()Ljava/util/List;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentDisplaySettingUIs(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentDisplayRightSettingUIs()Ljava/util/List;
    .registers 2

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentDisplaySettingUIs(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentDisplaySettingUIs()Ljava/util/List;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentDisplaySettingUIs(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentDisplaySettingUIs(Ljava/util/List;)Ljava/util/List;
    .registers 3

    if-eqz p1, :cond_26

    .line 300
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_26

    .line 301
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTempShowing:Z

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_25
    return-object p1

    .line 300
    :cond_26
    :goto_26
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;
    .registers 1

    .line 1443
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1444
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    return-object p0
.end method

.method private initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1625
    :cond_3
    const-string v0, "key_settings_entry"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1626
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 1629
    :cond_18
    const-string/jumbo v0, "wide_camera"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1630
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 1633
    :cond_2d
    const-string v0, "key_tele_camera"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1634
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$TeleCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 1637
    :cond_41
    const-string v0, "key_bw_portrait"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1638
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$BlurCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 1641
    :cond_55
    const-string v0, "key_dual_cam_bw"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1642
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$DualCamBWCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 1645
    :cond_69
    const-string v0, "key_periscope_camera"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1646
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$PeriscopeCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 1649
    :cond_7d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_84

    .line 1650
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 1653
    :cond_84
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_8b

    .line 1654
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 1657
    :cond_8b
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v0, :cond_92

    .line 1658
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 1661
    :cond_92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    if-eqz v0, :cond_99

    .line 1662
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopOptionSettingControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V

    .line 1665
    :cond_99
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v0, :cond_a0

    .line 1666
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 1669
    :cond_a0
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V

    .line 1670
    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$3;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;)V

    .line 1692
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    return-void
.end method

.method private isModeIntentVideo()Z
    .registers 2

    .line 1749
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1751
    const-string v0, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getCurrentDisplaySettingUIs$0(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .registers 3

    .line 301
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTempShowKeys:Ljava/util/List;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 485
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    const-string v0, "key_fold_switch_preview"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 487
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz p0, :cond_2d

    .line 488
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onFoldSwitchPreview(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method private onItemSelected()V
    .registers 1

    .line 1615
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    if-eqz p0, :cond_7

    .line 1616
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;->onItemSelected()V

    :cond_7
    return-void
.end method

.method private playAnimation(I)V
    .registers 5

    .line 1696
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-eqz p1, :cond_5

    goto :goto_52

    .line 1699
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_52

    .line 1700
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarIn:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1701
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 1703
    :cond_18
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarOut:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1704
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 1707
    :cond_27
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarOut:Landroid/animation/ObjectAnimator;

    .line 1708
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1709
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarOut:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$4;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1720
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_52
    :goto_52
    return-void
.end method

.method private restoreFlag()V
    .registers 2

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTempShowing:Z

    .line 313
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTempShowKeys:Ljava/util/List;

    return-void
.end method

.method private restoreNormalShow()V
    .registers 2

    .line 306
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->restoreFlag()V

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->resetTopBarContainerDisplay()V

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateSettingUIs()V

    return-void
.end method

.method private setEnableInBGOfflineCase()V
    .registers 9

    .line 689
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[setEnableInBGOfflineCase]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    if-eqz v2, :cond_26

    .line 692
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 693
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportChangeFlashWhenRecording()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    if-nez v0, :cond_26

    move v0, v1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 697
    :goto_27
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    const-string v3, "key_flash_facade"

    const-string v4, "key_settings_entry"

    const-string v5, "key_picture_size"

    if-eqz v2, :cond_74

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_74

    .line 698
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 699
    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5e

    goto :goto_3d

    .line 702
    :cond_5e
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    xor-int/2addr v7, v1

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    if-eqz v0, :cond_3d

    .line 703
    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 704
    invoke-interface {v6, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_3d

    .line 708
    :cond_74
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v2, :cond_bb

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_bb

    .line 709
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_84
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 710
    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_84

    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a5

    goto :goto_84

    .line 713
    :cond_a5
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    xor-int/2addr v7, v1

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    if-eqz v0, :cond_84

    .line 714
    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 715
    invoke-interface {v6, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_84

    .line 719
    :cond_bb
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz v2, :cond_102

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_102

    .line 720
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_cb
    :goto_cb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_102

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 721
    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_cb

    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ec

    goto :goto_cb

    .line 724
    :cond_ec
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    xor-int/2addr v7, v1

    invoke-interface {v6, v7}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    if-eqz v0, :cond_cb

    .line 725
    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 726
    invoke-interface {v6, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_cb

    :cond_102
    return-void
.end method

.method private setItemClickDisableByKey(ZLjava/lang/String;)V
    .registers 6

    .line 1384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1386
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1387
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    .line 1392
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_52

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_52

    .line 1393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1394
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1395
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    .line 1400
    :cond_52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7b

    .line 1401
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_62
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1402
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1403
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    :cond_7b
    return-void
.end method

.method private shouldShowTopBarContainer()V
    .registers 3

    .line 1429
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1430
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    :cond_a
    return-void
.end method

.method private showOrHideTopBar(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1435
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    return-void
.end method

.method private showOrHideTopBar(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 1459
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(ZIZ)V

    return-void
.end method

.method private showOrHideTopBar(ZI)V
    .registers 4

    const/4 v0, 0x0

    .line 1439
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(ZIZ)V

    return-void
.end method

.method private showOrHideTopBar(ZIZ)V
    .registers 7

    .line 1463
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showOrHideTopBar] reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   animate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 1466
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_54

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->timelapseLrShouldShowOrHideTopBar()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_54

    .line 1479
    :cond_44
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez p1, :cond_98

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mProExposureCaptureOn:Z

    if-nez p1, :cond_98

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    if-nez p1, :cond_98

    .line 1480
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    return-void

    :cond_54
    :goto_54
    if-nez p2, :cond_76

    .line 1467
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez p2, :cond_76

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mProExposureCaptureOn:Z

    if-nez p2, :cond_76

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    if-nez p2, :cond_76

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsFilterUIShow:Z

    if-nez p2, :cond_76

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsImageStyleShow:Z

    if-nez p2, :cond_76

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPMasterBottomUIShow:Z

    if-nez p2, :cond_76

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCelebrityUIShow:Z

    if-nez p2, :cond_76

    .line 1469
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show(Z)V

    return-void

    .line 1471
    :cond_76
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p2

    .line 1472
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-eqz v0, :cond_94

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    if-eqz v0, :cond_94

    if-eqz p2, :cond_94

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportChangeFlashWhenRecording()Z

    move-result p2

    if-eqz p2, :cond_94

    .line 1473
    const-string p2, "key_flash_facade"

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->tempShow(ZLjava/util/List;)V

    return-void

    :cond_94
    const/4 p1, 0x0

    .line 1475
    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide(ZZ)V

    :cond_98
    return-void
.end method

.method private stopPressedAnimation(I)V
    .registers 4

    .line 1725
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1726
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1727
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1728
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_e

    .line 1732
    :cond_22
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1733
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_44

    .line 1734
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1735
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_30

    .line 1739
    :cond_44
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 1740
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_66

    .line 1741
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1742
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_52

    :cond_66
    return-void
.end method

.method private timelapseLrShouldShowOrHideTopBar()Z
    .registers 4

    .line 1448
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 1450
    const-string v2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method private unInitTopBarSettingUIs()V
    .registers 3

    .line 1487
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 1488
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1489
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_10

    .line 1491
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1493
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 1494
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1495
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_35

    .line 1497
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1499
    :cond_4a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_6f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6f

    .line 1500
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1501
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_5a

    .line 1503
    :cond_6a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_6f
    return-void
.end method

.method private updateCurrentModeSupportNewVideoSize()V
    .registers 4

    .line 1411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 1412
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1413
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->currentModeSupportVideoSizePoint()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->currentModeSupportNewVideoSize(Z)V

    goto :goto_10

    .line 1416
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 1417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1418
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->currentModeSupportVideoSizePoint()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->currentModeSupportNewVideoSize(Z)V

    goto :goto_34

    .line 1421
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_6c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6c

    .line 1422
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1423
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->currentModeSupportVideoSizePoint()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->currentModeSupportNewVideoSize(Z)V

    goto :goto_58

    :cond_6c
    return-void
.end method

.method private updateTopBarLayoutParams(II)V
    .registers 8

    .line 1508
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onOrientationChanged(I)V

    .line 1509
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1510
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-nez v1, :cond_17

    .line 1511
    sget-object p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ParentLayout is Null !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1514
    :cond_17
    sget-object v1, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateTopBarLayoutParams] screenFormType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1515
    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    .line 1516
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-ne p2, v3, :cond_dd

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_be

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_a0

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_74

    .line 1546
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingSupport:Z

    if-eqz p2, :cond_56

    .line 1547
    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_height_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5e

    .line 1549
    :cond_56
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_height_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1551
    :goto_5e
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 p2, 0x3

    .line 1552
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1553
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1554
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e6

    .line 1534
    :cond_74
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingSupport:Z

    if-eqz p2, :cond_81

    .line 1535
    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width_margin_x:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_89

    .line 1537
    :cond_81
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width_margin_x:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1539
    :goto_89
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p2, 0x30

    .line 1540
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1541
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1542
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e6

    .line 1527
    :cond_a0
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1528
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_height_margin_x:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 p2, 0x5

    .line 1529
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1530
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1531
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e6

    .line 1520
    :cond_be
    sget p2, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1521
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_left_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p2, 0x50

    .line 1522
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1523
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1524
    sget p2, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e6

    .line 1558
    :cond_dd
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 p2, -0x1

    .line 1559
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p2, 0x31

    .line 1560
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1562
    :goto_e6
    iget-object p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1563
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[updateTopBarLayoutParams] orientation: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", TopBar mParentLayout.getVisibility(): "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    mParentLayout.getAlpha() = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", TopBar mParentLayout.getWidth(): "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "    mParentLayout.getHeight() = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    if-eqz p1, :cond_28

    .line 1568
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 1569
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_c

    .line 1570
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1572
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_c

    :cond_28
    if-eqz p2, :cond_95

    .line 1576
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 1577
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_34
    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_4f

    .line 1578
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1579
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    .line 1581
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 1583
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_size"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_fps2"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto :goto_7d

    .line 1586
    :cond_6e
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    goto :goto_89

    .line 1584
    :cond_7d
    :goto_7d
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    const-string v2, "key_video_quality"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 1588
    :goto_89
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 1589
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_34

    :cond_95
    return-void
.end method


# virtual methods
.method protected createUI(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)Lcom/transsion/camera/app/ui/AbstractTopBarUI;
    .registers 5

    .line 1759
    new-instance p0, Lcom/transsion/camera/app/ui/TopBarUI;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/TopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    return-object p0
.end method

.method public dismissPopup()Z
    .registers 3

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 562
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .registers 3

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 574
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopupWithoutAnimation()Z

    move-result p0

    return p0
.end method

.method public doSetCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 504
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 505
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p2, :cond_c

    .line 506
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 508
    :cond_c
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    .line 510
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->resetTopBarContainerDisplay()V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setSettingUIList(Ljava/util/List;)V

    return-void
.end method

.method public getAppUI()Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 1772
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method public getToolbarHeight()I
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getHeight()I

    move-result p0

    return p0
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide(ZZ)V

    return-void
.end method

.method public hide(ZZ)V
    .registers 5

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    move p1, v1

    .line 323
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->cancelAnimation()V

    if-eqz p1, :cond_47

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_50

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_56

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 327
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_50

    .line 344
    :cond_47
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    .line 347
    :cond_50
    :goto_50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopupWithoutAnimation()Z

    return-void

    :array_56
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected isInVideoMode(Landroid/graphics/Rect;)Z
    .registers 2

    .line 1767
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isPopupShowing()Z
    .registers 1

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz p0, :cond_9

    .line 567
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPopupShowing()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public needShowTopBar(Z)V
    .registers 2

    .line 523
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mNeedShowTopBar:Z

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 14

    .line 774
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateActionToUI() called with: action = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mIsZoomScrolling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->stopPressedAnimation(I)V

    .line 777
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->notifyCameraOperateActionToUI(I)V

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_676

    if-eq p1, v3, :cond_663

    if-eq p1, v2, :cond_655

    const/4 v5, 0x3

    .line 778
    const-string v6, "key_picture_size"

    if-eq p1, v5, :cond_628

    const/4 v5, 0x4

    if-eq p1, v5, :cond_60f

    if-eq p1, v1, :cond_5fa

    const/16 v7, 0xc

    if-eq p1, v7, :cond_5e4

    const/16 v7, 0x4d

    if-eq p1, v7, :cond_5da

    const/16 v7, 0x4e

    if-eq p1, v7, :cond_5e8

    const/16 v7, 0x5a

    if-eq p1, v7, :cond_5d1

    const/16 v7, 0x5b

    if-eq p1, v7, :cond_5cd

    const/16 v7, 0x5d

    if-eq p1, v7, :cond_5b5

    const/16 v7, 0x5e

    const/16 v8, 0x10

    const/4 v9, -0x1

    if-eq p1, v7, :cond_536

    const/16 v10, 0x8

    const-string v11, "key_flash_facade"

    sparse-switch p1, :sswitch_data_720

    packed-switch p1, :pswitch_data_822

    packed-switch p1, :pswitch_data_82c

    packed-switch p1, :pswitch_data_836

    packed-switch p1, :pswitch_data_842

    goto/16 :goto_6b0

    .line 1193
    :pswitch_71
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1194
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    goto/16 :goto_6b0

    .line 1189
    :pswitch_7c
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1190
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    goto/16 :goto_6b0

    .line 990
    :pswitch_87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_320

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez v5, :cond_320

    .line 991
    invoke-virtual {v0, v4, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(ZI)V

    goto/16 :goto_320

    .line 941
    :pswitch_94
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsFilterUIShow:Z

    .line 942
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 943
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 944
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    .line 945
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    .line 946
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isFilterUIShow(Z)V

    .line 947
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mInVideoMode:Z

    if-nez v0, :cond_6b0

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_6b0

    .line 948
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->cancelPopSettingShowViewAnimation()V

    .line 949
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation(I)V

    goto/16 :goto_6b0

    .line 862
    :pswitch_c2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 863
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingVisibleEnable(Z)V

    .line 864
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 865
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateVideoRecordingState(Z)V

    .line 866
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    if-eqz v0, :cond_da

    .line 867
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->restoreNormalShow()V

    .line 869
    :cond_da
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewAnimation(Z)V

    .line 871
    iput v9, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRecordingOrientation:I

    goto/16 :goto_6b0

    .line 1251
    :pswitch_e8
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    .line 1252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    .line 1253
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setNeedHidePopSettingView(Z)V

    goto/16 :goto_6b0

    .line 1246
    :pswitch_f3
    iput v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isImageStyleShow(Z)V

    .line 1248
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    goto/16 :goto_6b0

    .line 1118
    :pswitch_fe
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateVideoRecordingState(Z)V

    .line 1120
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 1121
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    .line 1122
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSelfTimerOn:Z

    .line 1123
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mProExposureCaptureOn:Z

    .line 1124
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    .line 1125
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsFilterUIShow:Z

    .line 1126
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCelebrityUIShow:Z

    .line 1127
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCameraSwitching:Z

    .line 1128
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 1129
    iput v9, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRecordingOrientation:I

    goto/16 :goto_6b0

    .line 1161
    :pswitch_11f
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    goto/16 :goto_6b0

    .line 934
    :sswitch_123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingVisibleEnable(Z)V

    goto/16 :goto_6b0

    .line 931
    :sswitch_12a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    goto/16 :goto_6b0

    .line 1104
    :sswitch_131
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1105
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    goto/16 :goto_6b0

    .line 964
    :sswitch_13c
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCelebrityUIShow:Z

    .line 965
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isCelebritySceneShow(Z)V

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez v5, :cond_6b0

    .line 967
    invoke-virtual {v0, v4, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(ZI)V

    goto/16 :goto_6b0

    .line 954
    :sswitch_150
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCelebrityUIShow:Z

    .line 955
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    .line 956
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isCelebritySceneShow(Z)V

    .line 957
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez v0, :cond_6b0

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_6b0

    .line 958
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->cancelPopSettingShowViewAnimation()V

    .line 959
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation()V

    goto/16 :goto_6b0

    .line 1318
    :sswitch_16f
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsFilterUIShow:Z

    if-nez v0, :cond_179

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCelebrityUIShow:Z

    if-nez v0, :cond_179

    move v0, v3

    goto :goto_17a

    :cond_179
    move v0, v4

    :goto_17a
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mNeedPlayShowViewAnimation:Z

    .line 1319
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    goto/16 :goto_6b0

    .line 1303
    :sswitch_181
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    goto/16 :goto_6b0

    .line 1096
    :sswitch_186
    iput v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1097
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    goto/16 :goto_6b0

    .line 1100
    :sswitch_18d
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1101
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    goto/16 :goto_6b0

    .line 1140
    :sswitch_198
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIGCV30:Z

    if-nez v0, :cond_6b0

    .line 1141
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    .line 1142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 1143
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 1144
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_6b0

    .line 1145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    goto/16 :goto_6b0

    .line 1088
    :sswitch_1b4
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAIGCV30:Z

    if-nez v0, :cond_6b0

    .line 1089
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(Z)V

    .line 1090
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 1091
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    goto/16 :goto_6b0

    .line 1007
    :sswitch_1cb
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPMasterBottomUIShow:Z

    .line 1008
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1009
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    .line 1010
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 1011
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    iget v6, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eq v6, v5, :cond_1e6

    const/4 v5, 0x5

    if-ne v6, v5, :cond_6b0

    .line 1013
    :cond_1e6
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 1014
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPMasterBottomUIShow(Z)V

    goto/16 :goto_6b0

    .line 971
    :sswitch_1f0
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPMasterBottomUIShow:Z

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_1f9

    .line 973
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPMasterBottomUIShow(Z)V

    .line 975
    :cond_1f9
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 976
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    goto/16 :goto_6b0

    .line 1291
    :sswitch_203
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1292
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    .line 1293
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsImageStyleShow:Z

    .line 1294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isImageStyleShow(Z)V

    .line 1295
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 1296
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v3, :cond_6b0

    .line 1297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    .line 1298
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    goto/16 :goto_6b0

    .line 1280
    :sswitch_225
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v3, :cond_22c

    .line 1281
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    .line 1283
    :cond_22c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isImageStyleShow(Z)V

    .line 1284
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsImageStyleShow:Z

    .line 1285
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsFilterUIShow:Z

    .line 1286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    .line 1287
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isFilterUIShow(Z)V

    goto/16 :goto_6b0

    .line 1333
    :sswitch_23e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    .line 1334
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isDualDeviceItemUIShow(Z)V

    goto/16 :goto_6b0

    .line 1328
    :sswitch_247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    .line 1329
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isDualDeviceItemUIShow(Z)V

    goto/16 :goto_6b0

    .line 1108
    :sswitch_250
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_6b0

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_6b0

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    goto/16 :goto_6b0

    .line 1224
    :sswitch_265
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    .line 1225
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mNeedPlayShowViewAnimation:Z

    .line 1226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPopSettingShow(Z)V

    .line 1227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(ZI)V

    .line 1228
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_6b0

    .line 1229
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    goto/16 :goto_6b0

    .line 1233
    :sswitch_27e
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    .line 1234
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mNeedPlayShowViewAnimation:Z

    if-eqz v0, :cond_28e

    .line 1235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->cancelPopSettingShowViewAnimation()V

    .line 1236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation(I)V

    .line 1238
    :cond_28e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPopSettingShow(Z)V

    .line 1239
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_29e

    .line 1240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->dismissAllPopupOption()Z

    .line 1242
    :cond_29e
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1243
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    goto/16 :goto_6b0

    .line 780
    :sswitch_2a9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCameraOperateActionToUI() called with: ACTION_RECORD_VIDEO_SHOW_UI_START "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isTopBarShowing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isTopBarShowing()Z

    move-result v0

    if-nez v0, :cond_6b0

    .line 782
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    goto/16 :goto_6b0

    .line 812
    :sswitch_2d2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->currentModeSupportVideoSizePoint()Z

    move-result v0

    if-eqz v0, :cond_536

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->startVideoSizePointAnimation(Z)V

    goto/16 :goto_536

    .line 1312
    :sswitch_2df
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_2e6

    .line 1313
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPreviewDown(Z)V

    .line 1315
    :cond_2e6
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPreviewDown:Z

    goto/16 :goto_6b0

    .line 1306
    :sswitch_2ea
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_2f1

    .line 1307
    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPreviewDown(Z)V

    .line 1309
    :cond_2f1
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPreviewDown:Z

    goto/16 :goto_6b0

    .line 1049
    :sswitch_2f5
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1050
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    .line 1051
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 1052
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_6b0

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_6b0

    .line 1053
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    goto/16 :goto_6b0

    .line 994
    :cond_320
    :goto_320
    :sswitch_320
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 995
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    .line 996
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsFilterUIShow:Z

    .line 997
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_332

    .line 998
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isFilterUIShow(Z)V

    .line 1000
    :cond_332
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 1001
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_6b0

    .line 1002
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_6b0

    .line 1003
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    goto/16 :goto_6b0

    .line 1032
    :sswitch_354
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1033
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    .line 1034
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 1035
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    .line 1036
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    goto/16 :goto_6b0

    .line 1040
    :sswitch_36b
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1041
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    .line 1042
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    .line 1043
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-eqz v5, :cond_6b0

    iget v5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v5, v3, :cond_6b0

    .line 1044
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 1045
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation()V

    goto/16 :goto_6b0

    .line 985
    :sswitch_38f
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    or-int/2addr v0, v8

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 986
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 987
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    goto/16 :goto_6b0

    .line 902
    :sswitch_39c
    const-string v5, "shot2shot end action need enable top bar ui"

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->isOffLineSessionSupport()Z

    move-result v0

    if-eqz v0, :cond_3b0

    .line 904
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setEnableInBGOfflineCase()V

    goto/16 :goto_6b0

    .line 906
    :cond_3b0
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setEnable(Z)V

    goto/16 :goto_6b0

    .line 1183
    :sswitch_3b5
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 1184
    iput v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1185
    invoke-direct {p0, v4, v11}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemClickDisableByKey(ZLjava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    goto/16 :goto_6b0

    .line 1178
    :sswitch_3c1
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 1179
    invoke-direct {p0, v3, v11}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setItemClickDisableByKey(ZLjava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    goto/16 :goto_6b0

    .line 1113
    :sswitch_3cb
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_6b0

    .line 1114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    goto/16 :goto_6b0

    .line 787
    :pswitch_3da
    :sswitch_3da
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->currentModeSupportVideoSizePoint()Z

    move-result v0

    if-eqz v0, :cond_3e5

    .line 788
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->startVideoSizePointAnimation(Z)V

    .line 792
    :cond_3e5
    :pswitch_3e5
    :sswitch_3e5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarControllerVisible(I)V

    .line 793
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 794
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingVisibleEnable(Z)V

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateVideoRecordingState(Z)V

    .line 796
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 797
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 798
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRecordingOrientation:I

    if-ne v0, v9, :cond_6b0

    .line 799
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRecordingOrientation:I

    goto/16 :goto_6b0

    .line 1203
    :sswitch_408
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1204
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    goto/16 :goto_6b0

    .line 1198
    :sswitch_413
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1199
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    goto/16 :goto_6b0

    .line 1023
    :sswitch_41e
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1024
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    .line 1025
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    .line 1026
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_6b0

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-eqz v5, :cond_6b0

    iget v5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v5, v3, :cond_6b0

    .line 1027
    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 1028
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation()V

    goto/16 :goto_6b0

    .line 980
    :sswitch_442
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    or-int/2addr v0, v10

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 981
    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    .line 982
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->shouldShowTopBarContainer()V

    goto/16 :goto_6b0

    .line 1277
    :sswitch_44f
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    goto/16 :goto_6b0

    .line 1272
    :sswitch_453
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    goto/16 :goto_6b0

    .line 874
    :sswitch_457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingVisibleEnable(Z)V

    .line 875
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    if-eqz v0, :cond_467

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_467

    .line 876
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->restoreNormalShow()V

    .line 879
    :cond_467
    :pswitch_467
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    .line 880
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    if-nez v0, :cond_476

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingRestore:Z

    if-nez v0, :cond_476

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    :cond_476
    const/16 v0, 0x63

    if-ne p1, v0, :cond_483

    .line 883
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_483

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    .line 886
    :cond_483
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez v0, :cond_515

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_515

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsFilterUIShow:Z

    if-nez v0, :cond_515

    .line 887
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    goto/16 :goto_515

    .line 920
    :sswitch_496
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    .line 921
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isZoomBegin(Z)V

    .line 922
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCameraSwitching:Z

    if-nez v0, :cond_4a6

    .line 923
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 925
    :cond_4a6
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setEnable(Z)V

    .line 926
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_6b0

    .line 927
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(IZ)V

    goto/16 :goto_6b0

    .line 910
    :sswitch_4b6
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    .line 911
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isZoomBegin(Z)V

    .line 912
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    .line 913
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v0, :cond_4cf

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_4cf

    .line 914
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 916
    :cond_4cf
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 917
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setEnable(Z)V

    goto/16 :goto_6b0

    .line 1269
    :sswitch_4d9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    goto/16 :goto_6b0

    .line 1265
    :sswitch_4e0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    goto/16 :goto_6b0

    .line 1213
    :sswitch_4e7
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingRestore:Z

    .line 1214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingVisibleEnable(Z)V

    .line 1215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_6b0

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_6b0

    .line 1216
    invoke-interface {v0, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6b0

    .line 1207
    :sswitch_507
    iput v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 1208
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    .line 1209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingVisibleEnable(Z)V

    .line 1210
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingRestore:Z

    goto/16 :goto_6b0

    .line 891
    :cond_515
    :goto_515
    :sswitch_515
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    .line 892
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSelfTimerOn:Z

    .line 893
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mProExposureCaptureOn:Z

    .line 894
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-eqz v0, :cond_526

    const/16 v0, 0x9

    if-ne p1, v0, :cond_526

    .line 895
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 897
    :cond_526
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 898
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateVideoRecordingState(Z)V

    goto/16 :goto_6b0

    .line 1221
    :sswitch_52f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->recover()V

    goto/16 :goto_6b0

    :cond_536
    :goto_536
    :pswitch_536
    :sswitch_536
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_54b

    .line 820
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    if-eqz v5, :cond_541

    .line 821
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 823
    :cond_541
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-nez v5, :cond_54b

    goto/16 :goto_6b0

    .line 827
    :cond_54b
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz v5, :cond_559

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v5, :cond_559

    goto/16 :goto_6b0

    :cond_559
    if-ne p1, v8, :cond_560

    .line 831
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    .line 833
    :cond_560
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 834
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingVisibleEnable(Z)V

    .line 836
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz v5, :cond_577

    if-eq p1, v0, :cond_579

    .line 838
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    goto :goto_579

    .line 841
    :cond_577
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 844
    :cond_579
    :goto_579
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    .line 845
    iput v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 846
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(I)V

    .line 847
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    if-eqz v5, :cond_587

    .line 848
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->restoreNormalShow()V

    .line 850
    :cond_587
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    .line 851
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 852
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewAnimation(Z)V

    .line 853
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v5, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateVideoRecordingState(Z)V

    .line 854
    iget v5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iget v6, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-direct {p0, v5, v6}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarLayoutParams(II)V

    .line 855
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->isModeIntentVideo()Z

    move-result v5

    if-nez v5, :cond_5b1

    if-eq p1, v7, :cond_5ae

    if-eq p1, v8, :cond_5ae

    if-ne p1, v0, :cond_5b1

    .line 857
    :cond_5ae
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show()V

    .line 859
    :cond_5b1
    iput v9, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRecordingOrientation:I

    goto/16 :goto_6b0

    .line 803
    :cond_5b5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 804
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 805
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateVideoRecordingState(Z)V

    .line 807
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    if-nez v0, :cond_6b0

    .line 808
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    goto/16 :goto_6b0

    .line 1261
    :cond_5cd
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mProExposureCaptureOn:Z

    goto/16 :goto_6b0

    .line 1257
    :cond_5d1
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mProExposureCaptureOn:Z

    .line 1258
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->cancelPopSettingShowViewAnimation()V

    goto/16 :goto_6b0

    .line 937
    :cond_5da
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->shrinkTopBar()V

    .line 938
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    goto/16 :goto_6b0

    .line 1150
    :cond_5e4
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSelfTimerOn:Z

    .line 1151
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsStateProcessing:Z

    .line 1154
    :cond_5e8
    :sswitch_5e8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 1155
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 1156
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_6b0

    .line 1157
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    goto/16 :goto_6b0

    .line 1057
    :cond_5fa
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSelfTimerOn:Z

    .line 1058
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsFilterUIShow:Z

    if-nez v0, :cond_676

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCelebrityUIShow:Z

    if-nez v0, :cond_676

    .line 1059
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(Z)V

    goto :goto_676

    .line 1322
    :cond_60f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_6b0

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_6b0

    .line 1323
    invoke-interface {v0, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6b0

    .line 1164
    :cond_628
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_652

    .line 1165
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v5, :cond_633

    .line 1166
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    .line 1168
    :cond_633
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateCurrentModeSupportNewVideoSize()V

    .line 1169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 1170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_652

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_652

    .line 1171
    invoke-interface {v0, v6}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v6}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :cond_652
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    goto :goto_6b0

    .line 1083
    :cond_655
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(Z)V

    .line 1084
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 1085
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    goto :goto_6b0

    .line 1132
    :cond_663
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    if-nez v0, :cond_66c

    .line 1133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 1135
    :cond_66c
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 1136
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCameraSwitching:Z

    .line 1137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    goto :goto_6b0

    :cond_676
    :goto_676
    if-nez p1, :cond_67a

    .line 1064
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCameraSwitching:Z

    .line 1066
    :cond_67a
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez v0, :cond_687

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez v0, :cond_687

    .line 1067
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(Z)V

    .line 1069
    :cond_687
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewEnable(Z)V

    .line 1070
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-eqz v0, :cond_6b0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-eqz v0, :cond_6b0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_6b0

    if-nez p1, :cond_6b0

    .line 1072
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_6a4

    .line 1073
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    goto :goto_6a7

    .line 1075
    :cond_6a4
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    .line 1077
    :goto_6a7
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-eqz v0, :cond_6b0

    .line 1078
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->startPopSettingAnimation(ZZ)V

    :cond_6b0
    :goto_6b0
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_6b8

    .line 1340
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setEnable(Z)V

    goto :goto_6bf

    :cond_6b8
    const/16 v4, 0x2f

    if-ne p1, v4, :cond_6bf

    .line 1342
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->setEnable(Z)V

    .line 1345
    :cond_6bf
    :goto_6bf
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    .line 1346
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v3, :cond_6c9

    .line 1347
    invoke-virtual {v3, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->notifyCameraOperateAction(I)V

    :cond_6c9
    const/16 v3, 0xa3

    if-eq p1, v1, :cond_6f1

    const/16 v1, 0xf

    if-eq p1, v1, :cond_6f1

    if-eq p1, v0, :cond_6f1

    const/16 v0, 0x90

    if-eq p1, v0, :cond_6f1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_6f1

    const/16 v0, 0x101

    if-eq p1, v0, :cond_6f1

    const/16 v0, 0x18b

    if-eq p1, v0, :cond_6f1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_6f1

    if-eqz p1, :cond_6f1

    if-eq p1, v2, :cond_6f1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_6f1

    if-ne p1, v3, :cond_71f

    :cond_6f1
    if-eqz p1, :cond_6f7

    if-eq p1, v2, :cond_6f7

    if-ne p1, v3, :cond_701

    .line 1366
    :cond_6f7
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_701

    .line 1367
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopupWithoutAnimation()Z

    goto :goto_704

    .line 1369
    :cond_701
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->dismissPopup()Z

    .line 1371
    :goto_704
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_70d

    .line 1372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->hintInfo(Ljava/util/List;)V

    .line 1374
    :cond_70d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_716

    .line 1375
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->hintInfo(Ljava/util/List;)V

    .line 1377
    :cond_716
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_71f

    .line 1378
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->hintInfo(Ljava/util/List;)V

    :cond_71f
    return-void

    :sswitch_data_720
    .sparse-switch
        0x7 -> :sswitch_52f
        0x9 -> :sswitch_515
        0x12 -> :sswitch_5e8
        0x13 -> :sswitch_507
        0x14 -> :sswitch_4e7
        0x15 -> :sswitch_4e0
        0x16 -> :sswitch_4d9
        0x17 -> :sswitch_4b6
        0x18 -> :sswitch_496
        0x6d -> :sswitch_457
        0x7f -> :sswitch_453
        0x80 -> :sswitch_44f
        0x81 -> :sswitch_442
        0x82 -> :sswitch_41e
        0x8e -> :sswitch_413
        0x8f -> :sswitch_408
        0x90 -> :sswitch_3da
        0x91 -> :sswitch_536
        0x92 -> :sswitch_3cb
        0x93 -> :sswitch_3c1
        0x94 -> :sswitch_3b5
        0x9c -> :sswitch_39c
        0x9d -> :sswitch_39c
        0xa7 -> :sswitch_515
        0xb3 -> :sswitch_38f
        0xb4 -> :sswitch_36b
        0xb5 -> :sswitch_354
        0xb6 -> :sswitch_320
        0xb7 -> :sswitch_2f5
        0xc2 -> :sswitch_2ea
        0xc3 -> :sswitch_2df
        0xc9 -> :sswitch_2d2
        0xca -> :sswitch_442
        0xcb -> :sswitch_41e
        0xcc -> :sswitch_2a9
        0xcf -> :sswitch_27e
        0xd0 -> :sswitch_265
        0xd1 -> :sswitch_250
        0xd2 -> :sswitch_4e0
        0xd3 -> :sswitch_4d9
        0xd7 -> :sswitch_247
        0xd8 -> :sswitch_23e
        0xf2 -> :sswitch_225
        0xf3 -> :sswitch_203
        0xf7 -> :sswitch_1f0
        0xf8 -> :sswitch_1cb
        0xfe -> :sswitch_44f
        0xff -> :sswitch_44f
        0x101 -> :sswitch_1b4
        0x102 -> :sswitch_198
        0x103 -> :sswitch_18d
        0x104 -> :sswitch_186
        0x111 -> :sswitch_3e5
        0x112 -> :sswitch_536
        0x113 -> :sswitch_413
        0x114 -> :sswitch_408
        0x137 -> :sswitch_181
        0x14a -> :sswitch_16f
        0x183 -> :sswitch_150
        0x184 -> :sswitch_13c
        0x18e -> :sswitch_131
        0x18f -> :sswitch_186
        0x195 -> :sswitch_12a
        0x196 -> :sswitch_123
    .end sparse-switch

    :pswitch_data_822
    .packed-switch 0xe
        :pswitch_11f
        :pswitch_3da
        :pswitch_536
    .end packed-switch

    :pswitch_data_82c
    .packed-switch 0x1c
        :pswitch_fe
        :pswitch_f3
        :pswitch_e8
    .end packed-switch

    :pswitch_data_836
    .packed-switch 0x2e
        :pswitch_3e5
        :pswitch_c2
        :pswitch_94
        :pswitch_87
    .end packed-switch

    :pswitch_data_842
    .packed-switch 0x63
        :pswitch_467
        :pswitch_7c
        :pswitch_71
    .end packed-switch
.end method

.method public notifyFlashFacadeChanged()V
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz p0, :cond_7

    .line 617
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->notifyFlashFacadeChanged()V

    :cond_7
    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 175
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_d

    .line 177
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->isInVideoMode(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mInVideoMode:Z

    .line 179
    :cond_d
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isPopOptionAppearing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    .line 456
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPreviewDown:Z

    if-nez v0, :cond_20

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopupWithoutAnimation()Z

    .line 458
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_25

    .line 459
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->showPopItem()V

    goto :goto_25

    .line 462
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    :cond_25
    :goto_25
    return v1

    .line 466
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    move-result v0

    if-eqz v0, :cond_2f

    return v1

    .line 469
    :cond_2f
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 6

    .line 409
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBatteryStatusChanged(ZII)V

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 412
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_13

    .line 416
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 418
    invoke-interface {v1, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_33

    .line 422
    :cond_43
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_63

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_63

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 424
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_53

    :cond_63
    return-void
.end method

.method public onConfigurationChanged()Z
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_c

    .line 258
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopupWithoutAnimation()Z

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->pauseControlViewAnimation()V

    :cond_c
    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCameraSwitching:Z

    .line 262
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onConfigurationChanged()Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .line 169
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarLayoutParams(II)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 5

    .line 358
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 359
    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 360
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-eqz v1, :cond_e

    .line 361
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRecordingOrientation:I

    :cond_e
    if-eqz p2, :cond_14

    .line 364
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->playAnimation(I)V

    return-void

    :cond_14
    if-eqz v1, :cond_17

    goto :goto_19

    .line 366
    :cond_17
    iget p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    :goto_19
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarLayoutParams(II)V

    return-void

    .line 369
    :cond_1d
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarLayoutParams(II)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_42

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 372
    invoke-interface {v1, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onOrientationChanged(IZ)V

    goto :goto_32

    .line 375
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_62

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_62

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 377
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onOrientationChanged(IZ)V

    goto :goto_52

    :cond_62
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 385
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScreenFormChanged(IZ)V

    .line 386
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScreenFormChanged] screenFormType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onScreenFormChanged(IZ)V

    .line 388
    iget p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_30

    .line 389
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-eqz p2, :cond_2a

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRecordingOrientation:I

    goto :goto_2c

    :cond_2a
    iget p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    :goto_2c
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarLayoutParams(II)V

    goto :goto_35

    .line 391
    :cond_30
    iget p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateTopBarLayoutParams(II)V

    .line 394
    :goto_35
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSelfTimerOn:Z

    if-nez p2, :cond_42

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mProExposureCaptureOn:Z

    if-nez p2, :cond_42

    .line 395
    iget p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->showOrHideTopBar(ZI)V

    .line 397
    :cond_42
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez p2, :cond_62

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4f

    const/4 p2, 0x4

    if-eq p1, p2, :cond_4f

    const/4 p2, 0x5

    if-ne p1, p2, :cond_62

    .line 400
    :cond_4f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    if-nez p1, :cond_5d

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez p1, :cond_5d

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingShowViewVisible(I)V

    .line 403
    :cond_5d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->showTopBarContainer()V

    :cond_62
    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setupViews()V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 445
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_d

    .line 448
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->pause()V

    .line 450
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->restoreFlag()V

    return-void
.end method

.method public playLivePhotoLottieAnimation()V
    .registers 2

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 629
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playLivePhotoLottieAnimation(I)V

    :cond_8
    return-void
.end method

.method public resume()V
    .registers 2

    .line 432
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    const/4 v0, 0x0

    .line 433
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    .line 434
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingShow:Z

    .line 435
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCameraSwitching:Z

    .line 436
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsPopSettingRestore:Z

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz v0, :cond_18

    .line 438
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->resume()V

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->pauseControlViewAnimation()V

    :cond_18
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_1c

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 158
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->registerAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_1c
    return-void
.end method

.method public setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x7

    .line 495
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v1, :cond_e

    .line 496
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 498
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 9

    .line 734
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 735
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEnable] enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 736
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsCameraSwitching:Z

    if-eqz v0, :cond_29

    :cond_28
    move p1, v1

    .line 740
    :cond_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x1

    if-eqz v0, :cond_48

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mVideoFlashlightSupportWhenRecording:Z

    if-eqz v3, :cond_48

    .line 741
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 742
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportChangeFlashWhenRecording()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsZoomScrolling:Z

    if-nez v0, :cond_48

    move v0, v2

    goto :goto_49

    :cond_48
    move v0, v1

    .line 746
    :goto_49
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    const-string v4, "key_flash_facade"

    if-eqz v3, :cond_83

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_83

    .line 747
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5b
    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 748
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v6, :cond_6f

    if-eqz p1, :cond_6f

    move v6, v2

    goto :goto_70

    :cond_6f
    move v6, v1

    :goto_70
    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    if-eqz v0, :cond_5b

    .line 749
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 750
    invoke-interface {v5, v2}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_5b

    .line 754
    :cond_83
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    if-eqz v3, :cond_bb

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_bb

    .line 755
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLeftSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_93
    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 756
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v6, :cond_a7

    if-eqz p1, :cond_a7

    move v6, v2

    goto :goto_a8

    :cond_a7
    move v6, v1

    :goto_a8
    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    if-eqz v0, :cond_93

    .line 757
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 758
    invoke-interface {v5, v2}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_93

    .line 762
    :cond_bb
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    if-eqz v3, :cond_f3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f3

    .line 763
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mRightSettingUIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_cb
    :goto_cb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 764
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsVideoRecording:Z

    if-nez v6, :cond_df

    if-eqz p1, :cond_df

    move v6, v2

    goto :goto_e0

    :cond_df
    move v6, v1

    :goto_e0
    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    if-eqz v0, :cond_cb

    .line 765
    invoke-interface {v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 766
    invoke-interface {v5, v2}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_cb

    :cond_f3
    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
    .registers 2

    .line 608
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setLeftAndRightSettingUIList(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x7

    .line 515
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v1, :cond_13

    .line 516
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->doSetLeftAndRightSettingUIList(Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 518
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->doSetLeftAndRightSettingUIList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setLottieAnimationListener(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mLottieAnimationListener:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ILottieAnimationListener;

    return-void
.end method

.method public setNeedPopSettingEntryAnimation(Z)V
    .registers 2

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    if-eqz p0, :cond_7

    .line 623
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setNeedPopSettingEntryAnimation(Z)V

    :cond_7
    return-void
.end method

.method public setPopupOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;)V
    .registers 2

    .line 602
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopOptionSettingControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopupOptionControl;

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 474
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_22

    .line 476
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_22

    .line 479
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 480
    const-string v0, "key_fold_switch_preview"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 481
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public setSettingFragmentListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;)V
    .registers 2

    .line 578
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mFragmentListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    return-void
.end method

.method public setSwitchBlurCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchBlurCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchBlurCameraListener;

    return-void
.end method

.method public setSwitchDualCamBWCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchDualCamBWCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualCamBWCameraListener;

    return-void
.end method

.method public setSwitchPeriscopeCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchPeriscopeCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchPeriscopeCameraListener;

    return-void
.end method

.method public setSwitchTeleCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;)V
    .registers 2

    .line 586
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchTeleCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchLogicalCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->show(Z)V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingShowViewVisibility(Z)V

    return-void
.end method

.method public show(Z)V
    .registers 6

    .line 210
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mNeedShowTopBar:Z

    if-eqz v0, :cond_b4

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mDisableTopbar:Z

    if-eqz v0, :cond_a

    goto/16 :goto_b4

    .line 214
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_b3

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mIsImageStyleShow:Z

    if-eqz v0, :cond_19

    goto/16 :goto_b3

    .line 217
    :cond_19
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show mHideReasonWhenExpanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",animate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mHideReasonWhenExpanded:I

    if-lez v0, :cond_50

    iget v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v1, :cond_50

    return-void

    .line 222
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    move p1, v2

    .line 225
    :cond_5a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->cancelAnimation()V

    if-eqz p1, :cond_a5

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_68

    goto :goto_b3

    .line 230
    :cond_68
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_d0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 233
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 243
    :cond_a5
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    :cond_b3
    :goto_b3
    return-void

    .line 211
    :cond_b4
    :goto_b4
    sget-object p1, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show   mSettingUIList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mSettingUIList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->hide()V

    return-void

    :array_d0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public tempShow(ZLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tempShow() called with: showKeys = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_20

    goto :goto_3e

    .line 273
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->cancelAnimation()V

    .line 274
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTempShowKeys:Ljava/util/List;

    const/4 p2, 0x1

    .line 275
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTempShowing:Z

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setDisplayLeftToRight(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->updateSettingUIs()V

    const/4 p2, 0x0

    .line 278
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    .line 279
    iget p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-eqz p2, :cond_3f

    if-nez p1, :cond_3e

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mPopWindowShow:Z

    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    :goto_3e
    return-void

    .line 280
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopupWithoutAnimation()Z

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_15

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    sget-object v1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 192
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->unregisterAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    .line 195
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->unInit()V

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->unInitTopBarSettingUIs()V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_31

    .line 198
    const-string v1, "key_fold_switch_preview"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_restore_settings_notify_ui"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_31
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 1596
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method protected updateInVideoMode(Landroid/graphics/Rect;)V
    .registers 2

    .line 1763
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->isInVideoMode(Landroid/graphics/Rect;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mInVideoMode:Z

    return-void
.end method

.method public updateSettingUIs()V
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentDisplaySettingUIs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateSettingUIs(Ljava/util/List;)V

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentDisplayLeftSettingUIs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLeftSettingUIs(Ljava/util/List;)V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->mTopBarUI:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->getCurrentDisplayRightSettingUIs()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRightSettingUIs(Ljava/util/List;)V

    return-void
.end method
