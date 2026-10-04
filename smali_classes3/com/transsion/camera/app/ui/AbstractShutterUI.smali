.class public abstract Lcom/transsion/camera/app/ui/AbstractShutterUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IShutterUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractShutterUI$MainHandler;,
        Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;,
        Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;
    }
.end annotation


# static fields
.field private static final ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sBlackSupport:Ljava/util/List;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCShotGuideView:Landroid/widget/ImageView;

.field protected mContext:Landroid/content/Context;

.field private mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

.field private mCsViewAnimationStart:Z

.field private mCurrentModeName:Ljava/lang/String;

.field private mDrawableState:I

.field private mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

.field private mFlipSecondaryMenuShow:Z

.field private mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

.field private mFocalLengthZoomSate:I

.field private final mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private final mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

.field private mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

.field private mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsCameraSwitching:Z

.field private mIsCapturing:Z

.field private mIsContinuousShooting:Z

.field private mIsPhotoSizeChanging:Z

.field private mIsPreviewStarted:Z

.field private mIsQuickRecording:Z

.field private mIsResumed:Z

.field private mIsSuperNightLiteCapture:Z

.field private mIsSwipeEnd:Z

.field private mIsVideoRecording:Z

.field private mLastInSmoothZoom:Z

.field private mLastOrientation:I

.field private mLongPressed:Z

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mMainHandler:Landroid/os/Handler;

.field private mOldValue:Z

.field private mOrientation:I

.field private mPanoramaCaptureBegin:Z

.field private mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

.field private mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

.field private mQuickVideoGuideView:Landroid/widget/ImageView;

.field private mRecordingOrientation:I

.field private mScreenFormType:I

.field protected final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSelfTimerBegin:Z

.field private mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

.field private mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

.field private mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

.field protected mShutterPanelRoot:Landroid/view/ViewGroup;

.field private mShutterType:I

.field private mShutterTypeSelftimerOff:I

.field private mShutterTypeSelftimerOn:I

.field private final mShutterUINewStyleSupport:Z

.field private mShutterUIProcessing:Z

.field private mShutterUIProcessingOrientation:I

.field private mSimulateDownEvent:Z

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

.field private mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;


# direct methods
.method public static synthetic $r8$lambda$GE_pwXF96sky4W56Jbonz-Lspyc(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->lambda$syncShutterGuideHeightWithButton$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$p0McmeaqvPJpT9nxerxXmRx8puc(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->lambda$transitionToVoice$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pnn1EqiMbhJGeWX3OInPPoqYrko(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->lambda$ringScreenLightUpdateUI$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContinuousShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDrawableState(Lcom/transsion/camera/app/ui/AbstractShutterUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCameraSwitching(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCameraSwitching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsContinuousShooting(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPhotoSizeChanging(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPhotoSizeChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsQuickRecording(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsQuickRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSuperNightLiteCapture(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSuperNightLiteCapture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSwipeEnd(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastInSmoothZoom(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLastInSmoothZoom:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongPressed(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLongPressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLottieAnimationView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/airbnb/lottie/LottieAnimationView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldValue(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/AbstractShutterUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanoramaCaptureBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mPanoramaCaptureBegin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuickVideoButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingOrientation(Lcom/transsion/camera/app/ui/AbstractShutterUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelfTimerBegin(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSelfTimerBegin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterPanelGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeOperationListener(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCsViewAnimationStart(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCsViewAnimationStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFocalLengthZoomSate(Lcom/transsion/camera/app/ui/AbstractShutterUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFocalLengthZoomSate:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSwipeEnd(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastInSmoothZoom(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLastInSmoothZoom:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongPressed(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLongPressed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOldValue(Lcom/transsion/camera/app/ui/AbstractShutterUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mringScreenLightUpdateUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->ringScreenLightUpdateUI()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowShutterGuideLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->showShutterGuideLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshutterUINewStyleSupport(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->shutterUINewStyleSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtransmitMotionEvent(Lcom/transsion/camera/app/ui/AbstractShutterUI;Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->transmitMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateImageResourceByState(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmTag()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 88
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractShutterUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 92
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x2

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x4

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x5

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x8

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x9

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0xa

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0xb

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0xe

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x14

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x12

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x16

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v0, 0x1d

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Integer;

    move-result-object v0

    .line 99
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 7

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, -0x1

    .line 126
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    .line 127
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    .line 128
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    const/4 v2, 0x1

    .line 139
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    .line 141
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    .line 147
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 161
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessingOrientation:I

    .line 169
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLastInSmoothZoom:Z

    .line 170
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFocalLengthZoomSate:I

    .line 269
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    .line 349
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    .line 1391
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$7;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 1589
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 173
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 175
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    .line 176
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 177
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractShutterUI$MainHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$MainHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$bool;->support_shutter_ui_new_style:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUINewStyleSupport:Z

    return-void
.end method

.method private cancelFlipTranslateAnimator()V
    .registers 2

    .line 1578
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1579
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1124
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private initLottieView(Lcom/airbnb/lottie/LottieAnimationView;)V
    .registers 2

    .line 265
    const-string p0, "shutter_panel_guide_anim.json"

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 266
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$2()V
    .registers 5

    .line 1403
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-eqz v0, :cond_39

    .line 1404
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-ge v0, v2, :cond_1d

    sget-object v3, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1405
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    .line 1407
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    .line 1408
    sget v1, Lcom/transsion/camera/R$drawable;->ic_continuous_shot_guide_view_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1410
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2f

    .line 1411
    sget v1, Lcom/transsion/camera/R$drawable;->ic_quick_video_guide_view_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1413
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6b

    .line 1414
    const-string v1, "shutter_panel_guide_black_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_6b

    .line 1417
    :cond_39
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-lt v0, v2, :cond_50

    sget-object v3, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1418
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    .line 1420
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_59

    .line 1421
    sget v1, Lcom/transsion/camera/R$drawable;->ic_continuous_shot_guide_view:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1423
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_62

    .line 1424
    sget v1, Lcom/transsion/camera/R$drawable;->ic_quick_video_guide_view:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1426
    :cond_62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6b

    .line 1427
    const-string v1, "shutter_panel_guide_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 1430
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz v0, :cond_74

    .line 1431
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->ringScreenLightUpdateUI(Z)V

    .line 1433
    :cond_74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_7d

    .line 1434
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->ringScreenLightUpdateUI(Z)V

    :cond_7d
    return-void
.end method

.method private synthetic lambda$syncShutterGuideHeightWithButton$0()V
    .registers 4

    const/4 v0, 0x2

    .line 220
    :try_start_1
    new-array v0, v0, [I

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 222
    aget v0, v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 226
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception p0

    .line 231
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error syncing shutter guide height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$transitionToVoice$1()V
    .registers 4

    .line 1241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    .line 1242
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1243
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1244
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1245
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x28

    .line 1246
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1247
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private loadAnimatorDrawables()V
    .registers 3

    const/4 v0, 0x0

    .line 1281
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V

    return-void
.end method

.method private loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V
    .registers 7

    if-eqz p2, :cond_57

    .line 1285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    if-nez v0, :cond_b

    goto :goto_57

    .line 1290
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAllAnimations()V

    .line 1291
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 1293
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    if-eq v2, v3, :cond_2a

    .line 1294
    :cond_1d
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    if-lez v2, :cond_28

    .line 1295
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2a

    .line 1297
    :cond_28
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2a
    :goto_2a
    if-eqz p1, :cond_32

    .line 1301
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    if-eq v2, v3, :cond_3f

    .line 1302
    :cond_32
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    if-lez v2, :cond_3d

    .line 1303
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3f

    .line 1305
    :cond_3d
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3f
    :goto_3f
    if-eqz p1, :cond_49

    .line 1309
    iget p1, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    if-eq p1, v2, :cond_48

    goto :goto_49

    :cond_48
    return-void

    .line 1310
    :cond_49
    :goto_49
    iget p1, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    if-lez p1, :cond_54

    .line 1311
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 1313
    :cond_54
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 1286
    :cond_57
    :goto_57
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAnimatorDrawables return newSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_69

    move p2, v2

    goto :goto_6a

    :cond_69
    move p2, v1

    :goto_6a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mShutterButtonView: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez p2, :cond_77

    move v1, v2

    :cond_77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsPreviewStarted: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private loadSpecToView()V
    .registers 2

    .line 1319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_b

    .line 1320
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_b
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 1402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setImageResource(I)V
    .registers 2

    .line 1277
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showShutterGuideLayout()V
    .registers 8

    .line 1024
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    if-eqz v0, :cond_c3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsQuickRecording:Z

    if-nez v0, :cond_c3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mPanoramaCaptureBegin:Z

    if-nez v0, :cond_c3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCapturing:Z

    if-nez v0, :cond_c3

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSelfTimerBegin:Z

    if-nez v0, :cond_c3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 1029
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isFromIntent()Z

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c3

    const/4 v0, 0x1

    .line 1030
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLongPressed:Z

    .line 1031
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xd2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1032
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_guide_layout_action"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "shutter_guide_layout_show"

    .line 1033
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1034
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 1035
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;->onNotifyUIStateChange(Z)V

    .line 1037
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    .line 1038
    const-string v2, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/16 v2, 0x8

    goto :goto_4f

    :cond_4e
    move v2, v1

    .line 1037
    :goto_4f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8d

    .line 1040
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1041
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1044
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    .line 1045
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v4, v5, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1046
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1049
    :cond_8d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b8

    .line 1050
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x78

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x37

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_be

    .line 1052
    :cond_b8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1054
    :goto_be
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_c3
    return-void
.end method

.method private shutterUINewStyleSupport()Z
    .registers 3

    .line 182
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUINewStyleSupport:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 183
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x7

    if-eq v0, p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private stopAllAnimations()V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1, v2}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAnimations([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private varargs stopAnimations([Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1384
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_e

    aget-object v1, p1, v0

    if-eqz v1, :cond_b

    .line 1386
    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method private syncShutterGuideHeightWithButton()V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_9

    goto :goto_11

    .line 218
    :cond_9
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_11
    return-void
.end method

.method private translateShutter(ZZ)V
    .registers 9

    .line 1543
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->cancelFlipTranslateAnimator()V

    .line 1545
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1546
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->flip_shutter_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1548
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    if-nez v2, :cond_2b

    .line 1549
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->flip_shutter_0_translate_value:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    neg-int v2, v2

    .line 1550
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_39

    .line 1552
    :cond_2b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->flip_shutter_180_translate_value:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1553
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_39
    const/4 v1, 0x0

    if-eqz p2, :cond_7c

    const/4 p2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1557
    const-string/jumbo v5, "translationY"

    if-eqz p1, :cond_54

    .line 1558
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    int-to-float v0, v2

    new-array v2, v4, [F

    aput v1, v2, v3

    aput v0, v2, p2

    .line 1559
    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_68

    .line 1561
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1562
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    int-to-float v0, v2

    new-array v2, v4, [F

    aput v0, v2, v3

    aput v1, v2, p2

    .line 1563
    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 1565
    :goto_68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1566
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/AbstractShutterUI;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1567
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_7c
    if-eqz p1, :cond_85

    .line 1570
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    int-to-float p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1572
    :cond_85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private transmitMotionEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 790
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-nez v0, :cond_9

    goto :goto_79

    .line 793
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_59

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    const/4 v3, 0x3

    if-eq v0, v3, :cond_59

    goto :goto_79

    .line 795
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    if-eqz v0, :cond_4e

    .line 796
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 797
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 798
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 799
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setFakeMotionEvent(Z)V

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setFakeMotionEvent(Z)V

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setFakeMotionEvent(Z)V

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setFakeMotionEvent(Z)V

    .line 805
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x17e

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 808
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 809
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    .line 814
    :cond_59
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 815
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setFakeMotionEvent(Z)V

    .line 816
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setFakeMotionEvent(Z)V

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setFakeMotionEvent(Z)V

    .line 819
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setFakeMotionEvent(Z)V

    :cond_79
    :goto_79
    return-void
.end method

.method private updateFlipLayout(IZ)V
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_5

    return-void

    .line 616
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-nez v0, :cond_2f

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessing:Z

    if-nez v1, :cond_2f

    if-eqz p2, :cond_2f

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLastOrientation:I

    if-nez p2, :cond_15

    if-nez p1, :cond_19

    :cond_15
    if-eqz p2, :cond_2f

    if-nez p1, :cond_2f

    .line 619
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    if-nez p1, :cond_24

    .line 620
    new-instance p1, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    .line 622
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->runFadeAnim(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V

    return-void

    :cond_2f
    if-eqz v0, :cond_41

    .line 640
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    if-eqz p2, :cond_38

    .line 641
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->cancelAnim()V

    .line 643
    :cond_38
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p2, :cond_41

    const/high16 v0, 0x3f800000    # 1.0f

    .line 644
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_41
    const/4 p2, 0x0

    .line 647
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void
.end method

.method private updateImageResourceByState()V
    .registers 4

    .line 1260
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageResource(I)V

    return-void

    .line 1263
    :cond_d
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShutterButtonView isPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageResource(I)V

    :cond_38
    return-void
.end method

.method private updateLayout(IZ)V
    .registers 5

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterButtonLayout(IZ)V

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterGuideLayout(IZ)V

    .line 528
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->syncShutterGuideHeightWithButton()V

    .line 529
    sget-object p2, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateLayout mScreenFormType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVideoRecording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFlipSecondaryMenuShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", orientation: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateShutterButtonLayout(IZ)V
    .registers 10

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_6

    goto/16 :goto_142

    .line 402
    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 403
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 v1, 0x6

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const/16 v4, 0x5a

    const/4 v5, 0x0

    if-ne v0, v1, :cond_a9

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 407
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eq p1, v4, :cond_73

    if-eq p1, v3, :cond_5e

    if-eq p1, v2, :cond_49

    const/16 p1, 0x51

    .line 427
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 428
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_87

    :cond_49
    const/16 p1, 0x13

    .line 420
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 421
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_87

    :cond_5e
    const/16 p1, 0x31

    .line 415
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 416
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_87

    :cond_73
    const/16 p1, 0x15

    .line 410
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 411
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 431
    :goto_87
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a9
    const/4 p2, 0x7

    if-ne v0, p2, :cond_142

    .line 435
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 436
    invoke-virtual {p2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->flip_shutter_0_end_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->flip_shutter_bottom_margin:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 439
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-eqz v6, :cond_e2

    .line 440
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    .line 441
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/transsion/camera/R$dimen;->reocrding_flip_shutter_bottom_margin:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_101

    .line 442
    :cond_e2
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    if-eqz v5, :cond_101

    if-nez p1, :cond_f5

    .line 444
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/transsion/camera/R$dimen;->flip_shutter_bottom_margin_secondary_menu_show_0:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_101

    .line 446
    :cond_f5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/transsion/camera/R$dimen;->flip_shutter_bottom_margin_secondary_menu_show_180:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 450
    :cond_101
    :goto_101
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->cancelFlipTranslateAnimator()V

    .line 451
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    if-eq p1, v4, :cond_119

    if-eq p1, v3, :cond_119

    if-eq p1, v2, :cond_119

    const/16 p1, 0x55

    .line 463
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 464
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 465
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_121

    :cond_119
    const/16 p1, 0x35

    .line 457
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 458
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 459
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 467
    :goto_121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->flip_shutter_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 468
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->flip_shutter_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_142
    :goto_142
    return-void
.end method

.method private updateShutterGuideLayout(IZ)V
    .registers 12

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_5

    return-void

    .line 478
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 481
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 482
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 483
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->shutter_panel_guide_anim_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 485
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->shutter_panel_guide_anim_left_right_hover_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 486
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->shutter_guide_view_horizontal_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 487
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 488
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 489
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 490
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 492
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 v5, 0x1

    const/16 v6, 0xf

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    if-ne v4, v5, :cond_87

    .line 493
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setRotation(F)V

    .line 494
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setRotation(F)V

    .line 495
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit8 p1, p1, 0x5a

    rem-int/lit16 v4, p1, 0x168

    if-nez v4, :cond_77

    move p1, v8

    :cond_77
    invoke-virtual {v3, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 496
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 497
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 499
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 500
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_e3

    :cond_87
    if-eqz v4, :cond_d8

    const/4 p1, 0x3

    if-ne v4, p1, :cond_8d

    goto :goto_d8

    :cond_8d
    const/4 p1, 0x2

    if-ne v4, p1, :cond_b4

    .line 508
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v8, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 509
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->shutter_guide_view_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 510
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->shutter_guide_view_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_e3

    :cond_b4
    const/4 p1, 0x4

    if-eq v4, p1, :cond_ba

    const/4 v5, 0x5

    if-ne v4, v5, :cond_e3

    .line 513
    :cond_ba
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 514
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 515
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotation(F)V

    .line 516
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotation(F)V

    .line 517
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 518
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    if-ne v4, p1, :cond_d4

    const/16 v8, 0xb4

    :cond_d4
    invoke-virtual {v3, v8, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_e3

    .line 504
    :cond_d8
    :goto_d8
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 505
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 506
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v8, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 520
    :cond_e3
    :goto_e3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateShutterTypeImpl(IZ)V
    .registers 6

    .line 1081
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateShutterTypeImpl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1082
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-eq v0, p1, :cond_41

    .line 1083
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    const/4 v0, 0x0

    if-eqz p2, :cond_2c

    .line 1086
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1088
    :cond_2c
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p2, :cond_33

    .line 1089
    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1091
    :cond_33
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    .line 1092
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    .line 1093
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V

    .line 1094
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadSpecToView()V

    :cond_41
    return-void
.end method


# virtual methods
.method public getCShotButtonViewVisible()I
    .registers 1

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 755
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getIsCapturing()Z
    .registers 1

    .line 1334
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCapturing:Z

    return p0
.end method

.method public getQVideoButtonViewVisible()I
    .registers 1

    .line 760
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 763
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getShutterType()I
    .registers 1

    .line 1100
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    return p0
.end method

.method public getShutterTypeSelftimerOff()I
    .registers 1

    .line 1110
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .registers 1

    .line 1120
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    return p0
.end method

.method protected abstract getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
.end method

.method public hideCShotNumber()V
    .registers 1

    .line 1018
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz p0, :cond_7

    .line 1019
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->hideCShotNumber()V

    :cond_7
    return-void
.end method

.method public hideShutterButton()V
    .registers 2

    .line 1367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 1368
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 189
    sget v0, Lcom/transsion/camera/R$layout;->shutter_panel_shutter:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 190
    sget v0, Lcom/transsion/camera/R$id;->shutter_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    .line 191
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setScreenFormType(I)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->updateCurrentMode(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 198
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->updateOrientation(I)V

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAsyncInflater()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$layout;->shutter_panel_shutter_guide:I

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-virtual {p1, v0, p2, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    const/4 p1, 0x0

    .line 207
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_68

    .line 209
    const-string p2, "key_smooth_zoom_ui5"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p2, "key_focal_length_zoom_state"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 212
    :cond_68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    return-object p0
.end method

.method public isPressed()Z
    .registers 1

    .line 1380
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isRecordingAndOrientation(ZI)V
    .registers 6

    .line 653
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecordingAndOrientation isRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", recordingOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 656
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v1, v0, :cond_31

    return-void

    :cond_31
    if-eqz p1, :cond_36

    .line 660
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    goto :goto_39

    :cond_36
    const/4 p2, -0x1

    .line 662
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    .line 664
    :goto_39
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    .line 665
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateOrientation(IZ)V

    return-void
.end method

.method public isUIProcessingAndOrientation(ZI)V
    .registers 6

    .line 670
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 671
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUIProcessingAndOrientation, shutterUIProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", processingOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 673
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessing:Z

    .line 674
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessingOrientation:I

    .line 675
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateOrientation(IZ)V

    :cond_2d
    return-void
.end method

.method public loadAfterPreviewStarted()V
    .registers 3

    .line 536
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadAfterPreviewStarted."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    .line 538
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables()V

    return-void
.end method

.method public notifyCSNotSupport()V
    .registers 1

    .line 998
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz p0, :cond_7

    .line 999
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->notifyCSNotSupport()V

    :cond_7
    return-void
.end method

.method public notifyContinuousShotStop()V
    .registers 3

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_f

    .line 1061
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 1062
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->notifyContinuousShotStop()V

    .line 1064
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_1f

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCsViewAnimationStart:Z

    if-nez v1, :cond_1f

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    if-eqz p0, :cond_1f

    const/4 p0, 0x0

    .line 1065
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method public notifyLoseFocus()V
    .registers 2

    .line 1488
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 1489
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->resetUIState(Z)V

    :cond_8
    return-void
.end method

.method public onContinuousShotProgress(II)V
    .registers 4

    .line 1478
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onContinuousShotStop()V
    .registers 2

    .line 1483
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 5

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v1, v0, :cond_12

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_47

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_12

    goto :goto_47

    .line 570
    :cond_12
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLastOrientation:I

    .line 571
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    .line 572
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessing:Z

    if-eqz v0, :cond_1e

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessingOrientation:I

    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateOrientation(IZ)V

    .line 573
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->syncShutterGuideHeightWithButton()V

    .line 574
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_47

    .line 575
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getQVideoButtonViewVisible()I

    move-result p1

    if-nez p1, :cond_38

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsQuickRecording:Z

    if-nez p1, :cond_38

    .line 576
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->resetUIState()V

    .line 578
    :cond_38
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getCShotButtonViewVisible()I

    move-result p1

    if-nez p1, :cond_47

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    if-nez p1, :cond_47

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->resetUIState(Z)V

    :cond_47
    :goto_47
    return-void
.end method

.method public onPause()V
    .registers 5

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    .line 696
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    if-ne v0, v1, :cond_15

    .line 697
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 699
    :cond_15
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "mShutterButtonView clear pressed"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setIsCapturing(Z)V

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setIsQuickRecording(Z)V

    .line 703
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setSelfTimerBegin(Z)V

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setPanoramaCaptureBegin(Z)V

    .line 705
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->cancelFlipTranslateAnimator()V

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 708
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_45

    .line 709
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->pause()V

    .line 711
    :cond_45
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_55

    .line 712
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    const/4 v0, 0x7

    .line 713
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    if-ne v0, v3, :cond_55

    .line 714
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    .line 717
    :cond_55
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    .line 718
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCapturing:Z

    .line 719
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsQuickRecording:Z

    .line 720
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mPanoramaCaptureBegin:Z

    .line 721
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSelfTimerBegin:Z

    .line 722
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLongPressed:Z

    .line 723
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    .line 724
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 725
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCsViewAnimationStart:Z

    .line 726
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    .line 727
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSuperNightLiteCapture:Z

    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v0, 0x1

    .line 681
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    .line 682
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v1, :cond_a

    .line 683
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 686
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2f

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    .line 687
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    .line 688
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 689
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 1517
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    .line 1518
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_9

    .line 1519
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->onScreenFormChanged(I)V

    .line 1521
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz v0, :cond_10

    .line 1522
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->onScreenFormChanged(I)V

    .line 1524
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_17

    .line 1525
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->onScreenFormChanged(IZ)V

    .line 1527
    :cond_17
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void
.end method

.method protected playShutterUIAnimation()V
    .registers 2

    .line 1224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1225
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x1

    .line 1226
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1227
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public setContinuousShotEnd(Z)V
    .registers 3

    .line 1584
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousHideSaveAnimation:Z

    if-eqz v0, :cond_d

    .line 1585
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setEnabled(Z)V

    :cond_d
    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 1356
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShutterButtonView setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_23

    .line 1357
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFocalLengthZoomSate:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 1358
    const-string p0, "Shutter setEnable return for focal length zoom dragging"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1361
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_2a

    .line 1362
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setEnabled(Z)V

    :cond_2a
    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .registers 2

    .line 341
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCameraSwitching:Z

    return-void
.end method

.method public setIsCapturing(Z)V
    .registers 2

    .line 1326
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCapturing:Z

    .line 1327
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    .line 1328
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setIsCapturing(Z)V

    :cond_9
    return-void
.end method

.method public setIsContinuousShooting(Z)V
    .registers 2

    .line 1339
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    return-void
.end method

.method public setIsPhotoSizeChanging(Z)V
    .registers 2

    .line 346
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPhotoSizeChanging:Z

    return-void
.end method

.method public setIsQuickVideoRecording(Z)V
    .registers 3

    .line 1495
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsQuickRecording:Z

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    .line 1497
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    .line 1499
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz v0, :cond_e

    .line 1500
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setIsQuickRecording(Z)V

    .line 1502
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_15

    .line 1503
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setIsQuickRecording(Z)V

    :cond_15
    return-void
.end method

.method public setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    return-void
.end method

.method public setPanoramaCaptureBegin(Z)V
    .registers 2

    .line 1509
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mPanoramaCaptureBegin:Z

    .line 1510
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    .line 1511
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setPanoramaCaptureBegin(Z)V

    :cond_9
    return-void
.end method

.method public setSelfTimerBegin(Z)V
    .registers 2

    .line 1349
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSelfTimerBegin:Z

    .line 1350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    .line 1351
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setSelfTimerBegin(Z)V

    :cond_9
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 786
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .registers 2

    .line 1105
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .registers 2

    .line 1115
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    return-void
.end method

.method public setSuperNightLiteCaptureState(Z)V
    .registers 2

    .line 1344
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSuperNightLiteCapture:Z

    return-void
.end method

.method public setSwipeOperationListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;)V
    .registers 2

    .line 737
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    return-void
.end method

.method public setupViews()V
    .registers 4

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setOnShutterListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setMotionEventListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;)V

    .line 394
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadSpecToView()V

    .line 395
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterButtonLayout(IZ)V

    return-void
.end method

.method public showCShotNumber()V
    .registers 3

    .line 1005
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 1006
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz p0, :cond_10

    .line 1009
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->showCShotNumber()V

    :cond_10
    return-void
.end method

.method public showShutterButton()V
    .registers 2

    .line 1373
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 1374
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public stopQuickVideo()V
    .registers 4

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_d

    const/4 v1, 0x0

    .line 743
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 745
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz p0, :cond_14

    .line 746
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->stopQuickVideo()V

    :cond_14
    return-void
.end method

.method public transitionToIdle()V
    .registers 7

    .line 1169
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1170
    :goto_9
    sget-object v3, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transitionToIdle, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1171
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    .line 1173
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    return-void

    .line 1177
    :cond_32
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_59

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v3, :cond_59

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    if-eqz v3, :cond_59

    .line 1179
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1180
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1182
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1183
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1184
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .line 1187
    :cond_59
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1188
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v1, :cond_64

    goto :goto_82

    .line 1192
    :cond_64
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    if-eqz v0, :cond_7f

    .line 1194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7f

    .line 1195
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$6;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void

    .line 1206
    :cond_7f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_82
    :goto_82
    return-void
.end method

.method public transitionToPressed(Z)V
    .registers 3

    .line 1252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_9

    goto :goto_11

    .line 1255
    :cond_9
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->drawableStateChanged()V

    :cond_11
    :goto_11
    return-void
.end method

.method public transitionToProcessing()V
    .registers 6

    .line 1129
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1130
    :goto_8
    sget-object v2, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transitionToProcessing, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1131
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1132
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v3, :cond_8c

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v3, :cond_34

    goto :goto_8c

    .line 1135
    :cond_34
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1136
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1137
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1139
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_62

    .line 1140
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1142
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1143
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1144
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .line 1148
    :cond_62
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1150
    const-string/jumbo v3, "transitionToProcessing, cancel Animation"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_75
    if-eqz v0, :cond_89

    .line 1154
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_89

    .line 1155
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void

    .line 1163
    :cond_89
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public transitionToSmile()V
    .registers 4

    .line 1212
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionToSmile, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_22

    goto :goto_31

    .line 1216
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_31

    const/4 v1, 0x2

    .line 1217
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1218
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1219
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->playShutterUIAnimation()V

    :cond_31
    :goto_31
    return-void
.end method

.method public transitionToVoice()V
    .registers 5

    .line 1232
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionToVoice, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_22

    goto :goto_55

    .line 1236
    :cond_22
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    .line 1237
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1238
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x50

    .line 1239
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1240
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    .line 1241
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1247
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_55
    :goto_55
    return-void
.end method

.method public unInit()V
    .registers 4

    const/4 v0, 0x1

    .line 543
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    if-eqz v0, :cond_a

    .line 545
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->cancelAnim()V

    .line 547
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 548
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 550
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAllAnimations()V

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_27

    .line 552
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 554
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3b

    .line 555
    const-string v1, "key_smooth_zoom_ui5"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_focal_length_zoom_state"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_3b
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    .line 385
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->updateCurrentMode(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public updateFlipSecondaryMenuState(ZZ)V
    .registers 6

    .line 1532
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFlipSecondaryMenuState show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFlipSecondaryMenuShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", anim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1535
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    if-ne v0, p1, :cond_38

    const/4 p2, 0x0

    .line 1538
    :cond_38
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    .line 1539
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->translateShutter(ZZ)V

    return-void
.end method

.method protected updateLayoutParams(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 4

    .line 237
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelRoot:Landroid/view/ViewGroup;

    .line 238
    sget p2, Lcom/transsion/camera/R$id;->continuous_shutter_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    .line 239
    sget p2, Lcom/transsion/camera/R$id;->quick_video_shutter_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    .line 240
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel_guide_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 242
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel_guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    .line 243
    sget p3, Lcom/transsion/camera/R$id;->continuous_shot_guide_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    .line 244
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    sget p3, Lcom/transsion/camera/R$id;->quick_video_guide_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    .line 245
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel_guide_anim:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 246
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->initLottieView(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setCShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setScreenManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setScreenManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setQVButtonOperationControl(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;)V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x6

    if-eq p2, p1, :cond_83

    .line 253
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 256
    :cond_83
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateLayoutParams(II)V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->updateLayoutParams(II)V

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->ringScreenLightUpdateUI()V

    .line 260
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterGuideLayout(IZ)V

    .line 261
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->syncShutterGuideHeightWithButton()V

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 6

    .line 586
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_7

    .line 587
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    goto :goto_8

    :cond_7
    move v0, p1

    .line 591
    :goto_8
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v1, :cond_f

    .line 592
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->updateOrientation(I)V

    .line 594
    :cond_f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v1, :cond_16

    .line 595
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateOrientation(I)V

    .line 597
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz v1, :cond_1d

    .line 598
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->updateOrientation(I)V

    .line 600
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v2, v1, :cond_3a

    .line 601
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_35

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_34

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_35

    :cond_34
    return-void

    :cond_35
    const/4 p1, 0x0

    .line 604
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void

    .line 605
    :cond_3a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v2, v1, :cond_47

    .line 606
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateFlipLayout(IZ)V

    return-void

    .line 608
    :cond_47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void
.end method

.method public updateShutterType(IZ)V
    .registers 6

    .line 1071
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateShutterType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1072
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    if-eqz v0, :cond_33

    .line 1073
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    add-int/lit16 p1, p1, 0x2710

    .line 1077
    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    return-void
.end method
