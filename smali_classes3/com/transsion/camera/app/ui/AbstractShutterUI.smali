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

.field private mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

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

.field private mSizeState:I

.field private mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

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

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 123
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, -0x1

    .line 129
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    .line 130
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    .line 131
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    .line 140
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    const/4 v2, 0x1

    .line 145
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    .line 146
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    .line 147
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    .line 153
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 167
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessingOrientation:I

    .line 175
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFocalLengthZoomSate:I

    .line 273
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    .line 353
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    .line 1502
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$9;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 1700
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractShutterUI$10;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$10;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 178
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 180
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    .line 181
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 182
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractShutterUI$MainHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$MainHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    .line 183
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

    .line 1689
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1690
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_f
    return-void
.end method

.method private getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private initLottieView(Lcom/airbnb/lottie/LottieAnimationView;)V
    .registers 2

    .line 269
    const-string p0, "shutter_panel_guide_anim.json"

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 270
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$2()V
    .registers 5

    .line 1514
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-eqz v0, :cond_39

    .line 1515
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-ge v0, v2, :cond_1d

    sget-object v3, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1516
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    .line 1518
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_26

    .line 1519
    sget v1, Lcom/transsion/camera/R$drawable;->ic_continuous_shot_guide_view_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1521
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2f

    .line 1522
    sget v1, Lcom/transsion/camera/R$drawable;->ic_quick_video_guide_view_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1524
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6b

    .line 1525
    const-string v1, "shutter_panel_guide_black_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_6b

    .line 1528
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

    .line 1529
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    .line 1531
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_59

    .line 1532
    sget v1, Lcom/transsion/camera/R$drawable;->ic_continuous_shot_guide_view:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1534
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    if-eqz v0, :cond_62

    .line 1535
    sget v1, Lcom/transsion/camera/R$drawable;->ic_quick_video_guide_view:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1537
    :cond_62
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6b

    .line 1538
    const-string v1, "shutter_panel_guide_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 1541
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz v0, :cond_74

    .line 1542
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->ringScreenLightUpdateUI(Z)V

    .line 1544
    :cond_74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_7d

    .line 1545
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->ringScreenLightUpdateUI(Z)V

    :cond_7d
    return-void
.end method

.method private synthetic lambda$syncShutterGuideHeightWithButton$0()V
    .registers 4

    const/4 v0, 0x2

    .line 224
    :try_start_1
    new-array v0, v0, [I

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 226
    aget v0, v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 230
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception p0

    .line 235
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

    .line 1324
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    .line 1325
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1326
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1327
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1328
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x28

    .line 1329
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1330
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private loadAnimatorDrawables()V
    .registers 3

    const/4 v0, 0x0

    .line 1368
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V

    return-void
.end method

.method private loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V
    .registers 7

    if-eqz p2, :cond_97

    .line 1372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_97

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    if-nez v0, :cond_c

    goto/16 :goto_97

    .line 1377
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAllAnimations()V

    .line 1378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    .line 1380
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    if-eq v2, v3, :cond_2b

    .line 1381
    :cond_1e
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    if-lez v2, :cond_29

    .line 1382
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2b

    .line 1384
    :cond_29
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2b
    :goto_2b
    if-eqz p1, :cond_33

    .line 1388
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    if-eq v2, v3, :cond_40

    .line 1389
    :cond_33
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    if-lez v2, :cond_3e

    .line 1390
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_40

    .line 1392
    :cond_3e
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    :cond_40
    :goto_40
    if-eqz p1, :cond_48

    .line 1396
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    if-eq v2, v3, :cond_55

    .line 1397
    :cond_48
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    if-lez v2, :cond_53

    .line 1398
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_55

    .line 1400
    :cond_53
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    :cond_55
    :goto_55
    if-eqz p1, :cond_5d

    .line 1404
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    if-eq v2, v3, :cond_6a

    .line 1405
    :cond_5d
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    if-lez v2, :cond_68

    .line 1406
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6a

    .line 1408
    :cond_68
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    :cond_6a
    :goto_6a
    if-eqz p1, :cond_72

    .line 1412
    iget v2, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    iget v3, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    if-eq v2, v3, :cond_7f

    .line 1413
    :cond_72
    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    if-lez v2, :cond_7d

    .line 1414
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7f

    .line 1416
    :cond_7d
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    :cond_7f
    :goto_7f
    if-eqz p1, :cond_89

    .line 1420
    iget p1, p1, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    iget v2, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    if-eq p1, v2, :cond_88

    goto :goto_89

    :cond_88
    return-void

    .line 1421
    :cond_89
    :goto_89
    iget p1, p2, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    if-lez p1, :cond_94

    .line 1422
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 1424
    :cond_94
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 1373
    :cond_97
    :goto_97
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAnimatorDrawables return newSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_a9

    move p2, v2

    goto :goto_aa

    :cond_a9
    move p2, v1

    :goto_aa
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mShutterButtonView: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez p2, :cond_b7

    move v1, v2

    :cond_b7
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

    .line 1430
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_b

    .line 1431
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_b
    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 1513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1360
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setImageResource(I)V
    .registers 2

    .line 1364
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private showShutterGuideLayout()V
    .registers 8

    .line 1029
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

    .line 1034
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isFromIntent()Z

    move-result v0

    if-nez v0, :cond_c3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c3

    const/4 v0, 0x1

    .line 1035
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLongPressed:Z

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xd2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1037
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_guide_layout_action"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "shutter_guide_layout_show"

    .line 1038
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1039
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 1040
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;->onNotifyUIStateChange(Z)V

    .line 1042
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    .line 1043
    const-string v2, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/16 v2, 0x8

    goto :goto_4f

    :cond_4e
    move v2, v1

    .line 1042
    :goto_4f
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1044
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8d

    .line 1045
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1046
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1049
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    .line 1050
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f28f5c3    # 0.66f

    invoke-direct {v4, v5, v2, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1051
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1054
    :cond_8d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b8

    .line 1055
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

    .line 1057
    :cond_b8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 1059
    :goto_be
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_c3
    return-void
.end method

.method private shutterUINewStyleSupport()Z
    .registers 3

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUINewStyleSupport:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 188
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 189
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
    .registers 7

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    filled-new-array/range {v0 .. v5}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAnimations([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private varargs stopAnimations([Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 1495
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_e

    aget-object v1, p1, v0

    if-eqz v1, :cond_b

    .line 1497
    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method private syncShutterGuideHeightWithButton()V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_9

    goto :goto_11

    .line 222
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

    .line 1654
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->cancelFlipTranslateAnimator()V

    .line 1656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1657
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->flip_shutter_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1659
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    if-nez v2, :cond_2b

    .line 1660
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->flip_shutter_0_translate_value:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    neg-int v2, v2

    .line 1661
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_39

    .line 1663
    :cond_2b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->flip_shutter_180_translate_value:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1664
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_39
    const/4 v1, 0x0

    if-eqz p2, :cond_7c

    const/4 p2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1668
    const-string/jumbo v5, "translationY"

    if-eqz p1, :cond_54

    .line 1669
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    int-to-float v0, v2

    new-array v2, v4, [F

    aput v1, v2, v3

    aput v0, v2, p2

    .line 1670
    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_68

    .line 1672
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1673
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    int-to-float v0, v2

    new-array v2, v4, [F

    aput v0, v2, v3

    aput v1, v2, p2

    .line 1674
    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 1676
    :goto_68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1677
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/AbstractShutterUI;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1678
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_7c
    if-eqz p1, :cond_85

    .line 1681
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    int-to-float p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1683
    :cond_85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private transmitMotionEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-nez v0, :cond_9

    goto :goto_79

    .line 798
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

    .line 800
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    if-eqz v0, :cond_4e

    .line 801
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 802
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 803
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 804
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setFakeMotionEvent(Z)V

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setFakeMotionEvent(Z)V

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setFakeMotionEvent(Z)V

    .line 808
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setFakeMotionEvent(Z)V

    .line 810
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x17e

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 813
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 814
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    .line 819
    :cond_59
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setFakeMotionEvent(Z)V

    .line 821
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setFakeMotionEvent(Z)V

    .line 823
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setFakeMotionEvent(Z)V

    .line 824
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 825
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setFakeMotionEvent(Z)V

    :cond_79
    :goto_79
    return-void
.end method

.method private updateFlipLayout(IZ)V
    .registers 5

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_5

    return-void

    .line 621
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

    .line 624
    :cond_19
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    if-nez p1, :cond_24

    .line 625
    new-instance p1, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    .line 627
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->runFadeAnim(Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;)V

    return-void

    :cond_2f
    if-eqz v0, :cond_41

    .line 645
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    if-eqz p2, :cond_38

    .line 646
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->cancelAnim()V

    .line 648
    :cond_38
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p2, :cond_41

    const/high16 v0, 0x3f800000    # 1.0f

    .line 649
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_41
    const/4 p2, 0x0

    .line 652
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void
.end method

.method private updateImageResourceByState()V
    .registers 4

    .line 1343
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageResource(I)V

    return-void

    .line 1346
    :cond_d
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    if-lez v0, :cond_1b

    .line 1347
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageResource(I)V

    return-void

    .line 1349
    :cond_1b
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

    .line 1350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    iget v0, v0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageResource(I)V

    :cond_46
    return-void
.end method

.method private updateLayout(IZ)V
    .registers 5

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterButtonLayout(IZ)V

    .line 531
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterGuideLayout(IZ)V

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->syncShutterGuideHeightWithButton()V

    .line 533
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

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_6

    goto/16 :goto_142

    .line 406
    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 407
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 409
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 v1, 0x6

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const/16 v4, 0x5a

    const/4 v5, 0x0

    if-ne v0, v1, :cond_a9

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eq p1, v4, :cond_73

    if-eq p1, v3, :cond_5e

    if-eq p1, v2, :cond_49

    const/16 p1, 0x51

    .line 431
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 432
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 433
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

    .line 424
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 425
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 426
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

    .line 419
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 420
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 421
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

    .line 414
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 415
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_bottom_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 435
    :goto_87
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->aod_shutter_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_a9
    const/4 p2, 0x7

    if-ne v0, p2, :cond_142

    .line 439
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 440
    invoke-virtual {p2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->flip_shutter_0_end_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/transsion/camera/R$dimen;->flip_shutter_bottom_margin:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 443
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-eqz v6, :cond_e2

    .line 444
    iput-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/transsion/camera/R$dimen;->reocrding_flip_shutter_bottom_margin:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_101

    .line 446
    :cond_e2
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    if-eqz v5, :cond_101

    if-nez p1, :cond_f5

    .line 448
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/transsion/camera/R$dimen;->flip_shutter_bottom_margin_secondary_menu_show_0:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_101

    .line 450
    :cond_f5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/transsion/camera/R$dimen;->flip_shutter_bottom_margin_secondary_menu_show_180:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 454
    :cond_101
    :goto_101
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->cancelFlipTranslateAnimator()V

    .line 455
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    if-eq p1, v4, :cond_119

    if-eq p1, v3, :cond_119

    if-eq p1, v2, :cond_119

    const/16 p1, 0x55

    .line 467
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 468
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 469
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_121

    :cond_119
    const/16 p1, 0x35

    .line 461
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 462
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 463
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 471
    :goto_121
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->flip_shutter_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 472
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->flip_shutter_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_142
    :goto_142
    return-void
.end method

.method private updateShutterGuideLayout(IZ)V
    .registers 12

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_5

    return-void

    .line 482
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 485
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 486
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 487
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->shutter_panel_guide_anim_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 489
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->shutter_panel_guide_anim_left_right_hover_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 490
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->shutter_guide_view_horizontal_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 491
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 492
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 493
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 494
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 496
    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 v5, 0x1

    const/16 v6, 0xf

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x0

    if-ne v4, v5, :cond_87

    .line 497
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setRotation(F)V

    .line 498
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setRotation(F)V

    .line 499
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit8 p1, p1, 0x5a

    rem-int/lit16 v4, p1, 0x168

    if-nez v4, :cond_77

    move p1, v8

    :cond_77
    invoke-virtual {v3, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 500
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 501
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 503
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 504
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

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v8, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 513
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->shutter_guide_view_horizontal_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 514
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

    .line 517
    :cond_ba
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 518
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 519
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotation(F)V

    .line 520
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setRotation(F)V

    .line 521
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 522
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    if-ne v4, p1, :cond_d4

    const/16 v8, 0xb4

    :cond_d4
    invoke-virtual {v3, v8, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_e3

    .line 508
    :cond_d8
    :goto_d8
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 509
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 510
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v8, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 524
    :cond_e3
    :goto_e3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateShutterTypeImpl(IZ)V
    .registers 6

    .line 1086
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

    .line 1087
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    if-eq v0, p1, :cond_41

    .line 1088
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    const/4 v0, 0x0

    if-eqz p2, :cond_2c

    .line 1091
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1093
    :cond_2c
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p2, :cond_33

    .line 1094
    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1096
    :cond_33
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    .line 1097
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    .line 1098
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables(Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;)V

    .line 1099
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadSpecToView()V

    :cond_41
    return-void
.end method


# virtual methods
.method public getCShotButtonViewVisible()I
    .registers 1

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 760
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getIsCapturing()Z
    .registers 1

    .line 1445
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCapturing:Z

    return p0
.end method

.method public getQVideoButtonViewVisible()I
    .registers 1

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 768
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getShutterType()I
    .registers 1

    .line 1105
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterType:I

    return p0
.end method

.method public getShutterTypeSelftimerOff()I
    .registers 1

    .line 1115
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    return p0
.end method

.method public getShutterTypeSelftimerOn()I
    .registers 1

    .line 1125
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    return p0
.end method

.method protected abstract getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
.end method

.method public hideCShotNumber()V
    .registers 1

    .line 1023
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz p0, :cond_7

    .line 1024
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->hideCShotNumber()V

    :cond_7
    return-void
.end method

.method public hideShutterButton()V
    .registers 2

    .line 1478
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 1479
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 194
    sget v0, Lcom/transsion/camera/R$layout;->shutter_panel_shutter:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 195
    sget v0, Lcom/transsion/camera/R$id;->shutter_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    .line 196
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setScreenFormType(I)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->updateCurrentMode(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 203
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->updateOrientation(I)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAsyncInflater()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$layout;->shutter_panel_shutter_guide:I

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-virtual {p1, v0, p2, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_5f

    .line 214
    const-string p2, "key_focal_length_zoom_state"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 216
    :cond_5f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    return-object p0
.end method

.method public isPressed()Z
    .registers 1

    .line 1491
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

    .line 658
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

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 661
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v1, v0, :cond_31

    return-void

    :cond_31
    if-eqz p1, :cond_36

    .line 665
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    goto :goto_39

    :cond_36
    const/4 p2, -0x1

    .line 667
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    .line 669
    :goto_39
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    .line 670
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateOrientation(IZ)V

    return-void
.end method

.method public isUIProcessingAndOrientation(ZI)V
    .registers 6

    .line 675
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 676
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

    .line 678
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessing:Z

    .line 679
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessingOrientation:I

    .line 680
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateOrientation(IZ)V

    :cond_2d
    return-void
.end method

.method public loadAfterPreviewStarted()V
    .registers 3

    .line 540
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "loadAfterPreviewStarted."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPreviewStarted:Z

    .line 542
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadAnimatorDrawables()V

    return-void
.end method

.method public notifyCSNotSupport()V
    .registers 1

    .line 1003
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz p0, :cond_7

    .line 1004
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->notifyCSNotSupport()V

    :cond_7
    return-void
.end method

.method public notifyContinuousShotStop()V
    .registers 3

    .line 1065
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_f

    .line 1066
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 1067
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->notifyContinuousShotStop()V

    .line 1069
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_1f

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCsViewAnimationStart:Z

    if-nez v1, :cond_1f

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    if-eqz p0, :cond_1f

    const/4 p0, 0x0

    .line 1070
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method public notifyLoseFocus()V
    .registers 2

    .line 1599
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    .line 1600
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->resetUIState(Z)V

    :cond_8
    return-void
.end method

.method public onContinuousShotProgress(II)V
    .registers 4

    .line 1589
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onContinuousShotStop()V
    .registers 2

    .line 1594
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 5

    .line 571
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

    .line 575
    :cond_12
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLastOrientation:I

    .line 576
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    .line 577
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessing:Z

    if-eqz v0, :cond_1e

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterUIProcessingOrientation:I

    :cond_1e
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateOrientation(IZ)V

    .line 578
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->syncShutterGuideHeightWithButton()V

    .line 579
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_47

    .line 580
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getQVideoButtonViewVisible()I

    move-result p1

    if-nez p1, :cond_38

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsQuickRecording:Z

    if-nez p1, :cond_38

    .line 581
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->resetUIState()V

    .line 583
    :cond_38
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getCShotButtonViewVisible()I

    move-result p1

    if-nez p1, :cond_47

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    if-nez p1, :cond_47

    .line 584
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->resetUIState(Z)V

    :cond_47
    :goto_47
    return-void
.end method

.method public onPause()V
    .registers 5

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    if-ne v0, v1, :cond_15

    .line 702
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 704
    :cond_15
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "mShutterButtonView clear pressed"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setIsCapturing(Z)V

    .line 707
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setIsQuickRecording(Z)V

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setSelfTimerBegin(Z)V

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setPanoramaCaptureBegin(Z)V

    .line 710
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->cancelFlipTranslateAnimator()V

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 713
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_45

    .line 714
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->pause()V

    .line 716
    :cond_45
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_55

    .line 717
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    const/4 v0, 0x7

    .line 718
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    if-ne v0, v3, :cond_55

    .line 719
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    .line 722
    :cond_55
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    .line 723
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCapturing:Z

    .line 724
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsQuickRecording:Z

    .line 725
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mPanoramaCaptureBegin:Z

    .line 726
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSelfTimerBegin:Z

    .line 727
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLongPressed:Z

    .line 728
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    .line 729
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 730
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCsViewAnimationStart:Z

    .line 731
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    .line 732
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSuperNightLiteCapture:Z

    return-void
.end method

.method public onResume()V
    .registers 4

    const/4 v0, 0x1

    .line 686
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    .line 687
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v1, :cond_a

    .line 688
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 691
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2f

    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    .line 692
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    .line 693
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 694
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 1628
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    .line 1629
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v0, :cond_9

    .line 1630
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->onScreenFormChanged(I)V

    .line 1632
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz v0, :cond_10

    .line 1633
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->onScreenFormChanged(I)V

    .line 1635
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_17

    .line 1636
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->onScreenFormChanged(IZ)V

    .line 1638
    :cond_17
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void
.end method

.method protected playShutterUIAnimation()V
    .registers 2

    .line 1307
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1308
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x1

    .line 1309
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1310
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public setContinuousShotEnd(Z)V
    .registers 3

    .line 1695
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mContinuousHideSaveAnimation:Z

    if-eqz v0, :cond_d

    .line 1696
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setEnabled(Z)V

    :cond_d
    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 1467
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

    .line 1468
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFocalLengthZoomSate:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 1469
    const-string p0, "Shutter setEnable return for focal length zoom dragging"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1472
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_2a

    .line 1473
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setEnabled(Z)V

    :cond_2a
    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .registers 2

    .line 345
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCameraSwitching:Z

    return-void
.end method

.method public setIsCapturing(Z)V
    .registers 2

    .line 1437
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsCapturing:Z

    .line 1438
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    .line 1439
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setIsCapturing(Z)V

    :cond_9
    return-void
.end method

.method public setIsContinuousShooting(Z)V
    .registers 2

    .line 1450
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsContinuousShooting:Z

    return-void
.end method

.method public setIsPhotoSizeChanging(Z)V
    .registers 2

    .line 350
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsPhotoSizeChanging:Z

    return-void
.end method

.method public setIsQuickVideoRecording(Z)V
    .registers 3

    .line 1606
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsQuickRecording:Z

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    .line 1608
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSwipeEnd:Z

    .line 1610
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz v0, :cond_e

    .line 1611
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setIsQuickRecording(Z)V

    .line 1613
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_15

    .line 1614
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setIsQuickRecording(Z)V

    :cond_15
    return-void
.end method

.method public setOnShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;)V
    .registers 2

    .line 737
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterListener:Lcom/transsion/camera/app/common/IAppUIListener$IShutterListener;

    return-void
.end method

.method public setPanoramaCaptureBegin(Z)V
    .registers 2

    .line 1620
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mPanoramaCaptureBegin:Z

    .line 1621
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    .line 1622
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setPanoramaCaptureBegin(Z)V

    :cond_9
    return-void
.end method

.method public setSelfTimerBegin(Z)V
    .registers 2

    .line 1460
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSelfTimerBegin:Z

    .line 1461
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    .line 1462
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setSelfTimerBegin(Z)V

    :cond_9
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 791
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterTypeSelftimerOff(I)V
    .registers 2

    .line 1110
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOff:I

    return-void
.end method

.method public setShutterTypeSelftimerOn(I)V
    .registers 2

    .line 1120
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterTypeSelftimerOn:I

    return-void
.end method

.method public setSuperNightLiteCaptureState(Z)V
    .registers 2

    .line 1455
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsSuperNightLiteCapture:Z

    return-void
.end method

.method public setSwipeOperationListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;)V
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSwipeOperationListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwipeOperationListener;

    return-void
.end method

.method public setupViews()V
    .registers 4

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterButtonListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setOnShutterListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;)V

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI-IA;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->setMotionEventListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;)V

    .line 398
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->loadSpecToView()V

    .line 399
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterButtonLayout(IZ)V

    return-void
.end method

.method public showCShotNumber()V
    .registers 3

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 1011
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz p0, :cond_10

    .line 1014
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->showCShotNumber()V

    :cond_10
    return-void
.end method

.method public showShutterButton()V
    .registers 2

    .line 1484
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 1485
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public stopQuickVideo()V
    .registers 4

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v0, :cond_d

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_d

    const/4 v1, 0x0

    .line 748
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 750
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz p0, :cond_14

    .line 751
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->stopQuickVideo()V

    :cond_14
    return-void
.end method

.method public transitionToIdle()V
    .registers 7

    .line 1241
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1242
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

    .line 1243
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_32

    .line 1245
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    return-void

    .line 1249
    :cond_32
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_59

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v3, :cond_59

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsResumed:Z

    if-eqz v3, :cond_59

    .line 1251
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1252
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1253
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1254
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1255
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1256
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .line 1259
    :cond_59
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1260
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_64

    goto :goto_8a

    .line 1264
    :cond_64
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    .line 1266
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    if-ne v2, v1, :cond_73

    .line 1267
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    return-void

    :cond_73
    if-eqz v0, :cond_87

    .line 1271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_87

    .line 1272
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1273
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mProcessingToIdleDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$8;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void

    .line 1283
    :cond_87
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public transitionToPressed(Z)V
    .registers 3

    .line 1335
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_9

    goto :goto_11

    .line 1338
    :cond_9
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1339
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->drawableStateChanged()V

    :cond_11
    :goto_11
    return-void
.end method

.method public transitionToProcessing()V
    .registers 6

    .line 1201
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1202
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

    .line 1203
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1204
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v3, :cond_8c

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v3, :cond_34

    goto :goto_8c

    .line 1207
    :cond_34
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1208
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1209
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1211
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_62

    .line 1212
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1213
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1214
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1215
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1216
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .line 1220
    :cond_62
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 1222
    const-string/jumbo v3, "transitionToProcessing, cancel Animation"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_75
    if-eqz v0, :cond_89

    .line 1226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_89

    .line 1227
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToProcessingDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$7;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void

    .line 1235
    :cond_89
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public transitionToRegular()V
    .registers 7

    .line 1173
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1174
    :goto_9
    sget-object v3, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transitionToRegular, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1175
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    .line 1176
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v2, :cond_35

    goto :goto_5f

    .line 1180
    :cond_35
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1182
    const-string/jumbo v2, "transitionToRegular, cancel Animation"

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_48
    if-eqz v0, :cond_5c

    .line 1186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5c

    .line 1187
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToRegularDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$6;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void

    .line 1195
    :cond_5c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public transitionToSmall()V
    .registers 6

    .line 1134
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1135
    :goto_8
    sget-object v2, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transitionToSmall, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1136
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    .line 1137
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v3, :cond_34

    goto :goto_5e

    .line 1141
    :cond_34
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/AnimationUtils;->stopVectorAnimation(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1143
    const-string/jumbo v3, "transitionToSmall, cancel Animation"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setEnable(Z)V

    :cond_47
    if-eqz v0, :cond_5b

    .line 1147
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5b

    .line 1148
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1149
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRegularToSmallDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->startVectorAnimation(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void

    .line 1167
    :cond_5b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateImageResourceByState()V

    :cond_5e
    :goto_5e
    return-void
.end method

.method public transitionToSmile()V
    .registers 4

    .line 1289
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionToSmile, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSizeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_2c

    goto :goto_4f

    .line 1293
    :cond_2c
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_41

    .line 1294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSmallToSmileDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_4f

    .line 1295
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1296
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1297
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->playShutterUIAnimation()V

    return-void

    .line 1299
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIdleToSmileDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_4f

    .line 1300
    iput v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    .line 1301
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1302
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->playShutterUIAnimation()V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public transitionToVoice()V
    .registers 5

    .line 1315
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionToVoice, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mDrawableState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSizeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSizeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mUISpec:Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-nez v0, :cond_2c

    goto :goto_5f

    .line 1319
    :cond_2c
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    .line 1320
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1321
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x50

    .line 1322
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v3, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1323
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    .line 1324
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1330
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public unInit()V
    .registers 3

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mSimulateDownEvent:Z

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFadeAnim:Lcom/transsion/camera/app/common/ui/anim/FadeAnim;

    if-eqz v0, :cond_a

    .line 549
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/anim/FadeAnim;->cancelAnim()V

    .line 551
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    .line 552
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 554
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->stopAllAnimations()V

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v1, v0, :cond_27

    .line 556
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 558
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_32

    .line 559
    const-string v1, "key_focal_length_zoom_state"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_32
    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCurrentModeName:Ljava/lang/String;

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz p0, :cond_9

    .line 389
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->updateCurrentMode(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public updateFlipSecondaryMenuState(ZZ)V
    .registers 6

    .line 1643
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

    .line 1646
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    if-ne v0, p1, :cond_38

    const/4 p2, 0x0

    .line 1649
    :cond_38
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mFlipSecondaryMenuShow:Z

    .line 1650
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->translateShutter(ZZ)V

    return-void
.end method

.method protected updateLayoutParams(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 4

    .line 241
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelRoot:Landroid/view/ViewGroup;

    .line 242
    sget p2, Lcom/transsion/camera/R$id;->continuous_shutter_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    .line 243
    sget p2, Lcom/transsion/camera/R$id;->quick_video_shutter_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    .line 244
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel_guide_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 246
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel_guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    .line 247
    sget p3, Lcom/transsion/camera/R$id;->continuous_shot_guide_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mCShotGuideView:Landroid/widget/ImageView;

    .line 248
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterPanelGuideLayout:Landroid/widget/RelativeLayout;

    sget p3, Lcom/transsion/camera/R$id;->quick_video_guide_view:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoGuideView:Landroid/widget/ImageView;

    .line 249
    sget p2, Lcom/transsion/camera/R$id;->shutter_panel_guide_anim:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 250
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->initLottieView(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setCShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->setScreenManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setScreenManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->setQVButtonOperationControl(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;)V

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 p2, 0x6

    if-eq p2, p1, :cond_83

    .line 257
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 260
    :cond_83
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateLayoutParams(II)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    iget p3, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenFormType:I

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->updateLayoutParams(II)V

    .line 263
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->ringScreenLightUpdateUI()V

    .line 264
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOrientation:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterGuideLayout(IZ)V

    .line 265
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->syncShutterGuideHeightWithButton()V

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 6

    .line 591
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_7

    .line 592
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mRecordingOrientation:I

    goto :goto_8

    :cond_7
    move v0, p1

    .line 596
    :goto_8
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mShutterButtonView:Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    if-eqz v1, :cond_f

    .line 597
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->updateOrientation(I)V

    .line 599
    :cond_f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mContinuousShutterButtonView:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;

    if-eqz v1, :cond_16

    .line 600
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateOrientation(I)V

    .line 602
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mQuickVideoButtonView:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;

    if-eqz v1, :cond_1d

    .line 603
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->updateOrientation(I)V

    .line 605
    :cond_1d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v2, v1, :cond_3a

    .line 606
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

    .line 609
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void

    .line 610
    :cond_3a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v2, v1, :cond_47

    .line 611
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateFlipLayout(IZ)V

    return-void

    .line 613
    :cond_47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayout(IZ)V

    return-void
.end method

.method public updateShutterType(IZ)V
    .registers 6

    .line 1076
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

    .line 1077
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->mOldValue:Z

    if-eqz v0, :cond_33

    .line 1078
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractShutterUI;->sBlackSupport:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    add-int/lit16 p1, p1, 0x2710

    .line 1082
    :cond_33
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateShutterTypeImpl(IZ)V

    return-void
.end method
