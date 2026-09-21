.class public Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$ICutSameUI;


# static fields
.field private static final ENTER_ANIMATION_TIME:I = 0x64

.field private static final GUIDE_ANIMATION_TIME:I = 0xfa

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSPARENT_0:F = 0.0f

.field private static final TRANSPARENT_1:F = 1.0f


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPage:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    .end annotation
.end field

.field private mCurrentSegmentIndex:I

.field private final mDynamicHideAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private final mDynamicShowAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mFirstPreviewArrived:Z

.field private mFoldPlaySwitch:Landroid/widget/ImageView;

.field private mGuideContainer:Landroid/widget/FrameLayout;

.field private final mGuidePlayerMarginTopBar:I

.field private mGuideRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mGuideState:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$GuideState;
    .end annotation
.end field

.field private final mHideAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mHideAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mHideScalePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsZooming:Z

.field private mLastScreenFormType:I

.field private mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

.field private mOrientation:I

.field private mPaused:Z

.field private final mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

.field private mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

.field private mPlaying:Z

.field private mPreviewSwitchOn:Z

.field private mRootView:Landroid/widget/FrameLayout;

.field private mScreenFormType:I

.field private mSegmentGuideText:Landroid/widget/TextView;

.field private final mShowAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mShowPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mUnfoldPlaySwitchMarginTop:I

.field private mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

.field private mbActive:Z

.field private mbRecording:Z

.field private mbSegmentFull:Z

.field private mbSegmentPlay:Z


# direct methods
.method public static synthetic $r8$lambda$2xHjAxHW8UuM55aj3JpF134O_Mw(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->lambda$onFirstSteadyFrame$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$FeP5MRbgFZWWTGKm7Aen4lEyso4(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->lambda$runAnimationOnlySupportTBHoverUI$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_MTuzgxE1v_zKbC6pY5eSJKd5kM(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->foldPlaySwitchClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDynamicShowAnimatorListenerAdapter(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Landroid/animation/AnimatorListenerAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mDynamicShowAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuideContainer(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnfoldPlaySwitch(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbActive(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mpausePlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->pausePlayIfNeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresumePlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->resumePlayIfNeed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowGuideWithAnimation(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->showGuideWithAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayoutParams(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updateLayoutParams(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_VideoGuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;)V
    .registers 11

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 63
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 65
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideScalePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 67
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mLastScreenFormType:I

    .line 93
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentSegmentIndex:I

    .line 94
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    .line 96
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentPage:I

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlaying:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPaused:Z

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentPlay:Z

    .line 102
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentFull:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mIsZooming:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFirstPreviewArrived:Z

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPreviewSwitchOn:Z

    .line 387
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 402
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 417
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mDynamicShowAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 430
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$4;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mDynamicHideAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 768
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 116
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    .line 117
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_layout_margin_top_bar:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuidePlayerMarginTopBar:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_switch_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitchMarginTop:I

    .line 121
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 379
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1e
    return-void
.end method

.method private foldPlaySwitchClick(Landroid/view/View;)V
    .registers 5

    .line 450
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 453
    :cond_7
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foldPlayerSwitchClick, mGuideState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->guide_fold_switch:I

    if-ne p1, v0, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    .line 457
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->cancelAnimation()V

    .line 458
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    if-nez v0, :cond_38

    const/16 v0, 0x271f

    goto :goto_3a

    :cond_38
    const/16 v0, 0x2720

    :goto_3a
    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 459
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    if-nez p1, :cond_47

    .line 460
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->showGuideWithAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    return-void

    .line 462
    :cond_47
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->hideGuideWithAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz v0, :cond_21

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentSegmentIndex:I

    if-ltz v1, :cond_21

    .line 626
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentSegmentIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    return-object p0

    .line 629
    :cond_21
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getCurrentMediaItem, but no item set."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private hideGuideWithAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 4

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 476
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private initAnimator()V
    .registers 12

    .line 356
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_8c

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    new-array v4, v1, [F

    fill-array-data v4, :array_94

    const-string v5, "scaleX"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 359
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    new-array v6, v1, [F

    fill-array-data v6, :array_9c

    const-string v7, "scaleY"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 361
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v9, v8, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v2, v9, v0

    aput-object v4, v9, v1

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 362
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 365
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    new-array v4, v1, [F

    fill-array-data v4, :array_a4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 366
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    new-array v4, v1, [F

    fill-array-data v4, :array_ac

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 367
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    new-array v5, v1, [F

    fill-array-data v5, :array_b4

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 368
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideScalePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideScalePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v8, [Landroid/animation/Animator;

    aput-object v2, v5, v10

    aput-object v3, v5, v0

    aput-object v4, v5, v1

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    nop

    :array_8c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_94
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_9c
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_a4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_ac
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_b4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method private initEvents()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFoldPlaySwitch:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initPlayer()V
    .registers 4

    .line 146
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayListener:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;

    const-string v2, "guide"

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;-><init>(Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_guide_video_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    return-void
.end method

.method private initView()V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_guide_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_guide_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->guide_fold_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFoldPlaySwitch:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->guide_unfold_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 139
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->segment_guide_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mSegmentGuideText:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFoldPlaySwitch:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onFirstSteadyFrame$1()V
    .registers 2

    const/4 v0, 0x1

    .line 604
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setEnable(Z)V

    return-void
.end method

.method private synthetic lambda$runAnimationOnlySupportTBHoverUI$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 330
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    const-string/jumbo v1, "translation"

    if-eqz v0, :cond_3b

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_2e

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_21

    const/16 v2, 0x10e

    if-eq v0, v2, :cond_14

    goto :goto_47

    .line 335
    :cond_14
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_47

    .line 338
    :cond_21
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_47

    .line 332
    :cond_2e
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_47

    .line 341
    :cond_3b
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 346
    :goto_47
    const-string/jumbo v0, "videoWidth"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 347
    const-string/jumbo v0, "videoHeight"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private pausePlayIfNeed()V
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlaying:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    .line 511
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlaying:Z

    .line 512
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->pausePlay()V

    :cond_e
    return-void
.end method

.method private resetDemoPlayContainer()V
    .registers 3

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private resumePlayIfNeed()V
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    if-eqz v0, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlaying:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentPlay:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentFull:Z

    if-nez v1, :cond_23

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentPage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    if-nez v1, :cond_23

    const/4 v1, 0x1

    .line 524
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlaying:Z

    .line 525
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->resumePlay()V

    :cond_23
    return-void
.end method

.method private runAnimationOnlySupportTBHoverUI(Landroid/widget/FrameLayout$LayoutParams;IIIIII)V
    .registers 9

    .line 325
    const-string/jumbo v0, "translation"

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 326
    const-string/jumbo p3, "videoWidth"

    filled-new-array {p4, p5}, [I

    move-result-object p4

    invoke-static {p3, p4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 327
    const-string/jumbo p4, "videoHeight"

    filled-new-array {p6, p7}, [I

    move-result-object p5

    invoke-static {p4, p5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    .line 328
    filled-new-array {p2, p3, p4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    .line 329
    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x190

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private showGuideWithAnimation(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 4

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startGuideAnimation()V
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->cancelAnimation()V

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mDynamicHideAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->hideGuideWithAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    .line 445
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updateLayoutParams(Z)V

    return-void
.end method

.method private startPlayIfNeed()V
    .registers 13

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz v0, :cond_e9

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e9

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentPlay:Z

    if-nez v0, :cond_e9

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-nez v0, :cond_1b

    goto/16 :goto_e9

    .line 646
    :cond_1b
    :try_start_1b
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay, video path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getDemoAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentSegmentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 650
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-eqz v2, :cond_a3

    .line 651
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vlogassets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getDemoAssetsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 653
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 654
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getTargetStartTime()J

    move-result-wide v2

    long-to-int v8, v2

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v0

    long-to-int v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x1

    .line 653
    invoke-interface/range {v4 .. v11}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Ljava/lang/String;ZIIZZ)V

    goto :goto_c7

    .line 656
    :cond_a3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getDemoAssetsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 657
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mVideoView:Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    .line 658
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getTargetStartTime()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v0

    long-to-int v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x1

    .line 657
    invoke-interface/range {v3 .. v10}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->playVideo(Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;Landroid/content/res/AssetFileDescriptor;ZIIZZ)V

    .line 660
    :goto_c7
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentSegmentIndex:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updatePlayerContent(I)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_cc} :catch_cd

    return-void

    :catch_cd
    move-exception v0

    move-object p0, v0

    .line 662
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay, openFd failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_e9
    :goto_e9
    return-void
.end method

.method private stopPlayIfNeed()V
    .registers 1

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    if-eqz p0, :cond_7

    .line 531
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->stopPlay()V

    :cond_7
    return-void
.end method

.method private updateLayoutParams(Z)V
    .registers 19

    move-object/from16 v0, p0

    .line 162
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 163
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_c

    return-void

    .line 166
    :cond_c
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 168
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v1

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight(D)I

    move-result v1

    .line 169
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 170
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    .line 171
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 172
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 173
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    const/4 v4, 0x1

    const/16 v5, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    const/16 v10, 0x31

    const/16 v11, 0x35

    if-ne v3, v4, :cond_b0

    .line 174
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_demo_top_margin_expand:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 176
    iget v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    if-eq v1, v7, :cond_9a

    if-eq v1, v6, :cond_84

    if-eq v1, v5, :cond_70

    const/16 v1, 0x33

    .line 194
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 195
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_top_expand_0:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 196
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_left_expand:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2a4

    .line 188
    :cond_70
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 189
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_top_expand_90:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 190
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_left_expand:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2a4

    :cond_84
    const/16 v1, 0x55

    .line 183
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_top_expand_0:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 185
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_left_expand:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2a4

    :cond_9a
    const/16 v1, 0x53

    .line 178
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_top_expand_90:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 180
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_left_expand:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2a4

    .line 200
    :cond_b0
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x15

    const/16 v12, 0x51

    const/16 v13, 0x13

    if-eqz v3, :cond_265

    .line 201
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 202
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitchMarginTop:I

    add-int/2addr v1, v3

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 203
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_right_hover:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 204
    iget v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-nez v1, :cond_dc

    .line 205
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_hover:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_e2

    .line 206
    :cond_dc
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_normal:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 207
    :goto_e2
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-nez v3, :cond_ed

    .line 208
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_normal:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_f3

    .line 209
    :cond_ed
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_width_hover:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 210
    :goto_f3
    iget v14, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-nez v14, :cond_fe

    .line 211
    sget v14, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_hover:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    goto :goto_104

    .line 212
    :cond_fe
    sget v14, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_normal:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 213
    :goto_104
    iget v15, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-nez v15, :cond_10f

    .line 214
    sget v15, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_normal:I

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_115

    .line 215
    :cond_10f
    sget v15, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_height_hover:I

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 216
    :goto_115
    iget v11, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    if-eq v11, v7, :cond_1f0

    if-eq v11, v6, :cond_1ab

    if-eq v11, v5, :cond_168

    .line 269
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 270
    iget v4, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    iget v5, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mLastScreenFormType:I

    if-eq v4, v5, :cond_155

    if-nez v4, :cond_12e

    .line 272
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_hover:I

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_134

    .line 273
    :cond_12e
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_normal:I

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 274
    :goto_134
    iget v5, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-nez v5, :cond_148

    .line 275
    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_normal:I

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_13e
    move v6, v4

    move v4, v1

    move-object v1, v2

    move v2, v6

    move v6, v5

    move v5, v3

    move v3, v6

    move v6, v14

    move v7, v15

    goto :goto_14f

    .line 276
    :cond_148
    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_hover:I

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_13e

    .line 277
    :goto_14f
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->runAnimationOnlySupportTBHoverUI(Landroid/widget/FrameLayout$LayoutParams;IIIIII)V

    :goto_152
    move-object v2, v1

    goto/16 :goto_23c

    :cond_155
    move-object v1, v2

    if-nez v4, :cond_15f

    .line 281
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_normal:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_165

    .line 282
    :cond_15f
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_hover:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_165
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_152

    :cond_168
    move v4, v1

    move-object v1, v2

    move v5, v3

    move v6, v14

    move v7, v15

    .line 234
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 235
    iget v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mLastScreenFormType:I

    if-eq v2, v3, :cond_199

    if-nez v2, :cond_17e

    .line 237
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_hover:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_184

    .line 238
    :cond_17e
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_normal:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 239
    :goto_184
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-nez v3, :cond_18f

    .line 240
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_normal:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_195

    .line 241
    :cond_18f
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_hover:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 242
    :goto_195
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->runAnimationOnlySupportTBHoverUI(Landroid/widget/FrameLayout$LayoutParams;IIIIII)V

    goto :goto_152

    :cond_199
    if-nez v2, :cond_1a2

    .line 246
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_normal:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1a8

    .line 247
    :cond_1a2
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_hover:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1a8
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_152

    :cond_1ab
    move v4, v1

    move-object v1, v2

    move v5, v3

    move v6, v14

    move v7, v15

    .line 251
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 252
    iget v2, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mLastScreenFormType:I

    if-eq v2, v3, :cond_1dd

    if-nez v2, :cond_1c1

    .line 254
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_hover:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1c7

    .line 255
    :cond_1c1
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_normal:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 256
    :goto_1c7
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-nez v3, :cond_1d2

    .line 257
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_normal:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1d8

    .line 258
    :cond_1d2
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_hover:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 259
    :goto_1d8
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->runAnimationOnlySupportTBHoverUI(Landroid/widget/FrameLayout$LayoutParams;IIIIII)V

    goto/16 :goto_152

    :cond_1dd
    if-nez v2, :cond_1e6

    .line 263
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_normal:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1ec

    .line 264
    :cond_1e6
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_top_hover:I

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1ec
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_152

    :cond_1f0
    move-object v5, v2

    move v2, v1

    move-object v1, v5

    move v5, v3

    move v6, v14

    move v7, v15

    .line 218
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 219
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    iget v4, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mLastScreenFormType:I

    if-eq v3, v4, :cond_22a

    if-nez v3, :cond_207

    .line 221
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_hover:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_20d

    .line 222
    :cond_207
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_normal:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 223
    :goto_20d
    iget v4, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-nez v4, :cond_21e

    .line 224
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_normal:I

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_217
    move/from16 v16, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v16

    goto :goto_225

    .line 225
    :cond_21e
    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_hover:I

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_217

    .line 226
    :goto_225
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->runAnimationOnlySupportTBHoverUI(Landroid/widget/FrameLayout$LayoutParams;IIIIII)V

    goto/16 :goto_152

    :cond_22a
    move-object v2, v1

    if-nez v3, :cond_234

    .line 229
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_normal:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_23a

    .line 230
    :cond_234
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_guide_video_margin_left_hover:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_23a
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 286
    :goto_23c
    iget v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_260

    const/16 v1, 0x35

    .line 287
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 288
    iget-boolean v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPreviewSwitchOn:Z

    if-eqz v1, :cond_250

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_top_hover_preview_on:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_256

    .line 289
    :cond_250
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_top_hover:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_256
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 290
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_right_hover:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 292
    :cond_260
    iget v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    iput v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mLastScreenFormType:I

    goto :goto_2a4

    .line 293
    :cond_265
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    if-eqz v3, :cond_26c

    const/4 v11, 0x2

    if-ne v3, v11, :cond_2a4

    :cond_26c
    const/16 v3, 0x35

    .line 295
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitchMarginTop:I

    add-int/2addr v3, v1

    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 297
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_unfold_margin_size:I

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 298
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    if-eq v3, v7, :cond_29d

    if-eq v3, v6, :cond_295

    if-eq v3, v5, :cond_28d

    .line 313
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 314
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuidePlayerMarginTopBar:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2a4

    .line 304
    :cond_28d
    iput v13, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuidePlayerMarginTopBar:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2a4

    .line 308
    :cond_295
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 309
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuidePlayerMarginTopBar:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_2a4

    .line 300
    :cond_29d
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 301
    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuidePlayerMarginTopBar:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 318
    :cond_2a4
    :goto_2a4
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v3, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    move/from16 v4, p1

    invoke-virtual {v1, v3, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 319
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePlayerContent(I)V
    .registers 6

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 668
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getHelpText(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mSegmentGuideText:Landroid/widget/TextView;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSegmentPlayStrategy()V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-nez v0, :cond_5

    goto :goto_26

    .line 618
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-eqz v0, :cond_26

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getTargetStartTime()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->getCurrentMediaItem()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->seekTo(II)V

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public enter(I)V
    .registers 5

    .line 540
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter guide ui, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 541
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    .line 542
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setCurrentPosition(I)V

    const/4 p1, 0x0

    .line 543
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    .line 544
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->resetDemoPlayContainer()V

    .line 545
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->startPlayIfNeed()V

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x11f

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public exit()V
    .registers 4

    .line 554
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit guide ui, mbActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 555
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-nez v0, :cond_1d

    goto :goto_48

    :cond_1d
    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    .line 560
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 562
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->stopPlayIfNeed()V

    .line 566
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentFull:Z

    if-nez v0, :cond_48

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x120

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_48
    :goto_48
    return-void
.end method

.method public inflate(Landroid/view/ViewGroup;)V
    .registers 3

    .line 126
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->cut_same_guide_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->initView()V

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->initPlayer()V

    .line 129
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->initEvents()V

    const/4 p1, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updateLayoutParams(Z)V

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->initAnimator()V

    return-void
.end method

.method public needStart()Z
    .registers 2

    .line 572
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    if-nez v0, :cond_e

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentPlay:Z

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_fe

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_fe

    const/4 v2, 0x3

    if-eq p1, v2, :cond_f2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_fe

    const/4 v2, 0x7

    if-eq p1, v2, :cond_f2

    const/16 v2, 0x9

    if-eq p1, v2, :cond_f2

    const/16 v2, 0x17

    if-eq p1, v2, :cond_ec

    const/16 v2, 0x18

    if-eq p1, v2, :cond_e9

    const/16 v2, 0x2719

    const/16 v3, 0x120

    const/4 v4, 0x4

    if-eq p1, v2, :cond_d5

    const/16 v2, 0x271a

    const/16 v5, 0x11f

    if-eq p1, v2, :cond_b9

    const/16 v2, 0x271d

    if-eq p1, v2, :cond_b3

    const/16 v2, 0x271e

    if-eq p1, v2, :cond_ad

    packed-switch p1, :pswitch_data_102

    goto/16 :goto_fd

    .line 691
    :pswitch_38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentPlay:Z

    .line 692
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-nez p1, :cond_fd

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentFull:Z

    if-nez p1, :cond_fd

    .line 693
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentSegmentIndex:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->enter(I)V

    return-void

    .line 675
    :pswitch_48
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentPlay:Z

    .line 676
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    if-nez p1, :cond_fd

    .line 677
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->exit()V

    return-void

    .line 697
    :pswitch_52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbRecording:Z

    .line 698
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-eqz p1, :cond_8b

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentFull:Z

    if-nez p1, :cond_8b

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPaused:Z

    if-nez p1, :cond_8b

    .line 699
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->resumePlayIfNeed()V

    .line 700
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 705
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_77

    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    if-nez p1, :cond_77

    move v0, v1

    .line 707
    :cond_77
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7d

    const/4 v0, 0x0

    goto :goto_7f

    :cond_7d
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_7f
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 708
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    if-nez p1, :cond_8b

    .line 709
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v5}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 712
    :cond_8b
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_fd

    .line 713
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setEnable(Z)V

    return-void

    .line 739
    :pswitch_93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFirstPreviewArrived:Z

    goto :goto_fe

    .line 681
    :pswitch_96
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbRecording:Z

    .line 682
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-eqz p1, :cond_a9

    .line 683
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->pausePlayIfNeed()V

    .line 684
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 687
    :cond_a9
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setEnable(Z)V

    return-void

    .line 760
    :cond_ad
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPreviewSwitchOn:Z

    .line 761
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updateLayoutParams(Z)V

    return-void

    .line 756
    :cond_b3
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPreviewSwitchOn:Z

    .line 757
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updateLayoutParams(Z)V

    return-void

    .line 726
    :cond_b9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentFull:Z

    .line 727
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-eqz p1, :cond_fd

    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mGuideState:I

    if-nez p1, :cond_fd

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPaused:Z

    if-nez p1, :cond_fd

    .line 729
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->resumePlayIfNeed()V

    .line 730
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v5}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 718
    :cond_d5
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentFull:Z

    .line 719
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    if-eqz p1, :cond_fd

    .line 720
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->pausePlayIfNeed()V

    .line 721
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 746
    :cond_e9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mIsZooming:Z

    goto :goto_f2

    .line 735
    :cond_ec
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mIsZooming:Z

    .line 736
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setEnable(Z)V

    return-void

    .line 751
    :cond_f2
    :goto_f2
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mIsZooming:Z

    if-nez p1, :cond_fd

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_fd

    .line 752
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setEnable(Z)V

    :cond_fd
    :goto_fd
    return-void

    .line 743
    :cond_fe
    :goto_fe
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->setEnable(Z)V

    return-void

    :pswitch_data_102
    .packed-switch 0x2712
        :pswitch_96
        :pswitch_93
        :pswitch_52
        :pswitch_48
        :pswitch_38
    .end packed-switch
.end method

.method public onFirstSteadyFrame()V
    .registers 4

    .line 601
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstSteadyFrame, mbRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFirstPreviewArrived:Z

    .line 603
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mIsZooming:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbRecording:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2f

    .line 604
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 157
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mScreenFormType:I

    .line 158
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updateLayoutParams(Z)V

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 492
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFirstPreviewArrived:Z

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPaused:Z

    .line 494
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->pausePlayIfNeed()V

    return-void
.end method

.method public resume()V
    .registers 3

    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPaused:Z

    .line 483
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->resumePlayIfNeed()V

    .line 485
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbSegmentFull:Z

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentPage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlaying:Z

    if-eqz p0, :cond_18

    const/16 p0, 0x11f

    goto :goto_1a

    :cond_18
    const/16 p0, 0x120

    :goto_1a
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1d
    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 2

    .line 582
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentSegmentIndex:I

    .line 583
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updateSegmentPlayStrategy()V

    .line 584
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentSegmentIndex:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->updatePlayerContent(I)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mFoldPlaySwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 610
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 4

    .line 588
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 591
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mOrientation:I

    .line 592
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mUnfoldPlaySwitch:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mbActive:Z

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 593
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->startGuideAnimation()V

    return-void
.end method

.method public setTemplateItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 2

    .line 536
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 500
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->exit()V

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 502
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;->destroy()V

    .line 503
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mPlayerManager:Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager;

    .line 506
    :cond_12
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mRootView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 597
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->mCurrentPage:I

    return-void
.end method
