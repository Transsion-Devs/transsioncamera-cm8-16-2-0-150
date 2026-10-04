.class public abstract Lcom/transsion/camera/app/ui/AbstractHintUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IHintUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;,
        Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;,
        Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;
    }
.end annotation


# static fields
.field private static final LIMIT_ZOOM_VALUE:I

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZOOM_RATIO_UNIT:F


# instance fields
.field private mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

.field private mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

.field private mAlwaysHintText:Landroid/widget/TextView;

.field private final mAlwaysInfoStack:Ljava/util/LinkedList;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

.field protected mAsdAlgorithResultLayoutWidth:I

.field protected mAsdEffectLayout:Landroid/view/ViewGroup;

.field protected mAsdEffectLayoutWidth:I

.field protected mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

.field private mAsdHintFadeInAnimator:Landroid/animation/Animator;

.field private mAsdHintFadeOutAnimator:Landroid/animation/Animator;

.field protected mAsdHintSlideInAnimator:Landroid/animation/Animator;

.field protected mAsdHintSlideOutAnimator:Landroid/animation/Animator;

.field protected mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAutoHideHintText:Landroid/widget/TextView;

.field private mAutoHintFadeInAnimator:Landroid/animation/Animator;

.field private mAutoHintFadeOutAnimator:Landroid/animation/Animator;

.field protected mCommonHintRoot:Landroid/widget/FrameLayout;

.field private mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentModeName:Ljava/lang/String;

.field private mCurrentOrientation:I

.field private mCurrentStreamId:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mEnableUI:Z

.field private mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mExtraTrans:I

.field private mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

.field private mFoldAnimatorOut:Landroid/animation/ObjectAnimator;

.field protected mHideAsdOnly:Z

.field protected mHideAsdTemp:Z

.field private mHintShown:Z

.field protected mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsAutoInfoShowing:Z

.field private mIsCelebritySceneShown:Z

.field protected mIsNeedWaitScale:Z

.field private mIsTransparent:Z

.field private mIsTwinkleGuideAvailable:Z

.field protected volatile mIsTwinkleGuideShowing:Z

.field private mIsVideoRecording:Z

.field protected mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mParentView:Landroid/view/View;

.field protected mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviousExpandTime:J

.field mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

.field private mProgressBarView:Landroid/view/View;

.field private mProgressGroupLayout:Landroid/widget/LinearLayout;

.field private mProgressHintRoot:Landroid/widget/FrameLayout;

.field private mProgressHintText:Landroid/widget/TextView;

.field private mRecordingOrientation:I

.field private mResources:Landroid/content/res/Resources;

.field protected mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

.field private mScreenFormType:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSwitchPreviewValue:Ljava/lang/String;

.field private mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mTextViewIsRotate:Z

.field private mTransOrientation:I

.field private mTwinkleGuideEnabled:Z

.field private mTwinkleGuideHideImmediately:Z

.field private mTwinkleGuideImageView:Landroid/widget/ImageView;

.field private mTwinkleGuideMode:Ljava/lang/String;

.field private mTwinkleGuideRoot:Landroid/view/View;

.field private mTwinkleGuideTextView:Landroid/widget/TextView;

.field private mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

.field protected mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

.field private mZoomValue:I


# direct methods
.method public static synthetic $r8$lambda$G1lDkKR1V944PfShieK1tycop4g(Lcom/transsion/camera/app/ui/AbstractHintUI;IIILandroid/animation/ValueAnimator;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractHintUI;->lambda$updateLayout$2(IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PibLABar17_RMaePTfyP0V3QYLg(Lcom/transsion/camera/app/ui/AbstractHintUI;IIILandroid/animation/ValueAnimator;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/AbstractHintUI;->lambda$updateLayout$1(IIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lR_6f4M5UMFINx5Eb57UpMo3uhs(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->lambda$setTwinkleGuideRootGone$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ypk9gqgznx4ocVE79fRiYt1erPA(Lcom/transsion/camera/app/ui/AbstractHintUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->lambda$updateProgressBarLayoutForHover$3(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentAsdInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentAutoHideInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentOrientation(Lcom/transsion/camera/app/ui/AbstractHintUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentStreamId(Lcom/transsion/camera/app/ui/AbstractHintUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentStreamId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFoldAnimatorIn(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/ObjectAnimator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScaleListener(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/AbstractHintUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuperNightScaleAnimatorSet(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/animation/AnimatorSet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwinkleGuideEnabled(Lcom/transsion/camera/app/ui/AbstractHintUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwinkleGuideMode(Lcom/transsion/camera/app/ui/AbstractHintUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwinkleGuideRoot(Lcom/transsion/camera/app/ui/AbstractHintUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/AbstractHintUI;)Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomValue(Lcom/transsion/camera/app/ui/AbstractHintUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mZoomValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentCameraId(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentCameraId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentStreamId(Lcom/transsion/camera/app/ui/AbstractHintUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentStreamId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwitchPreviewValue(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmZoomValue(Lcom/transsion/camera/app/ui/AbstractHintUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mZoomValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoHideAllHints(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doHideAllHints()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoHideInfo(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doHideInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowHint(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doShowHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveTwinkleGuideMessages(Lcom/transsion/camera/app/ui/AbstractHintUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunHintRootAnimator(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->runHintRootAnimator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTwinkleGuideRootGone(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideRootGone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDynamicAlwaysHintView(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showDynamicAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTwinkleGuideAnim(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startTwinkleGuideAnim()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTwinkleGuideAnim(Lcom/transsion/camera/app/ui/AbstractHintUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSpecifiedMode(Lcom/transsion/camera/app/ui/AbstractHintUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateSpecifiedMode(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLIMIT_ZOOM_VALUE()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->LIMIT_ZOOM_VALUE:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 77
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractHintUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 95
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_15

    const v0, 0x461c4000    # 10000.0f

    goto :goto_17

    :cond_15
    const/high16 v0, 0x42c80000    # 100.0f

    :goto_17
    sput v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->ZOOM_RATIO_UNIT:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    .line 96
    sput v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->LIMIT_ZOOM_VALUE:I

    .line 198
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 6

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 122
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 129
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 130
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 131
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 132
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 133
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    .line 136
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 144
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    .line 145
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 146
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdOnly:Z

    .line 152
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    .line 153
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideAvailable:Z

    .line 155
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideHideImmediately:Z

    .line 157
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsCelebritySceneShown:Z

    .line 183
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    .line 184
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    .line 185
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    .line 186
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    .line 187
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    .line 188
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 189
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 195
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    .line 196
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    const/4 v1, -0x1

    .line 197
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 202
    const-string v1, "off"

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 2081
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractHintUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$5;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 212
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    .line 213
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    .line 214
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    if-eqz p1, :cond_8a

    .line 216
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    .line 218
    :cond_8a
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 219
    check-cast p2, Lcom/transsion/camera/app/common/IAppUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method private asdHintShow()Z
    .registers 1

    .line 1023
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAsdUI:Z

    if-nez p0, :cond_11

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isAsdHitShow()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private doAsdHintSlideAnim(ZZ)V
    .registers 6

    .line 1417
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAsdHintSlideAnim ----> isStart = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , resetAsdImmediately = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_34

    .line 1419
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 1420
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1421
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    .line 1423
    :cond_34
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 1424
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 1425
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p2, :cond_57

    .line 1427
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 1429
    :cond_57
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 1430
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1431
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_6a
    return-void
.end method

.method private doHideAllHints()V
    .registers 2

    .line 633
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    .line 634
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 635
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 636
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideProgressHintView()V

    const/4 v0, 0x1

    .line 637
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    return-void
.end method

.method private doHideInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 5

    .line 652
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doHideInfo,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mCurrentAlwaysInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6a

    if-eq v0, v2, :cond_33

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2f

    goto/16 :goto_db

    .line 700
    :cond_2f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideProgressHintView()V

    return-void

    .line 685
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_db

    .line 686
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 687
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 689
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_db

    .line 690
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p1, :cond_db

    .line 691
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_66

    .line 692
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_66

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_66

    .line 693
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 694
    :cond_66
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 655
    :cond_6a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_ce

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 657
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 658
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_9a

    :cond_86
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_90

    .line 659
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_9a

    :cond_90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_9d

    .line 660
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 661
    :cond_9a
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    goto :goto_a7

    .line 663
    :cond_9d
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintViewWithAnim()V

    .line 664
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    goto :goto_a7

    .line 667
    :cond_a4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 669
    :goto_a7
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void

    .line 672
    :cond_aa
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 673
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ca

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ca

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_ca

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 674
    :cond_ca
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 679
    :cond_ce
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_db

    .line 680
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_db
    :goto_db
    return-void
.end method

.method private doShowHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 6

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eq v0, p1, :cond_e9

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    if-nez v0, :cond_a

    goto/16 :goto_e9

    .line 417
    :cond_a
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-eqz v0, :cond_16

    .line 418
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "TwinkleGuide is showing, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 421
    :cond_16
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowHint,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentAlwaysInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_81

    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    const/4 v1, 0x2

    if-eq v0, v1, :cond_44

    goto/16 :goto_e2

    .line 465
    :cond_44
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showProgressHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto/16 :goto_e2

    .line 447
    :cond_49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_5c

    .line 448
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 452
    :cond_5c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    .line 453
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 455
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 456
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAutoHideHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 458
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDuration()I

    move-result p1

    if-gtz p1, :cond_7a

    const/16 p1, 0xbb8

    .line 462
    :cond_7a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_e2

    .line 425
    :cond_81
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v0

    const/16 v1, 0x6a

    if-eqz v0, :cond_bf

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hasAeAfLockHint()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-nez p1, :cond_be

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    :cond_be
    return-void

    .line 434
    :cond_bf
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->aeAfLock()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    :cond_ca
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_df

    if-eq p1, v0, :cond_df

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 444
    :cond_df
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 470
    :goto_e2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 414
    :cond_e9
    :goto_e9
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This hint info should never be shown. mEnableUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private dp(I)I
    .registers 2

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p0

    return p0
.end method

.method private hasAeAfLockHint()Z
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_a

    .line 406
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->aeAfLock()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    .line 408
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda4;-><init>()V

    .line 409
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method private hideAlwaysHintView()V
    .registers 3

    .line 1027
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAlwaysHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideHintView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideAutoHideHintView()V
    .registers 4

    .line 1046
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAutoHideHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    .line 1048
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    .line 1049
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_18

    const/4 v2, 0x5

    if-eq v1, v2, :cond_18

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 1052
    :cond_18
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    .line 1054
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideHintView(Landroid/widget/TextView;)V

    .line 1056
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private hideHintView(Landroid/widget/TextView;)V
    .registers 3

    const/4 v0, 0x0

    .line 1106
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintState(Z)V

    const/16 p0, 0x8

    .line 1107
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 1108
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private hideProgressHintView()V
    .registers 3

    .line 1140
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideProgressHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1142
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setTwinkleGuideRootGone$0()V
    .registers 2

    .line 1413
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updateLayout$1(IIILandroid/animation/ValueAnimator;)V
    .registers 7

    .line 1720
    const-string v0, "alpha"

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1721
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1722
    const-string v0, "padding"

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1723
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$updateLayout$2(IIILandroid/animation/ValueAnimator;)V
    .registers 5

    .line 1737
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 1738
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private synthetic lambda$updateProgressBarLayoutForHover$3(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 2071
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2072
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private removeDynamicAlwaysHintShowMessage(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 5

    .line 913
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDynamicAlwaysHintShowMessage info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDelayedShowDynamicHint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-ne p1, v0, :cond_2b

    .line 916
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2b
    return-void
.end method

.method private removeTwinkleGuideMessages(Z)V
    .registers 4

    .line 1317
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[removeTwinkleGuideMessages]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz v0, :cond_30

    const/16 v1, 0x6b

    .line 1319
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1320
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1322
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_27
    if-eqz p1, :cond_2c

    const/4 p1, 0x0

    .line 1326
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    :cond_2c
    const/4 p1, 0x1

    .line 1328
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    :cond_30
    return-void
.end method

.method private resendTwinkleGuideMessages()V
    .registers 7

    const/4 v0, 0x0

    .line 1305
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    .line 1306
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz v0, :cond_1f

    const/16 v1, 0x6b

    const-wide/16 v2, 0xbb8

    .line 1307
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getGuideTwinkleDuration()J

    move-result-wide v4

    add-long/2addr v4, v2

    const/16 p0, 0x6c

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1f
    return-void
.end method

.method private resetHintRotateLayout()V
    .registers 4

    .line 812
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-nez v0, :cond_9

    return-void

    .line 813
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    .line 814
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 815
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 816
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 817
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private runHintRootAnimator()V
    .registers 5

    .line 1853
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1854
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1857
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/4 v1, 0x0

    .line 1861
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1863
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    .line 1864
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1865
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractHintUI$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$4;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1877
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1878
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private runHintRootAnimator(I)V
    .registers 9

    .line 1823
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1824
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1826
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1827
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1830
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_23

    return-void

    :cond_23
    const/4 v1, 0x0

    .line 1835
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1836
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const-string v1, "alpha"

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorOut:Landroid/animation/ObjectAnimator;

    .line 1837
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorIn:Landroid/animation/ObjectAnimator;

    .line 1838
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1839
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1840
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorOut:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractHintUI$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1849
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mFoldAnimatorOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setTwinkleGuideImageResource(I)V
    .registers 2

    .line 1017
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_7

    .line 1018
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    return-void
.end method

.method private setTwinkleGuideRootGone()V
    .registers 3

    const/4 v0, 0x0

    .line 1411
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    .line 1412
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x172

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1413
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 11

    .line 936
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlwaysHintView, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsAutoInfoShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 937
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    if-nez v1, :cond_2a

    .line 938
    const-string p0, "It shows dynamic always hint view ,but disable."

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 941
    :cond_2a
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-eqz v1, :cond_34

    .line 942
    const-string p0, "TwinkleGuide is showing, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 946
    :cond_34
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-nez v1, :cond_143

    .line 947
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 948
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 949
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_57

    :cond_4b
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v1

    if-eqz v1, :cond_130

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_130

    .line 950
    :cond_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_d5

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    .line 951
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_d5

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    .line 952
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_d5

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 953
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_d5

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 955
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 956
    :cond_9c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 957
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 959
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 960
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->asdHintShow()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTempInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 963
    :cond_cb
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAlwaysHintView()V

    .line 965
    :cond_ce
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    goto :goto_104

    .line 967
    :cond_d5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz v1, :cond_104

    .line 968
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x6a

    .line 969
    iput v2, v1, Landroid/os/Message;->what:I

    .line 970
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 971
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 972
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 973
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAlwaysHintView delayed show dynamic hint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 978
    :cond_104
    :goto_104
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    .line 979
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isTwinkleEnabled()Z

    move-result v2

    .line 980
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isSuperNightGuideSupport()Z

    move-result v3

    .line 981
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isMagicSkyGuideSupport()Z

    move-result v4

    .line 982
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isPmasterGuideSupport()Z

    move-result v5

    .line 983
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isDocumentGuideSupport()Z

    move-result v6

    .line 984
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isFlareCaptureGuideSupport()Z

    move-result v7

    .line 985
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isCelebritySceneGuideSupport()Z

    move-result v8

    move-object v1, p0

    .line 979
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showTwinkleGuide(ZZZZZZZ)V

    .line 986
    iget-object p0, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateTwinkleGuideInfo(Ljava/lang/String;)V

    goto :goto_151

    :cond_130
    move-object v1, p0

    .line 988
    invoke-direct {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintRotateLayoutInDVVideoMode()V

    .line 989
    iget-object p0, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {v1, p1, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    .line 990
    invoke-direct {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->asdHintShow()Z

    move-result p0

    if-eqz p0, :cond_151

    .line 991
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    goto :goto_151

    :cond_143
    move-object v1, p0

    .line 995
    iget-object p0, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_151

    .line 996
    iget-object p0, v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_151
    :goto_151
    const/4 p0, 0x1

    .line 999
    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintState(Z)V

    return-void
.end method

.method private showAutoHideHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 6

    .line 1032
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAutoHideHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1033
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    const/4 v1, 0x0

    .line 1034
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    .line 1035
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintRotateLayoutInDVVideoMode()V

    .line 1036
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    .line 1039
    :cond_1c
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    .line 1041
    :cond_21
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    .line 1042
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    return-void
.end method

.method private showDynamicAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 5

    .line 907
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDynamicAlwaysHintView info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 908
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDelayedShowDynamicHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 909
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showAlwaysHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private showHintView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V
    .registers 8

    .line 1060
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1061
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_26

    const/16 p0, 0x8

    .line 1062
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_26
    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 1067
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 1069
    :cond_39
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    :goto_3c
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1073
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$color;->hint_text_color_highlight:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    goto :goto_57

    .line 1075
    :cond_4d
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/R$color;->hint_text_color_normal:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 1077
    :goto_57
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1078
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1079
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 1081
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1082
    invoke-virtual {p2, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_77

    .line 1084
    :cond_74
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1087
    :goto_77
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1088
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result p1

    if-eqz p1, :cond_89

    .line 1089
    sget p1, Lcom/transsion/camera/R$drawable;->hint_text_layout_highlight_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a0

    .line 1091
    :cond_89
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_97

    .line 1092
    sget p1, Lcom/transsion/camera/R$drawable;->hint_text_layout_background_ui_5:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a0

    .line 1094
    :cond_97
    sget p1, Lcom/transsion/camera/R$drawable;->hint_text_layout_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a0

    .line 1098
    :cond_9d
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_a0
    const/4 p1, 0x2

    .line 1100
    invoke-virtual {p2, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 p1, 0x1

    .line 1101
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintState(Z)V

    return-void
.end method

.method private showProgressHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 6

    .line 1113
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showProgressHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getProgressType()I

    move-result v0

    const/16 v2, 0x8

    const/high16 v3, -0x60000000

    packed-switch v0, :pswitch_data_58

    goto :goto_48

    .line 1128
    :pswitch_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    .line 1123
    :pswitch_29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    .line 1118
    :pswitch_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    :goto_48
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 1135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_57
    return-void

    :pswitch_data_58
    .packed-switch 0x64
        :pswitch_39
        :pswitch_29
        :pswitch_19
    .end packed-switch
.end method

.method private startAlwaysHintAnimator(Landroid/animation/Animator;)V
    .registers 2

    .line 1148
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 1149
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1150
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startAutoHideHintAnimator(Landroid/animation/Animator;)V
    .registers 2

    .line 1154
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    .line 1155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1156
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startTwinkleGuideAnim()V
    .registers 7

    .line 1333
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[startTwinkleGuideAnim] ++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1334
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 1335
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_1b
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mZoomValue:I

    sget v2, Lcom/transsion/camera/app/ui/AbstractHintUI;->LIMIT_ZOOM_VALUE:I

    if-le v1, v2, :cond_23

    goto/16 :goto_c9

    .line 1339
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2f

    .line 1340
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1341
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1343
    :cond_2f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3b

    .line 1344
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1345
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1347
    :cond_3b
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz v1, :cond_42

    .line 1348
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAutoHideHintView()V

    .line 1350
    :cond_42
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-nez v1, :cond_c9

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsCelebritySceneShown:Z

    if-eqz v1, :cond_4c

    goto/16 :goto_c9

    .line 1353
    :cond_4c
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    if-eqz v1, :cond_54

    .line 1354
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resendTwinkleGuideMessages()V

    return-void

    :cond_54
    const/4 v1, 0x1

    .line 1357
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    .line 1358
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x171

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1359
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1361
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;F)F

    move-result v4

    neg-float v4, v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v4, v5, v3

    const/4 v4, 0x0

    aput v4, v5, v1

    const-string/jumbo v4, "translationY"

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1363
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_af

    .line 1364
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1365
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v1, [Landroid/animation/Animator;

    aput-object v2, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1366
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1368
    :cond_af
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_be

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_be

    .line 1369
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 1372
    :cond_be
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doAsdHintSlideAnim(ZZ)V

    .line 1373
    invoke-virtual {p0, v3, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAnalytics(ZZ)V

    .line 1374
    const-string p0, "[startTwinkleGuideAnim] start SuperNightGuideAnim] --"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-void
.end method

.method private stopTwinkleGuideAnim(Z)V
    .registers 7

    .line 1378
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopTwinkleGuideAnim] ++ mIsTwinkleGuideShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mTwinkleGuideHideImmediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideHideImmediately:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1379
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-nez v1, :cond_27

    return-void

    .line 1383
    :cond_27
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_33

    .line 1384
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1385
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1387
    :cond_33
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3f

    .line 1388
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1389
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleSlideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1391
    :cond_3f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1392
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 1394
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSuperNightScaleAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_68

    .line 1396
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideHideImmediately:Z

    if-eqz v1, :cond_5f

    .line 1397
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideRootGone()V

    goto :goto_68

    .line 1399
    :cond_5f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v2, 0x6e

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_68
    :goto_68
    const/4 v1, 0x0

    .line 1403
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    .line 1405
    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doAsdHintSlideAnim(ZZ)V

    .line 1406
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuildState(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V

    .line 1407
    const-string p0, "[stopTwinkleGuideAnim] --"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateCommonHintRotateOrientation(IZ)I
    .registers 12

    .line 1597
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCommonHintRotateOrientation], orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , mScreenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRecordingOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x7

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xb4

    if-eq p1, v5, :cond_c2

    .line 1601
    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-ne v0, v6, :cond_7d

    .line 1602
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_4c

    .line 1603
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    :cond_4c
    if-eq p1, v8, :cond_68

    if-eq p1, v7, :cond_68

    if-ne p1, v5, :cond_53

    goto :goto_68

    .line 1610
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_5a
    if-ge v1, v0, :cond_98

    .line 1611
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 1606
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v4

    :goto_6f
    if-ge v2, v0, :cond_98

    .line 1607
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    .line 1614
    :cond_7d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    if-eqz v0, :cond_98

    .line 1615
    iput-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    .line 1616
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_8a
    if-ge v1, v0, :cond_98

    .line 1617
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 1620
    :cond_98
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eq v0, v3, :cond_aa

    if-eq v0, v2, :cond_aa

    if-ne v0, v1, :cond_a3

    goto :goto_aa

    .line 1633
    :cond_a3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v4, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto/16 :goto_138

    .line 1623
    :cond_aa
    :goto_aa
    iget-boolean v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v4, :cond_b2

    if-ne v0, v3, :cond_b2

    .line 1624
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    :cond_b2
    if-ne v0, v2, :cond_b6

    move v7, v8

    goto :goto_ba

    :cond_b6
    if-ne v0, v1, :cond_b9

    goto :goto_ba

    :cond_b9
    move v7, p1

    .line 1631
    :goto_ba
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v7, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    move p1, v7

    goto/16 :goto_138

    .line 1637
    :cond_c2
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v6, :cond_e2

    iget v7, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne v7, v3, :cond_e2

    .line 1638
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 1640
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_d2
    if-ge v4, v0, :cond_e0

    .line 1641
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d2

    :cond_e0
    move v4, p1

    goto :goto_133

    .line 1643
    :cond_e2
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne v0, v2, :cond_118

    if-eqz v6, :cond_103

    .line 1645
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    if-nez v0, :cond_ed

    move v5, v4

    .line 1646
    :cond_ed
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_f4
    if-ge v1, v0, :cond_133

    .line 1647
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v5

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f4

    .line 1650
    :cond_103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v4

    :goto_10a
    if-ge v2, v0, :cond_133

    .line 1651
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10a

    .line 1655
    :cond_118
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    if-nez v0, :cond_133

    .line 1656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v4

    :goto_123
    if-ge v2, v0, :cond_131

    .line 1657
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_123

    .line 1659
    :cond_131
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTextViewIsRotate:Z

    .line 1662
    :cond_133
    :goto_133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v4, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 1664
    :goto_138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    neg-int p2, p1

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setRotation(F)V

    return p1
.end method

.method private updateHintRootPaddingInfo(II)V
    .registers 11

    .line 1499
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-nez v0, :cond_6

    goto/16 :goto_197

    .line 1502
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    .line 1503
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_1f

    mul-int/lit8 v3, v0, 0x4

    .line 1508
    div-int/lit8 v3, v3, 0x3

    if-le v3, v1, :cond_1d

    mul-int/lit8 v1, v1, 0x3

    .line 1511
    div-int/2addr v1, v2

    goto :goto_22

    :cond_1d
    move v1, v0

    goto :goto_22

    :cond_1f
    mul-int/lit8 v1, v1, 0x3

    .line 1515
    div-int/2addr v1, v2

    :goto_22
    const/4 v3, 0x0

    .line 1517
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    .line 1518
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1519
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1520
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    const/4 v4, 0x1

    const/16 v5, 0x10e

    const/16 v6, 0x5a

    const/4 v7, 0x2

    if-ne p2, v4, :cond_94

    .line 1522
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->hint_root_expand_margin_top:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    sub-int/2addr v0, v1

    .line 1523
    div-int/2addr v0, v7

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_text_expand_view_margin_top:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int p2, v0, p2

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1524
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_text_expand_view_margin_top:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1525
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->hint_root_expand_margin_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    .line 1526
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-nez p2, :cond_66

    goto/16 :goto_197

    :cond_66
    if-eq p1, v6, :cond_7f

    if-eq p1, v5, :cond_7f

    .line 1539
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_expand_margin_recorder_0_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    .line 1540
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_expand_margin_recorder_0_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    return-void

    .line 1532
    :cond_7f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_expand_margin_recorder_90_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1533
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_expand_margin_recorder_90_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    return-void

    :cond_94
    if-ne p2, v7, :cond_ab

    .line 1544
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    .line 1545
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1546
    iput v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1547
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    return-void

    .line 1548
    :cond_ab
    const-string v0, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    const-string v1, "on"

    const/16 v3, 0x69

    const/16 v4, 0x67

    if-ne p2, v2, :cond_112

    .line 1549
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_previewtop_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1550
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz p1, :cond_df

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p1, :cond_df

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result p1

    if-eq p1, v4, :cond_d5

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 1551
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result p1

    if-ne p1, v3, :cond_df

    .line 1552
    :cond_d5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_feedback_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1554
    :cond_df
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_ed

    .line 1555
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_recording_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1557
    :cond_ed
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_197

    .line 1558
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_previewbottom_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    .line 1559
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_197

    .line 1560
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_wide_selfie_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    return-void

    :cond_112
    const/4 v2, 0x5

    if-ne p2, v2, :cond_172

    .line 1564
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_previewtop_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1565
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz p1, :cond_13f

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p1, :cond_13f

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result p1

    if-eq p1, v4, :cond_135

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 1566
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result p1

    if-ne p1, v3, :cond_13f

    .line 1567
    :cond_135
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_feedback_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1569
    :cond_13f
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz p1, :cond_14d

    .line 1570
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_recording_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1572
    :cond_14d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_197

    .line 1573
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_previewbottom_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    .line 1574
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_197

    .line 1575
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_lr_hover_wide_selfie_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    return-void

    :cond_172
    const/4 v0, 0x7

    if-ne p2, v0, :cond_197

    .line 1579
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-nez p2, :cond_17a

    goto :goto_197

    :cond_17a
    if-eq p1, v6, :cond_18d

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_18d

    if-eq p1, v5, :cond_18d

    .line 1590
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_filp_margin_recorder_0_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    return-void

    .line 1586
    :cond_18d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$dimen;->hint_root_filp_margin_recorder_0_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    :cond_197
    :goto_197
    return-void
.end method

.method private updateHintRotateLayoutInDVVideoMode()V
    .registers 5

    .line 821
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-nez v0, :cond_9

    return-void

    .line 822
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 823
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resetHintRotateLayout()V

    return-void

    .line 827
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2b

    .line 828
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resetHintRotateLayout()V

    return-void

    .line 832
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    goto :goto_34

    :cond_32
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    :goto_34
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_41

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3d

    goto :goto_41

    .line 840
    :cond_3d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resetHintRotateLayout()V

    return-void

    .line 834
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    .line 835
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 836
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 837
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 838
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateHintTextLayout()V
    .registers 5

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->hint_always_normal_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->hint_auto_normal_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->hint_text_view_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->hint_text_view_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 359
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_ad

    const/4 v1, 0x4

    if-eq v0, v1, :cond_ad

    const/4 v1, 0x5

    if-ne v0, v1, :cond_43

    goto :goto_ad

    :cond_43
    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->hint_always_column_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_auto_column_max_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void

    :cond_61
    const/4 v1, 0x6

    if-ne v0, v1, :cond_73

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->aod_hint_progress_text_size:I

    .line 369
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    .line 368
    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_73
    const/4 v1, 0x7

    if-ne v0, v1, :cond_ac

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->hint_always_flip_max_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->hint_auto_flip_max_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->flip_hint_text_view_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->flip_hint_text_view_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_ac
    return-void

    .line 362
    :cond_ad
    :goto_ad
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->hint_always_expanded_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_auto_expanded_max_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method private updateProgressBarLayoutForHover(IZI)V
    .registers 9

    .line 2041
    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p3}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 2043
    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    .line 2045
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2047
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-eqz v1, :cond_53

    const/4 v1, 0x1

    if-nez p1, :cond_30

    .line 2049
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2050
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_layout_loading_margin_top_normal:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_55

    :cond_30
    const/4 v4, 0x3

    if-ne p1, v4, :cond_50

    .line 2052
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2053
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_layout_loading_margin_top_hover:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2054
    const-string p1, "on"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 2055
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_layout_loading_margin_preview_on_top_hover:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_55

    .line 2058
    :cond_50
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_55

    .line 2062
    :cond_53
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2066
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_89

    if-eqz p2, :cond_89

    .line 2067
    filled-new-array {p3, v2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    .line 2068
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2069
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2070
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2074
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 2076
    :cond_89
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2077
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSpecifiedMode(Ljava/lang/String;)V
    .registers 3

    .line 646
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 647
    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;->updateSpecifiedMode(Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected final applyAnalytics(ILjava/lang/String;)V
    .registers 3

    if-ltz p1, :cond_f

    .line 2183
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 2184
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    :cond_f
    return-void
.end method

.method protected createFloatValueAnimator(FFILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .registers 6

    const/4 p0, 0x2

    .line 1207
    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 1208
    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method protected createValueAnimator(IIILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .registers 5

    .line 1201
    filled-new-array {p1, p2}, [I

    move-result-object p0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 1202
    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method public fadeInHint()V
    .registers 10

    .line 733
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[fadeInHint]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 734
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 735
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAlwaysHintAnimator(Landroid/animation/Animator;)V

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAutoHideHintAnimator(Landroid/animation/Animator;)V

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdHintAnimator(Landroid/animation/Animator;)V

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_60

    .line 742
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isTwinkleEnabled()Z

    move-result v2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 744
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isSuperNightGuideSupport()Z

    move-result v3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 745
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isMagicSkyGuideSupport()Z

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 746
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isPmasterGuideSupport()Z

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 747
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isDocumentGuideSupport()Z

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 748
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isFlareCaptureGuideSupport()Z

    move-result v7

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 749
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isCelebritySceneGuideSupport()Z

    move-result v8

    move-object v1, p0

    .line 743
    invoke-virtual/range {v1 .. v8}, Lcom/transsion/camera/app/ui/AbstractHintUI;->showTwinkleGuide(ZZZZZZZ)V

    :cond_60
    return-void
.end method

.method public fadeOutHint()V
    .registers 3

    .line 756
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[fadeOutHint]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 757
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    .line 758
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 759
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 760
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 761
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAlwaysHintAnimator(Landroid/animation/Animator;)V

    .line 762
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAutoHideHintAnimator(Landroid/animation/Animator;)V

    .line 763
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->startAsdHintAnimator(Landroid/animation/Animator;)V

    .line 764
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopTwinkleGuideAnim(Z)V

    return-void
.end method

.method public getAlwaysHintText()Landroid/widget/TextView;
    .registers 1

    .line 2189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method abstract getAsdHintLayoutId()I
.end method

.method abstract getAsdHintRootLayout()Landroid/view/ViewGroup;
.end method

.method public getAutoHideHintText()Landroid/widget/TextView;
    .registers 1

    .line 2193
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    return-object p0
.end method

.method public getBurstPMKAeAfLockMarginTop()I
    .registers 2

    .line 2211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->hint_text_view_burst_pmk_lock_margin_top_land:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getCommonHintRootPaddingTopDst(Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;
    .registers 8

    .line 1748
    new-instance p2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    .line 1749
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1750
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 1751
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result v1

    const/16 v2, 0x67

    const-string v3, "on"

    const/4 v4, 0x3

    if-ne v1, v2, :cond_4b

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne v1, v4, :cond_4b

    .line 1753
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->hint_layout_padding_top_hover_feedback:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1754
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1755
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/R$dimen;->hint_layout_padding_preview_on_top_hover_feedback:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_6f

    .line 1757
    :cond_4b
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result p1

    const/16 v1, 0x69

    if-ne p1, v1, :cond_6f

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne p1, v4, :cond_6f

    .line 1759
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->hint_layout_padding_top_hover:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1760
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 1761
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/transsion/camera/R$dimen;->hint_layout_padding_preview_on_top_hover_feedback:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1764
    :cond_6f
    :goto_6f
    iput v0, p2, Landroid/graphics/Rect;->top:I

    return-object p2
.end method

.method protected getCommonHintRootPaddingTopDst(Z)Landroid/graphics/Rect;
    .registers 13

    .line 1769
    new-instance p1, Landroid/graphics/Rect;

    const v0, 0x7fffffff

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1771
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v1, v0

    .line 1772
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1773
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v4, v1

    double-to-int v6, v4

    .line 1775
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_d2

    .line 1776
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v0, :cond_53

    .line 1777
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->hint_layout_padding_top_hover_recording:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_5b

    .line 1779
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$dimen;->hint_layout_padding_top_hover:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1781
    :goto_5b
    const-string v5, "on"

    iget-object v10, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 1782
    div-int/lit8 v0, v3, 0x2

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->hint_layout_padding_preview_on_top_hover:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 1783
    invoke-static {v1, v2, v7, v8}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v1

    if-eqz v1, :cond_85

    mul-int/2addr v3, v4

    .line 1784
    div-int/lit8 v3, v3, 0x4

    div-int/2addr v6, v9

    sub-int/2addr v3, v6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_layout_padding_preview_on_top_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v3

    .line 1786
    :cond_85
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v1, :cond_91

    .line 1787
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->hint_layout_padding_preview_on_recording_top_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1790
    :cond_91
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz v1, :cond_13e

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 1791
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v1, :cond_13e

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result v1

    const/16 v2, 0x67

    if-eq v1, v2, :cond_13e

    .line 1792
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v1, :cond_ba

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    goto :goto_bc

    :cond_ba
    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    :goto_bc
    const/16 v3, 0x5a

    if-eq v2, v3, :cond_c4

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_13e

    :cond_c4
    if-eqz v1, :cond_cf

    const/16 v0, 0x40

    .line 1794
    :goto_c8
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->dp(I)I

    move-result p0

    move v0, p0

    goto/16 :goto_13e

    :cond_cf
    const/16 v0, 0x1e

    goto :goto_c8

    :cond_d2
    const/4 v10, 0x0

    if-eqz v0, :cond_da

    if-ne v0, v9, :cond_d8

    goto :goto_da

    :cond_d8
    move v0, v10

    goto :goto_13e

    .line 1800
    :cond_da
    :goto_da
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 1801
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v5

    .line 1800
    invoke-static/range {v1 .. v6}, Lcom/transsion/camera/utils/CameraUtil;->getTopMargin(DIIII)I

    move-result v0

    .line 1803
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-nez v3, :cond_10a

    .line 1804
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->hint_layout_padding_top_normal:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1805
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 1806
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->hint_layout_padding_top_normal_tb:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1809
    :cond_10a
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-nez v3, :cond_123

    invoke-static {v1, v2, v7, v8}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v3

    if-eqz v3, :cond_123

    .line 1810
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-eqz v3, :cond_123

    .line 1811
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->normal_1_1_preview_margin_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1813
    :cond_123
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v10

    .line 1814
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne v3, v9, :cond_13e

    invoke-static {v1, v2, v7, v8}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 1815
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    .line 1818
    :cond_13e
    :goto_13e
    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-object p1
.end method

.method public getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method public getCurrentOrientation()I
    .registers 1

    .line 2201
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    return p0
.end method

.method abstract getExpandInitValue()[I
.end method

.method protected getGuideTwinkleDuration()J
    .registers 3

    const-wide/16 v0, 0x1770

    return-wide v0
.end method

.method public getHintState()Z
    .registers 1

    .line 894
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintShown:Z

    return p0
.end method

.method abstract getOverallValue()[I
.end method

.method protected getRootView()Landroid/view/View;
    .registers 1

    .line 2146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public getScreenFormType()I
    .registers 1

    .line 2220
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    return p0
.end method

.method abstract getShrinkTargetValue()[I
.end method

.method public getTwinkleGuideMode()Ljava/lang/String;
    .registers 1

    .line 2224
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    return-object p0
.end method

.method public getTwinkleGuideRoot()Landroid/view/View;
    .registers 1

    .line 2197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    return-object p0
.end method

.method public getTwinkleGuideTextView()Landroid/widget/TextView;
    .registers 1

    .line 2216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public hideAllHint()V
    .registers 2

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method abstract hideAsdHintView()V
.end method

.method protected hideAsdHintViewWithAnim()V
    .registers 3

    .line 1438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviousExpandTime:J

    .line 1439
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1a

    .line 1440
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_28

    .line 1441
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_24
    const/4 v0, 0x1

    .line 1442
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsNeedWaitScale:Z

    return-void

    .line 1445
    :cond_28
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->stopAsdAnimatorSet()V

    .line 1446
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initAsdHieAnimator()V

    .line 1447
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1448
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 4

    .line 475
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    return-void

    .line 484
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 481
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 477
    :cond_25
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeDynamicAlwaysHintShowMessage(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideTwinkleGuide()V
    .registers 3

    .line 527
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[hideTwinkleGuide] ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 274
    sget v0, Lcom/transsion/camera/R$layout;->hint_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    .line 275
    sget v0, Lcom/transsion/camera/R$id;->hint_root_group:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 276
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    .line 278
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/camera/R$id;->common_hint_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintLayoutId()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->asd_hint_algorith_result_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->asd_hint_effect_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayout:Landroid/view/ViewGroup;

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mParentView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->super_night_guide_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    .line 284
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initTwinkleGuideImageLayout()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideImageView:Landroid/widget/ImageView;

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->twinkle_guide_tx:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideTextView:Landroid/widget/TextView;

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/app/ui/AbstractHintUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget p2, Lcom/transsion/camera/R$id;->twinkle_guide_anim:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 324
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$animator;->hint_fade_out:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeOutAnimator:Landroid/animation/Animator;

    .line 325
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$animator;->hint_fade_in:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintFadeInAnimator:Landroid/animation/Animator;

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$animator;->hint_fade_out:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeOutAnimator:Landroid/animation/Animator;

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$animator;->hint_fade_in:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHintFadeInAnimator:Landroid/animation/Animator;

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$animator;->hint_fade_out:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeOutAnimator:Landroid/animation/Animator;

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$animator;->hint_fade_in:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintFadeInAnimator:Landroid/animation/Animator;

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$animator;->hint_slide_out:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideOutAnimator:Landroid/animation/Animator;

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/camera/R$animator;->hint_slide_in:I

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHintSlideInAnimator:Landroid/animation/Animator;

    .line 332
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {p1, v1, p2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 333
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    .line 334
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;Lcom/transsion/camera/app/ui/AbstractHintUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    .line 335
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method abstract initAsdHieAnimator()V
.end method

.method abstract initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method abstract initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method abstract initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method protected initTwinkleGuideImageLayout()Landroid/widget/ImageView;
    .registers 2

    .line 2150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->twinkle_guide_img:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method protected isTwinkleGuildShowed(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)Z
    .registers 4

    .line 1232
    const-string p0, "off"

    .line 1233
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    .line 1232
    const-string v0, "key_twinkle_guild"

    invoke-virtual {p1, v0, p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 9

    const/16 v0, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_9f

    if-eq p1, v0, :cond_9f

    const/16 v4, 0x17

    if-eq p1, v4, :cond_93

    const/16 v5, 0x24

    if-eq p1, v5, :cond_84

    const/16 v5, 0x6d

    const/4 v6, -0x1

    if-eq p1, v5, :cond_71

    const/16 v5, 0xed

    if-eq p1, v5, :cond_84

    const/16 v4, 0xf

    if-eq p1, v4, :cond_4f

    const/16 v4, 0x10

    if-eq p1, v4, :cond_71

    const/16 v4, 0x35

    if-eq p1, v4, :cond_9f

    const/16 v4, 0x36

    if-eq p1, v4, :cond_9f

    const/16 v0, 0x90

    if-eq p1, v0, :cond_4f

    const/16 v0, 0x91

    if-eq p1, v0, :cond_71

    packed-switch p1, :pswitch_data_be

    goto/16 :goto_bc

    .line 604
    :pswitch_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuildState(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 605
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    return-void

    .line 587
    :pswitch_42
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsCelebritySceneShown:Z

    return-void

    .line 581
    :pswitch_45
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsCelebritySceneShown:Z

    .line 582
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-eqz p1, :cond_bc

    .line 583
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideRootGone()V

    return-void

    .line 547
    :cond_4f
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_57

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5a

    .line 549
    :cond_57
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->doHideAllHints()V

    .line 551
    :cond_5a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    .line 552
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    if-ne p1, v6, :cond_64

    .line 553
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 555
    :cond_64
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    .line 556
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    return-void

    .line 561
    :cond_71
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    .line 562
    iput v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 563
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne p1, v3, :cond_7e

    .line 564
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    .line 566
    :cond_7e
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->onOrientationChanged(IZ)V

    return-void

    .line 570
    :cond_84
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideRootGone()V

    .line 571
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_bc

    if-ne p1, v4, :cond_bc

    .line 572
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideRootGone()V

    return-void

    .line 576
    :cond_93
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_bc

    if-ne p1, v4, :cond_bc

    .line 577
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideRootGone()V

    return-void

    :cond_9f
    if-ne p1, v0, :cond_a5

    .line 594
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    goto :goto_a8

    .line 596
    :cond_a5
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    .line 598
    :goto_a8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    if-eqz p1, :cond_bc

    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_bc

    .line 599
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideRootGone()V

    :cond_bc
    :goto_bc
    return-void

    nop

    :pswitch_data_be
    .packed-switch 0x183
        :pswitch_45
        :pswitch_42
        :pswitch_37
    .end packed-switch
.end method

.method public onOrientationChanged(IZ)V
    .registers 8

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_e

    goto/16 :goto_be

    :cond_e
    const/4 v0, 0x6

    .line 773
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-ne v0, v1, :cond_1d

    if-eq p1, v3, :cond_be

    if-ne p1, v2, :cond_1d

    goto/16 :goto_be

    .line 778
    :cond_1d
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onOrientationChanged], orientation :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mTransOrientation:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 779
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 781
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5d

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    if-eq v0, v3, :cond_54

    if-ne v0, v2, :cond_5d

    .line 783
    :cond_54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_63

    .line 785
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 788
    :goto_63
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateCommonHintRotateOrientation(IZ)I

    move-result p1

    .line 789
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_77

    if-eqz p2, :cond_77

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-nez p2, :cond_77

    .line 790
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->runHintRootAnimator(I)V

    goto :goto_81

    :cond_77
    const/4 p2, 0x7

    if-ne v0, p2, :cond_7e

    .line 791
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-nez p2, :cond_81

    .line 792
    :cond_7e
    invoke-virtual {p0, v0, v2, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    .line 794
    :cond_81
    :goto_81
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-nez p1, :cond_9c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentModeName:Ljava/lang/String;

    const-string p2, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    .line 795
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 796
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz p1, :cond_99

    .line 797
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    goto :goto_9c

    .line 799
    :cond_99
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    .line 803
    :cond_9c
    :goto_9c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p1, :cond_be

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 804
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz p1, :cond_bb

    .line 805
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    .line 807
    :cond_bb
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintRotateLayoutInDVVideoMode()V

    :cond_be
    :goto_be
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 846
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScreenFormChanged] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 847
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    .line 848
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz v0, :cond_34

    .line 849
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    goto :goto_37

    .line 851
    :cond_34
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    .line 853
    :goto_37
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_42

    .line 855
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v2, :cond_42

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 857
    :cond_42
    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateCommonHintRotateOrientation(IZ)I

    .line 858
    invoke-virtual {p0, p1, v1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    return-void
.end method

.method public refreshHintViewVisibility()V
    .registers 4

    .line 922
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-nez v0, :cond_5

    goto :goto_27

    .line 927
    :cond_5
    const-string v1, "key_night_hawk"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_27

    .line 928
    :cond_12
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 929
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_27

    .line 930
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->hideAsdHintView()V

    :cond_27
    :goto_27
    return-void
.end method

.method public registerHintStateListener(Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;)V
    .registers 2

    .line 884
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    return-void
.end method

.method public resetEndHint()V
    .registers 2

    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEndHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method public resetTwinkleGuide(Z)V
    .registers 5

    .line 520
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetTwinkleGuide] immediately \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideHideImmediately:Z

    const/4 p1, 0x1

    .line 522
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    const/4 v0, -0x1

    .line 381
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    return-void
.end method

.method public setEnableHintUI(Z)V
    .registers 2

    .line 624
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mEnableUI:Z

    return-void
.end method

.method public setHintUITrans(II)V
    .registers 7

    const/4 v0, 0x6

    .line 496
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-ne v0, v1, :cond_e

    if-eq p1, v3, :cond_d

    if-ne p1, v2, :cond_e

    :cond_d
    return-void

    .line 501
    :cond_e
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTransOrientation:I

    .line 502
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    const/16 p2, 0x10

    const-wide/16 v0, 0xc8

    if-ne p1, p2, :cond_39

    .line 503
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    if-eq p1, v3, :cond_1e

    if-ne p1, v2, :cond_39

    .line 505
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mExtraTrans:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 506
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 508
    :cond_39
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 509
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setModePickerControl(Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
    .registers 2

    .line 642
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mModePickerControl:Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;

    return-void
.end method

.method public setRecorderOrientation(I)V
    .registers 2

    .line 614
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 1670
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1d

    .line 1672
    const-string v0, "key_fold_switch_preview"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1673
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_camera_zoom"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 1674
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_sat_stream_id"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1d
    return-void
.end method

.method public setTwinkleGuideAvailable(Z)V
    .registers 5

    .line 535
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSuperNightGuideAvailable] , isAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 536
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideAvailable:Z

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    .line 538
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->removeTwinkleGuideMessages(Z)V

    :cond_1e
    return-void
.end method

.method protected setTwinkleGuildState(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V
    .registers 5

    .line 1237
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const-string v0, "key_twinkle_guild"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method abstract setupAsdHintViews(Landroid/view/ViewGroup;)V
.end method

.method public setupViews()V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/camera/R$id;->common_hint_rotate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/camera/R$id;->always_hint_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/camera/R$id;->auto_hide_hint_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/camera/R$id;->process_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/camera/R$id;->progress_hint_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/camera/R$id;->hint_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressBarView:Landroid/view/View;

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/camera/R$id;->hint_progress_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintText:Landroid/widget/TextView;

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setupAsdHintViews(Landroid/view/ViewGroup;)V

    .line 351
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    return-void
.end method

.method public shouldApplyBurstPMKAeAfLockMargin(II)Z
    .registers 3

    if-nez p1, :cond_16

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_a

    const/16 p1, 0x10e

    if-ne p2, p1, :cond_16

    .line 2205
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentModeName:Ljava/lang/String;

    const-string p1, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    .line 2207
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method abstract showAsdHintView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method public showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_f

    goto :goto_1b

    .line 390
    :cond_f
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    :goto_1b
    return-void

    .line 399
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 395
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 392
    :cond_3b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected showTwinkleGuide(ZZZZZZZ)V
    .registers 12

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->isTwinkleGuildShowed(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)Z

    move-result v0

    .line 1245
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showTwinkleGuide], isTwinkleGuildShowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , twinkleGuideEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mTwinkleGuideEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isSuperNightGuideSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isMagicSkyGuideSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isPmasterGuideSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isDocumentGuideSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isFlareCaptureGuideSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isCelebritySceneGuideSupport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_68

    .line 1255
    const-string p0, "TwinkleGuide has showed, return!"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1258
    :cond_68
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideAvailable:Z

    if-nez v0, :cond_72

    .line 1259
    const-string p0, "TwinkleGuide is not Available, return !"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1262
    :cond_72
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTwinkleGuideShowing:Z

    if-eqz v0, :cond_7e

    if-eqz p1, :cond_7e

    .line 1263
    const-string p0, "TwinkleGuide is showing, return !"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1266
    :cond_7e
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    if-ne v0, p1, :cond_89

    .line 1267
    const-string/jumbo p0, "twinkleGuideEnabled do not changed , return ! "

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1270
    :cond_89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 1271
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a7

    :cond_9d
    if-eqz p2, :cond_121

    iget p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mZoomValue:I

    sget v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->LIMIT_ZOOM_VALUE:I

    if-le p2, v0, :cond_a7

    goto/16 :goto_121

    .line 1276
    :cond_a7
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_ba

    if-nez p3, :cond_ba

    .line 1277
    const-string/jumbo p0, "twinkleGuideEnabled do not support  MAGIC_SKY_MODE, return ! "

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1280
    :cond_ba
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string p3, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_cd

    if-nez p4, :cond_cd

    .line 1281
    const-string/jumbo p0, "twinkleGuideEnabled do not support  PMASTER_MODE, return ! "

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1284
    :cond_cd
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string p3, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e0

    if-nez p5, :cond_e0

    .line 1285
    const-string/jumbo p0, "twinkleGuideEnabled do not support  DOCUMENT_MODE, return ! "

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1288
    :cond_e0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string p3, "com.transsion.camera.ui.setting.flarecapture.FlareCaptureSettingUIEntry"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f3

    if-nez p6, :cond_f3

    .line 1289
    const-string/jumbo p0, "twinkleGuideEnabled do not support  FLARE_CAPTURE_UI_ENTRY, return ! "

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1292
    :cond_f3
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string/jumbo p3, "val_celebrity_scene_food"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_107

    if-nez p7, :cond_107

    .line 1293
    const-string/jumbo p0, "twinkleGuideEnabled do not support  VALUE_CELEBRITY_SCENE_FOOD, return ! "

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1296
    :cond_107
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string/jumbo p3, "val_celebrity_scene_sunset"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11b

    if-nez p7, :cond_11b

    .line 1297
    const-string/jumbo p0, "twinkleGuideEnabled do not support  VALUE_CELEBRITY_SCENE_SUNSET, return ! "

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1300
    :cond_11b
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideEnabled:Z

    .line 1301
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resendTwinkleGuideMessages()V

    return-void

    .line 1273
    :cond_121
    :goto_121
    const-string/jumbo p0, "twinkleGuideEnabled do not support  SUPER_NIGHT_MODE or zoomValue is greater than 10X, return ! "

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method abstract startAsdHintAnimator(Landroid/animation/Animator;)V
.end method

.method protected startAsdScaleAnimator(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 4

    .line 1161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 1162
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1165
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_18

    .line 1166
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1169
    :cond_18
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1170
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsTransparent:Z

    if-nez v0, :cond_2d

    .line 1171
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAsdHintRootLayout()Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1173
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 1174
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 1175
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f6

    .line 1176
    :cond_6d
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 1177
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1179
    :cond_88
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a3

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    .line 1180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1182
    :cond_a3
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getExpandInitValue()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initExpandAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1183
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getOverallValue()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getShrinkTargetValue()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initShrinkAnimator([I[ILcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 1184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1185
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScaleListener:Lcom/transsion/camera/app/ui/AbstractHintUI$ScaleAnimationEndListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1188
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1191
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    return-void

    .line 1193
    :cond_f6
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initAsdHieAnimatorByInfo(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 1194
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHideAsdTemp:Z

    .line 1195
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideListener:Lcom/transsion/camera/app/ui/AbstractHintUI$HideAnimationEndListener;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected stopAsdAnimatorSet()V
    .registers 3

    .line 1213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdExpandAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1217
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdShrinkAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1221
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1223
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1225
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 1228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 709
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractHintUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 712
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAsdInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_40

    .line 718
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 721
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    .line 722
    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 724
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_5d

    .line 725
    const-string v1, "key_fold_switch_preview"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_sat_stream_id"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_5d
    return-void
.end method

.method public unRegisterHintStateListener()V
    .registers 2

    const/4 v0, 0x0

    .line 889
    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    return-void
.end method

.method abstract updateAlgoritLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method protected updateAnalytics(ZZ)V
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_6

    const/16 p1, 0x1f

    goto :goto_c

    :cond_6
    if-eqz p2, :cond_b

    const/16 p1, 0x1e

    goto :goto_c

    :cond_b
    move p1, v0

    :goto_c
    if-eq p1, v0, :cond_76

    .line 2162
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_73

    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 2163
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_23

    goto :goto_73

    .line 2165
    :cond_23
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 2166
    const-string p2, "2"

    goto :goto_78

    .line 2167
    :cond_30
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 2168
    const-string p2, "3"

    goto :goto_78

    .line 2169
    :cond_3d
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 2170
    const-string p2, "4"

    goto :goto_78

    .line 2171
    :cond_4a
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.ui.setting.flarecapture.FlareCaptureSettingUIEntry"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 2172
    const-string p2, "5"

    goto :goto_78

    .line 2173
    :cond_57
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string/jumbo v0, "val_celebrity_scene_food"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 2174
    const-string p2, "6"

    goto :goto_78

    .line 2175
    :cond_65
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string/jumbo v0, "val_celebrity_scene_sunset"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 2176
    const-string p2, "7"

    goto :goto_78

    .line 2164
    :cond_73
    :goto_73
    const-string p2, "1"

    goto :goto_78

    .line 2179
    :cond_76
    const-string p2, ""

    :goto_78
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->applyAnalytics(ILjava/lang/String;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 3

    .line 1680
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentModeName:Ljava/lang/String;

    .line 1681
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p1, :cond_17

    const-string p1, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 1682
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resetHintRotateLayout()V

    :cond_17
    return-void
.end method

.method abstract updateEffectLayout(Lcom/transsion/camera/app/common/ui/HintInfo;)V
.end method

.method protected updateHintState(Z)V
    .registers 2

    .line 898
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintShown:Z

    .line 899
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHintStateChangeListener:Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;

    if-eqz p0, :cond_9

    .line 900
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$HintStateChangeListener;->onHintStateChange(Z)V

    :cond_9
    return-void
.end method

.method public updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V
    .registers 7

    .line 1882
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-nez v0, :cond_9

    goto :goto_72

    .line 1887
    :cond_9
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result v0

    const/16 v1, 0x67

    const v2, 0x7fffffff

    const/4 v3, 0x3

    if-ne v0, v1, :cond_3f

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne v0, v3, :cond_3f

    .line 1889
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 1890
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 1891
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCommonHintRootPaddingTopDst(Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 1892
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 1893
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v2, :cond_30

    goto :goto_36

    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 1894
    :goto_36
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resetHintRotateLayout()V

    .line 1895
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 1896
    :cond_3f
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_6e

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    if-ne v0, v3, :cond_6e

    .line 1898
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 1899
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 1900
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCommonHintRootPaddingTopDst(Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;

    move-result-object p1

    .line 1901
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 1902
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v2, :cond_62

    goto :goto_68

    :cond_62
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 1903
    :goto_68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 1905
    :cond_6e
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    return-void

    .line 1883
    :cond_72
    :goto_72
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    return-void
.end method

.method public updateLayout(Z)V
    .registers 15

    .line 1687
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1688
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_a

    return-void

    .line 1691
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 1692
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 1694
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 1695
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->hint_layout_padding_top_hover_feedback:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-ne v2, v3, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    .line 1700
    :goto_27
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCommonHintRootPaddingTopDst(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 1701
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 1702
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_35

    goto :goto_3b

    :cond_35
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 1704
    :goto_3b
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_cf

    if-eqz p1, :cond_cf

    const-wide/16 v6, 0x190

    if-eqz v3, :cond_ab

    const/4 p1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1706
    invoke-static {p1, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    .line 1707
    invoke-static {v9, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 1708
    invoke-static {v3, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    .line 1709
    const-string v12, "alpha"

    filled-new-array {v8, v10, v11}, [Landroid/animation/Keyframe;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 1711
    invoke-static {p1, v2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p1

    .line 1712
    invoke-static {v9, v2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    .line 1713
    invoke-static {v9, v5}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v9

    .line 1714
    invoke-static {v3, v5}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    .line 1715
    const-string v5, "padding"

    filled-new-array {p1, v2, v9, v3}, [Landroid/animation/Keyframe;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1716
    filled-new-array {v8, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    .line 1717
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1718
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1719
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1, v4}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;III)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1725
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractHintUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractHintUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_c9

    .line 1733
    :cond_ab
    filled-new-array {v2, v5}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    .line 1734
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1735
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/app/ui/AbstractHintUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1736
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1, v4}, Lcom/transsion/camera/app/ui/AbstractHintUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;III)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1741
    :goto_c9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1743
    :cond_cf
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v5, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 865
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 866
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez v0, :cond_2b

    .line 868
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 869
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    goto :goto_1b

    .line 871
    :cond_18
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    .line 874
    :goto_1b
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentOrientation:I

    .line 875
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 876
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-eqz v2, :cond_28

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRecordingOrientation:I

    .line 878
    :cond_28
    invoke-virtual {p0, v1, v0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    :cond_2b
    return-void
.end method

.method public updateProgressBarLayout(IZI)V
    .registers 14

    .line 1910
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressGroupLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    goto/16 :goto_2da

    .line 1913
    :cond_6
    invoke-direct {p0, p3, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintRootPaddingInfo(II)V

    .line 1914
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1915
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingLeft:I

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingTop:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingRight:I

    iget v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1916
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCommonHintRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1918
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_2da

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    if-nez v1, :cond_2b

    goto/16 :goto_2da

    :cond_2b
    const/4 v1, 0x0

    .line 1921
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1922
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1923
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1924
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1925
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1926
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1927
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1928
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1929
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1930
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1931
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mProgressHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7e

    .line 1932
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1933
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1934
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_7e
    const/4 v5, 0x0

    .line 1936
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1937
    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->hint_text_view_margin_top:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1938
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1939
    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/transsion/camera/R$dimen;->hint_text_view_margin_top:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1940
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1941
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1942
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v7, 0x10e

    const/16 v8, 0x5a

    if-ne p1, v6, :cond_114

    if-eq p3, v8, :cond_e0

    if-eq p3, v7, :cond_e0

    .line 1956
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_expand:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1957
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_expand:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1958
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->twinkle_guide_root_margin_top_expand:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1959
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_asd_margin_top_expand:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1960
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_asd_margin_top_expand:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_285

    .line 1947
    :cond_e0
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_margin_90_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1948
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_margin_90_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1949
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->twinkle_guide_root_margin_top_expand_90:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1950
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_asd_margin_left_expand_90:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1951
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_asd_margin_left_expand_90:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_285

    :cond_114
    const/4 v6, 0x2

    if-ne p1, v6, :cond_14b

    .line 1964
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_column:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1965
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_column:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1966
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->twinkle_guide_root_margin_0_top_column:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1967
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_asd_margin_0_top_column:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1968
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_asd_margin_0_top_column:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_285

    .line 1969
    :cond_14b
    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mScreenFormType:I

    const/4 v9, 0x4

    if-eq v6, v9, :cond_221

    const/4 v9, 0x5

    if-ne v6, v9, :cond_155

    goto/16 :goto_221

    :cond_155
    const/4 v5, 0x7

    if-ne p1, v5, :cond_285

    .line 1986
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-nez v5, :cond_1a2

    .line 1987
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->hint_root_filp_margin_recorder_left:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1988
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->hint_root_filp_margin_recorder_left:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1989
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayout:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->hint_root_filp_margin_recorder_left:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1990
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->hint_root_filp_margin_recorder_left:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1991
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/R$dimen;->hint_root_filp_margin_recorder_left:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    :cond_1a2
    if-eq p3, v8, :cond_1e6

    const/16 v5, 0xb4

    if-eq p3, v5, :cond_1e6

    if-eq p3, v7, :cond_1e6

    const/16 v5, 0x31

    .line 2009
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2010
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2011
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2013
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2014
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2015
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2016
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2017
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_285

    :cond_1e6
    const/16 v5, 0x51

    .line 1997
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1998
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1999
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2001
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2002
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2003
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 2004
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 2005
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_always_auto_view_margin_0_top_filp:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_285

    .line 1971
    :cond_221
    :goto_221
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->hint_text_view_margin_90_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1972
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->hint_text_view_margin_90_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1973
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->twinkle_guide_root_margin_top_expand_90:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1974
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->hint_text_view_asd_margin_left_expand_90:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1975
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/R$dimen;->hint_text_view_asd_margin_left_expand_90:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1976
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsVideoRecording:Z

    if-nez v6, :cond_27b

    const-string v6, "on"

    iget-object v7, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_27b

    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mIsAutoInfoShowing:Z

    if-eqz v6, :cond_285

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v6, :cond_285

    .line 1977
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result v6

    const/16 v7, 0x67

    if-eq v6, v7, :cond_27b

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 1978
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->getFeedbackType()I

    move-result v6

    const/16 v7, 0x69

    if-ne v6, v7, :cond_285

    .line 1979
    :cond_27b
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1980
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1981
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1982
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1983
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2021
    :cond_285
    :goto_285
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2bb

    if-nez p1, :cond_2a4

    .line 2023
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_normal_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2024
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_normal_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2bb

    :cond_2a4
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2bb

    .line 2026
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_hover_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2027
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/transsion/camera/R$dimen;->hint_text_view_hover_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2030
    :cond_2bb
    :goto_2bb
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2031
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2032
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2033
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdAlgorithResultLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2034
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mAsdEffectLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2036
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateHintTextLayout()V

    .line 2037
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayoutForHover(IZI)V

    :cond_2da
    :goto_2da
    return-void
.end method

.method protected updateTwinkleGuideInfo(Ljava/lang/String;)V
    .registers 4

    .line 1003
    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 1004
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_51

    .line 1007
    :cond_11
    const-string v0, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 1008
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->magic_sky_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    sget p1, Lcom/transsion/camera/R$drawable;->ic_magicsky_twinkle_guide:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideImageResource(I)V

    return-void

    .line 1010
    :cond_30
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideMode:Ljava/lang/String;

    const-string v0, "com.transsion.camera.ui.setting.flarecapture.FlareCaptureSettingUIEntry"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1011
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->flare_capture_guide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    sget p1, Lcom/transsion/camera/R$drawable;->ic_flare_capture_guide:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideImageResource(I)V

    :cond_50
    return-void

    .line 1005
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mTwinkleGuideTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractHintUI;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->super_night_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    sget p1, Lcom/transsion/camera/R$drawable;->ic_supernight_guide:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setTwinkleGuideImageResource(I)V

    return-void
.end method
