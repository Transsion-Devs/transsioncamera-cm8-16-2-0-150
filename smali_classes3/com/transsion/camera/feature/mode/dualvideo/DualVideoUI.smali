.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;
.super Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;
.source "SourceFile"


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomBarAnimator:Landroid/animation/ValueAnimator;

.field private final mBottomBarBaselineMarginBottom:I

.field private mIsPausing:Z

.field private mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

.field private mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mScreenWidth:I

.field private mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mSwitchScreenMarginEnd:I

.field private final mSwitchScreenWidth:I

.field private mVideoShutterPanelLayout:Landroid/view/View;

.field private mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

.field private mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mVideoSnapShotCover:Landroid/view/View;

.field private mVideoSnapShotCoverAlpha:F


# direct methods
.method public static synthetic $r8$lambda$9e4An3FB1J5pZdaNZpnC3X3Dx30(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->lambda$runSwitchScreenAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pPVubV8wI-ICY8H8r6qp7kf2ctg(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->lambda$updateBottomRootBarLayout$1(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPauseResumeButton(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSnapShotButton(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSnapShotCover(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 13

    .line 69
    sget v4, Lcom/transsion/camera/feature/mode/dualvideo/R$layout;->dual_video_normal_recording:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    const/4 p0, 0x0

    .line 39
    iput-object p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    const/4 p0, 0x0

    .line 43
    iput p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mScreenWidth:I

    .line 53
    new-instance p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$1;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)V

    iput-object p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 71
    sget p1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->switch_screen_margin_end:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenMarginEnd:I

    .line 72
    sget p1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->switch_screen_view_width:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenWidth:I

    .line 73
    const-string p0, "snap_shot_cover_alpha"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr p0, p1

    iput p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCoverAlpha:F

    .line 74
    const-string p0, "bottom_bar_baseline_margin_bottom"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarBaselineMarginBottom:I

    return-void
.end method

.method private synthetic lambda$runSwitchScreenAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 220
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private synthetic lambda$updateBottomRootBarLayout$1(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 377
    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 378
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_24

    .line 380
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 382
    :goto_24
    const-string p1, "height"

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 383
    const-string p1, "bottomMargin"

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 384
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private playAnimations()V
    .registers 12

    .line 409
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_9

    goto :goto_80

    .line 413
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->snapshot_bottom_animate_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 414
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x15e

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v1, :cond_4e

    .line 415
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 416
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 417
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    sub-float v10, v8, v0

    invoke-direct {v9, v10, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 418
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v5, v8, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 419
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 420
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 421
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v9, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 423
    :cond_4e
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 424
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 425
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 426
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v0, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 427
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v8, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 428
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 429
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_80
    :goto_80
    return-void
.end method

.method private runSwitchScreenAnimator()V
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    .line 213
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mScreenWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr v0, v2

    .line 214
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenMarginEnd:I

    sub-int/2addr v0, v2

    .line 217
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 218
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateSnapShotCoverLayout()V
    .registers 6

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v1, :cond_9

    goto :goto_28

    .line 438
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 440
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 441
    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 442
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_28
    :goto_28
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

.method protected doCreateView()Landroid/view/View;
    .registers 4

    .line 79
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    .line 80
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_shutter_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    .line 82
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_pause_resume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_snap_shot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getVideoSnapShotListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->dual_video_snap_shot_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedCapture()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 88
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_4e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->updateSnapShotCoverLayout()V

    .line 91
    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$id;->switch_screen_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getExtClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public bridge synthetic isNextRecordingAnimationEnable(Landroid/view/View;Z)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public isRecordPausing()Z
    .registers 1

    .line 447
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mIsPausing:Z

    return p0
.end method

.method public bridge synthetic isRecordingAnimationComplete(Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isRecordingAnimationComplete(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected onHideRecordingUI()V
    .registers 4

    .line 134
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    if-nez v0, :cond_5

    return-void

    .line 137
    :cond_5
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onHideRecordingUI()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    const/4 v1, 0x4

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 139
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_31

    .line 143
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 175
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onOrientationChanged(I)V

    .line 176
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 179
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 180
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 182
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1c

    .line 183
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 185
    :cond_1c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_23

    .line 186
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_23
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 197
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 198
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->updateSnapShotCoverLayout()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 203
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onScreenFormChanged(IZ)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScreenFormChanged,mShowUI:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mShowUI:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onShowRecordingUI()V
    .registers 5

    .line 102
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onShowRecordingUI()V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_25

    move v2, v1

    goto :goto_26

    :cond_25
    move v2, v3

    .line 107
    :goto_26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v2

    if-eqz v2, :cond_36

    move v3, v1

    .line 109
    :cond_36
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    .line 114
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    :cond_5f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 120
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_72

    .line 123
    :cond_6f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->playAnimations()V

    .line 126
    :cond_72
    :goto_72
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    if-eqz v0, :cond_7b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7a

    goto :goto_7b

    :cond_7a
    return-void

    .line 128
    :cond_7b
    :goto_7b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->runSwitchScreenAnimator()V

    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .registers 3

    .line 152
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->onUpdateRecordingUI(Z)V

    .line 153
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mIsPausing:Z

    .line 154
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_recording_pause:I

    if-eqz p1, :cond_b

    .line 156
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_recording_resume:I

    .line 158
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public playCaptureAnimation(Landroid/content/Context;)V
    .registers 6

    .line 163
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "playCaptureAnimation +"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCover:Landroid/view/View;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotCoverAlpha:F

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    aput v3, v1, v0

    const-string v0, "alpha"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playCaptureAnimation -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resetRecordingUI()V
    .registers 6

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    if-eqz v0, :cond_3c

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 534
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_3c

    .line 535
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v4, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 542
    :cond_3c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 546
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_6d

    .line 547
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v2, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 554
    :cond_6d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_7a

    const/4 v1, 0x0

    .line 555
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7a
    return-void
.end method

.method public setRecordingUIEnable(Z)V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_7

    .line 452
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 454
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_e

    .line 455
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_e
    return-void
.end method

.method public setSwitchScreenButtonEnable(Z)V
    .registers 2

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_7

    .line 461
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 9

    .line 480
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_f

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->snapshot_bottom_animate_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_10

    :cond_f
    move v0, p2

    .line 483
    :goto_10
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v1

    const-string v2, "startRecordingAnimation: isRecordBegin = "

    const-string v3, ", "

    if-eqz v1, :cond_78

    .line 484
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 485
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 486
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 488
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    xor-int/lit8 v4, p1, 0x1

    sub-float v5, p2, v0

    invoke-virtual {p0, v1, p1, v4, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_6b

    .line 491
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_73

    .line 493
    :cond_6b
    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$2;

    invoke-direct {v4, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 501
    :goto_73
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 504
    :cond_78
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 505
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 506
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 507
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 509
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_cd

    .line 512
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_d5

    .line 514
    :cond_cd
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 522
    :goto_d5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_da
    return-void
.end method

.method public unInitVideoUI()V
    .registers 2

    .line 467
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_26

    .line 468
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 471
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 475
    :cond_26
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->unInitVideoUI()V

    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .registers 21

    move-object/from16 v0, p0

    .line 233
    invoke-super/range {p0 .. p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->updateBottomRootBarLayout(Z)V

    .line 234
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    if-eqz v1, :cond_31f

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_31f

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_13

    goto/16 :goto_31f

    .line 237
    :cond_13
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 238
    iget v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mOrientation:I

    .line 239
    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 241
    iget v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mRecordingOrientation:I

    .line 244
    :cond_21
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 245
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 246
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 247
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_53

    .line 250
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v8

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v10

    sub-int/2addr v8, v10

    .line 252
    :cond_53
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v10

    .line 253
    iget v11, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 255
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 257
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    const/4 v14, 0x0

    .line 260
    invoke-virtual {v4, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 261
    invoke-virtual {v7, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 262
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 263
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 264
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 265
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/16 v14, 0x51

    if-ne v2, v3, :cond_1b7

    const/16 v10, 0x5a

    if-eq v1, v10, :cond_167

    const/16 v10, 0xb4

    if-eq v1, v10, :cond_120

    const/16 v10, 0x10e

    const/16 v9, 0x35

    if-eq v1, v10, :cond_d6

    .line 307
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 308
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 309
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 310
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 311
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_top_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 312
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v9, 0x31

    .line 313
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v9, 0x33

    .line 314
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 315
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_start_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 316
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_top_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_d2
    move v10, v3

    move v9, v11

    goto/16 :goto_1b3

    .line 293
    :cond_d6
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 294
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v10, 0x55

    .line 295
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_90_top_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 297
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/16 v14, 0x13

    .line 298
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v14, 0x15

    .line 299
    iput v14, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 300
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 301
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_90_top_margin:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 302
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_start_margin:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v9, v10

    :goto_11d
    move v10, v3

    goto/16 :goto_1b3

    .line 281
    :cond_120
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 282
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v9, 0x53

    .line 283
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 284
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 285
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_top_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/16 v10, 0x31

    .line 286
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    iput v14, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v10, 0x55

    .line 288
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 289
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_start_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 290
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_top_margin:I

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_11d

    .line 269
    :cond_167
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 270
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v9, 0x33

    .line 271
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 272
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_90_top_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 273
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v14, 0x15

    .line 274
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v14, 0x13

    .line 275
    iput v14, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v9, 0x53

    .line 276
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 277
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_90_top_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 278
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_switch_screen_start_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_d2

    :goto_1b3
    const/4 v3, 0x0

    :goto_1b4
    const/4 v14, 0x0

    goto/16 :goto_26a

    :cond_1b7
    const/16 v3, 0x30

    if-eqz v2, :cond_1be

    const/4 v9, 0x2

    if-ne v2, v9, :cond_1c0

    :cond_1be
    const/4 v9, -0x1

    goto :goto_222

    :cond_1c0
    const/4 v9, 0x3

    if-ne v2, v9, :cond_21e

    const/4 v9, -0x1

    .line 337
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 338
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v10

    .line 339
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v14, 0x13

    .line 343
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_shutter_panel_margin:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v14, 0x15

    .line 345
    iput v14, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_shutter_panel_margin:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 347
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 348
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v18, 0x2

    div-int/lit8 v3, v3, 0x2

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->switch_screen_margin_top_hover:I

    .line 349
    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v3, v9

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 350
    const-string v3, "on"

    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mSwitchPreviewValue:Ljava/lang/String;

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_217

    .line 351
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->switch_screen_margin_preview_on_top_hover:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 353
    :cond_217
    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenMarginEnd:I

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto :goto_1b4

    :cond_21e
    move v9, v11

    move v3, v12

    move v14, v13

    goto :goto_26a

    .line 323
    :goto_222
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 324
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v9

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v10

    sub-int v10, v9, v10

    .line 325
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 326
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v9

    const v14, 0x800013

    .line 329
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_shutter_panel_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const v14, 0x800015

    .line 331
    iput v14, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 332
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->dual_video_shutter_panel_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 333
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 334
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v3

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 335
    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenMarginEnd:I

    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1b3

    .line 356
    :goto_26a
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v15, v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v15

    move/from16 v16, v3

    if-ltz v15, :cond_279

    const/4 v3, 0x1

    :goto_275
    move/from16 v17, v12

    const/4 v12, 0x3

    goto :goto_27b

    :cond_279
    const/4 v3, 0x0

    goto :goto_275

    :goto_27b
    if-eq v2, v12, :cond_286

    if-eqz v2, :cond_286

    const/4 v12, 0x2

    if-ne v2, v12, :cond_283

    goto :goto_286

    :cond_283
    :goto_283
    move/from16 v2, v16

    goto :goto_28f

    :cond_286
    :goto_286
    if-eqz v3, :cond_28a

    move v14, v15

    goto :goto_283

    .line 364
    :cond_28a
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v14, 0x0

    .line 368
    :goto_28f
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2eb

    if-eqz p1, :cond_2eb

    if-eqz v3, :cond_2a1

    move v12, v13

    goto :goto_2a3

    :cond_2a1
    move/from16 v12, v17

    .line 370
    :goto_2a3
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v2

    filled-new-array {v12, v2}, [I

    move-result-object v2

    .line 369
    const-string v12, "padding"

    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 371
    const-string v12, "height"

    filled-new-array {v8, v10}, [I

    move-result-object v8

    invoke-static {v12, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 372
    const-string v10, "bottomMargin"

    filled-new-array {v11, v9}, [I

    move-result-object v9

    invoke-static {v10, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 373
    filled-new-array {v8, v9, v2, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x190

    .line 374
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 375
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    sget-object v8, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0, v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;ZLandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mBottomBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2fa

    .line 388
    :cond_2eb
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v2, v8, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 389
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 390
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 391
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :goto_2fa
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v8, 0x0

    if-eqz v2, :cond_311

    .line 398
    invoke-virtual {v2, v1, v8}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 400
    :cond_311
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v2, :cond_318

    .line 401
    invoke-virtual {v2, v1, v8}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 403
    :cond_318
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mSwitchScreenButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_31f

    .line 404
    invoke-virtual {v0, v1, v8}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_31f
    :goto_31f
    return-void
.end method

.method public bridge synthetic updateRecordingAnimationState(Landroid/view/View;ZZ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method

.method public updateScreenWidth(I)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoUI;->mScreenWidth:I

    return-void
.end method
