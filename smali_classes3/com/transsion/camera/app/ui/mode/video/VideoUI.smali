.class public Lcom/transsion/camera/app/ui/mode/video/VideoUI;
.super Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsPause:Z

.field private mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

.field private mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mUnifyCaptureAnimation:Z

.field private mVideoShutterPanelLayout:Landroid/view/View;

.field private mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

.field protected mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mVideoSnapShotCover:Landroid/view/View;

.field private mVideoSnapShotCoverAlpha:F


# direct methods
.method public static synthetic $r8$lambda$0Gad5EmqULKltVJSKhNAuJq53hk(Lcom/transsion/camera/app/ui/mode/video/VideoUI;ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->lambda$updateBottomRootBarLayout$1(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$umQC_4ku--cikZpgVGTaounkS4c(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->lambda$onHideRecordingUI$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPauseResumeButton(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoSnapShotCover(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 39
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 6

    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mIsPause:Z

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mUnifyCaptureAnimation:Z

    .line 48
    new-instance p1, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 68
    iput-object p5, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/transsion/camera/R$bool;->unify_capture_animation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mUnifyCaptureAnimation:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 11

    .line 62
    sget v3, Lcom/transsion/camera/R$layout;->normal_recording:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-void
.end method

.method private synthetic lambda$onHideRecordingUI$0()V
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updateBottomRootBarLayout$1(ZLandroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 406
    const-string v0, "padding"

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_24

    .line 409
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 411
    :goto_24
    const-string p1, "height"

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 412
    const-string p1, "bottomMargin"

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private playAnimations()V
    .registers 12

    .line 451
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_9

    goto :goto_80

    .line 455
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->snapshot_bottom_animate_move_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 456
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

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

    .line 457
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 458
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 459
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    sub-float v10, v8, v0

    invoke-direct {v9, v10, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 460
    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v5, v8, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 461
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 462
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 463
    iget-object v9, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v9, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 465
    :cond_4e
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 466
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 467
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 468
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v0, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 469
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v8, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 470
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 471
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_80
    :goto_80
    return-void
.end method

.method private updateSnapShotCoverLayout()V
    .registers 6

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v1, :cond_9

    goto :goto_28

    .line 480
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 481
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 482
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 483
    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 484
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_28
    :goto_28
    return-void
.end method

.method private updateSnapshotCoverView()V
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 442
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mUnifyCaptureAnimation:Z

    if-nez v0, :cond_14

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$color;->screen_supply_color:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 445
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$color;->preview_cover_default_color:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1b
    return-void
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .registers 5

    .line 74
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    .line 75
    sget v1, Lcom/transsion/camera/R$id;->video_shutter_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    .line 77
    sget v1, Lcom/transsion/camera/R$id;->video_pause_resume:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 78
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v1, Lcom/transsion/camera/R$id;->video_snap_shot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 80
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getVideoSnapShotListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v1, Lcom/transsion/camera/R$id;->video_snap_shot_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedCapture()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_4e
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$integer;->snap_shot_cover_alpha:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCoverAlpha:F

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->updateSnapShotCoverLayout()V

    .line 88
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_6c

    .line 89
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 91
    :cond_6c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_75

    .line 92
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    invoke-virtual {v1, p0, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_75
    return-object v0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onHideRecordingUI()V
    .registers 4

    .line 150
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onHideRecordingUI()V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_c

    goto :goto_4a

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    const/4 v1, 0x4

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_21

    .line 155
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 159
    :cond_2b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_40

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 163
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 211
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onOrientationChanged(I)V

    .line 213
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    if-eqz v0, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    goto :goto_27

    :cond_e
    const/4 v1, 0x7

    if-ne v1, v0, :cond_36

    .line 223
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    move p1, v0

    .line 226
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 227
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 229
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_36

    .line 230
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void

    .line 216
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    .line 217
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 219
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_36

    .line 220
    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_36
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 241
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onRelativePreviewRectChanged(Landroid/graphics/Rect;)V

    .line 242
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->updateSnapShotCoverLayout()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 247
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onScreenFormChanged(IZ)V

    .line 248
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 249
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 250
    invoke-virtual {p2, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 252
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_14

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_14
    return-void
.end method

.method protected onShowRecordingUI()V
    .registers 6

    .line 99
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onShowRecordingUI()V

    .line 100
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    goto/16 :goto_fd

    .line 104
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v3, 0x7

    if-ne v3, v2, :cond_48

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_shutter_panel_button_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 108
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_shutter_panel_button_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 109
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_shutter_panel_button_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 110
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->flip_video_shutter_panel_button_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_70

    .line 112
    :cond_48
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_shutter_panel_button_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 113
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_shutter_panel_button_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 114
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_shutter_panel_button_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 115
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_shutter_panel_button_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 117
    :goto_70
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x0

    if-ne v3, v0, :cond_90

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_90

    .line 122
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 126
    :cond_90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getPauseResumeListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 127
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_b1

    move v2, v1

    goto :goto_b2

    :cond_b1
    move v2, v4

    .line 129
    :goto_b2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v2

    if-eqz v2, :cond_c2

    goto :goto_c3

    :cond_c2
    move v1, v4

    .line 131
    :goto_c3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d2

    if-ne v0, v3, :cond_ce

    goto :goto_d2

    .line 144
    :cond_ce
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->playAnimations()V

    return-void

    .line 135
    :cond_d2
    :goto_d2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 137
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 138
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    :cond_ee
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v1

    if-eqz v1, :cond_fd

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_fd
    :goto_fd
    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .registers 3

    .line 175
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onUpdateRecordingUI(Z)V

    .line 176
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mIsPause:Z

    .line 177
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz v0, :cond_c

    sget v0, Lcom/transsion/camera/R$drawable;->ic_recording_pause_low_light:I

    goto :goto_e

    :cond_c
    sget v0, Lcom/transsion/camera/R$drawable;->ic_recording_pause:I

    :goto_e
    if-eqz p1, :cond_1b

    .line 179
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz p1, :cond_18

    sget p1, Lcom/transsion/camera/R$drawable;->ic_recording_resume_low_light:I

    :goto_16
    move v0, p1

    goto :goto_1b

    :cond_18
    sget p1, Lcom/transsion/camera/R$drawable;->ic_recording_resume:I

    goto :goto_16

    .line 181
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_22

    .line 182
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_32

    .line 186
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mLowLight:Z

    if-eqz p0, :cond_2d

    sget p0, Lcom/transsion/camera/R$drawable;->ic_video_snap_shot_low_light:I

    goto :goto_2f

    :cond_2d
    sget p0, Lcom/transsion/camera/R$drawable;->ic_video_snap_shot:I

    :goto_2f
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_32
    return-void
.end method

.method public playCaptureAnimation(Landroid/content/Context;)V
    .registers 6

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "playCaptureAnimation +"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->updateSnapshotCoverView()V

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCover:Landroid/view/View;

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotCoverAlpha:F

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

    .line 202
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playCaptureAnimation -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resetRecordingUI()V
    .registers 6

    .line 564
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3c

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 569
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_3c

    .line 570
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 571
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v4, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 577
    :cond_3c
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 581
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_6d

    .line 582
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_6d
    return-void
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 2

    .line 191
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->ringScreenLightUpdateUI()V

    .line 192
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mIsPause:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onUpdateRecordingUI(Z)V

    return-void
.end method

.method public setRecordingUIEnable(Z)V
    .registers 5

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingUIEnable enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1d

    .line 491
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 493
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_24

    .line 494
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_24
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 9

    if-eqz p1, :cond_d

    .line 513
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez p2, :cond_d

    .line 514
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onShowRecordingUI()V

    .line 516
    :cond_d
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecordingAnimation: isRecordBegin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getSupportedPause = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getSupportedVss = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_57

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->snapshot_bottom_animate_move_distance:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_58

    :cond_57
    move v0, p2

    .line 520
    :goto_58
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 521
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-interface {p0, v3, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 522
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 523
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v3}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 525
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    xor-int/lit8 v4, p1, 0x1

    sub-float v5, p2, v0

    invoke-interface {p0, v3, p1, v4, v5}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_af

    .line 528
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b7

    .line 530
    :cond_af
    new-instance v4, Lcom/transsion/camera/app/ui/mode/video/VideoUI$2;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI$2;-><init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 537
    :goto_b7
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 540
    :cond_bc
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 541
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-interface {p0, v3, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v3

    if-eqz v3, :cond_11e

    .line 542
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 543
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 545
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    xor-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v1, p1, v2, v0}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_111

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_119

    .line 550
    :cond_111
    new-instance p1, Lcom/transsion/camera/app/ui/mode/video/VideoUI$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI$3;-><init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 557
    :goto_119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_11e
    return-void
.end method

.method public unInitVideoUI()V
    .registers 2

    .line 500
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_26

    .line 501
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedPause()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 504
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getVideoUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getSupportedVss()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotBtnRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 508
    :cond_26
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->unInitVideoUI()V

    return-void
.end method

.method protected updateBottomRootBarLayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 259
    invoke-super/range {p0 .. p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateBottomRootBarLayout(Z)V

    .line 260
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    if-eqz v1, :cond_378

    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_378

    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_13

    goto/16 :goto_378

    .line 264
    :cond_13
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 266
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    .line 267
    iget v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mScreenFormType:I

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-eq v2, v4, :cond_22

    if-ne v2, v3, :cond_24

    .line 270
    :cond_22
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    .line 273
    :cond_24
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateBottomRootBarLayout orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mOrientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mRecordingOrientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mRecordingOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    iget-object v5, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 277
    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 278
    iget-object v7, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 280
    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_72

    .line 282
    iget-object v8, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v8

    .line 284
    :cond_72
    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v10

    .line 285
    iget v11, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 287
    iget-object v12, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 289
    iget-object v13, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    const/4 v14, 0x0

    .line 291
    invoke-virtual {v5, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 292
    invoke-virtual {v7, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 293
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/16 v3, 0x10e

    const/16 v15, 0xb4

    const/16 v14, 0x5a

    const/16 v9, 0x51

    if-ne v2, v4, :cond_16d

    if-eq v1, v14, :cond_137

    if-eq v1, v15, :cond_107

    if-eq v1, v3, :cond_d3

    .line 326
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 327
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x35

    .line 328
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 329
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 330
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 331
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x31

    .line 332
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_d0
    :goto_d0
    move v1, v11

    goto/16 :goto_2c2

    .line 315
    :cond_d3
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 316
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/16 v1, 0x55

    .line 317
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height_90_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 319
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x800013

    .line 320
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v3, 0x800015

    .line 321
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_2c2

    .line 306
    :cond_107
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 307
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x53

    .line 308
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 309
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 310
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v3, 0x31

    .line 311
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 312
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_2c2

    .line 297
    :cond_137
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 298
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/16 v1, 0x33

    .line 299
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 300
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height_90_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 301
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v3, 0x800015

    .line 302
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v1, 0x800013

    .line 303
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_d0

    :cond_16d
    const v4, 0x800013

    if-eqz v2, :cond_175

    const/4 v3, 0x2

    if-ne v2, v3, :cond_178

    :cond_175
    const/4 v3, -0x1

    goto/16 :goto_28a

    :cond_178
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a6

    const/4 v3, -0x1

    .line 346
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 347
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v10

    .line 348
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 350
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 351
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_shutter_panel_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const v3, 0x800015

    .line 352
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 353
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_shutter_panel_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/4 v1, 0x0

    goto/16 :goto_2c2

    :cond_1a6
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1df

    .line 355
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_lr_hover_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 356
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/16 v1, 0x35

    .line 357
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 358
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_lr_hover_bottom_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 359
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_lr_hover_right_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v3, 0x800015

    .line 360
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v1, 0x800013

    .line 361
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_d0

    :cond_1df
    const/4 v3, 0x5

    if-ne v2, v3, :cond_216

    .line 363
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_lr_hover_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 364
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_expand_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/16 v1, 0x53

    .line 365
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 366
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_lr_hover_right_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 367
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_panel_lr_hover_bottom_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const v3, 0x800013

    .line 368
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v3, 0x800015

    .line 369
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_2c2

    :cond_216
    const/4 v3, 0x7

    if-ne v2, v3, :cond_d0

    if-eq v1, v14, :cond_257

    if-eq v1, v15, :cond_257

    const/16 v3, 0x10e

    if-eq v1, v3, :cond_257

    .line 385
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_filp_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 386
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_filp_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    const/16 v1, 0x35

    .line 387
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 388
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_filp_180_height_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 389
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_filp_180_height_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 390
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x31

    .line 391
    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_d0

    .line 375
    :cond_257
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_filp_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 376
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_filp_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    const/16 v1, 0x55

    .line 377
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_filp_180_height_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 379
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->video_panel_filp_180_height_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/16 v3, 0x31

    .line 380
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    iput v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2c2

    .line 337
    :goto_28a
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 338
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v1

    .line 339
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    iget-object v4, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v4

    sub-int v10, v3, v4

    .line 340
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v3, 0x800013

    .line 341
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 342
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_shutter_panel_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const v3, 0x800015

    .line 343
    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 344
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->video_shutter_panel_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 395
    :goto_2c2
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3, v10}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->calculateBottomPanelPaddingHeight(I)I

    move-result v3

    if-ltz v3, :cond_2cc

    const/4 v4, 0x1

    goto :goto_2cd

    :cond_2cc
    const/4 v4, 0x0

    .line 397
    :goto_2cd
    iget-object v9, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_326

    if-eqz p1, :cond_326

    if-eqz v4, :cond_2de

    move v12, v13

    .line 399
    :cond_2de
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    filled-new-array {v12, v2}, [I

    move-result-object v2

    .line 398
    const-string v3, "padding"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 400
    const-string v3, "height"

    filled-new-array {v8, v10}, [I

    move-result-object v6

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 401
    const-string v6, "bottomMargin"

    filled-new-array {v11, v1}, [I

    move-result-object v1

    invoke-static {v6, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 402
    filled-new-array {v3, v1, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    .line 403
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 404
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 405
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v4, v5}, Lcom/transsion/camera/app/ui/mode/video/VideoUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/video/VideoUI;ZLandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 415
    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_326
    const/4 v8, 0x1

    if-eq v2, v8, :cond_32f

    const/4 v8, 0x4

    if-eq v2, v8, :cond_32f

    const/4 v8, 0x5

    if-ne v2, v8, :cond_331

    :cond_32f
    const/4 v8, 0x0

    goto :goto_360

    :cond_331
    if-eqz v2, :cond_336

    const/4 v8, 0x3

    if-ne v2, v8, :cond_338

    :cond_336
    const/4 v8, 0x0

    goto :goto_34a

    :cond_338
    const/4 v8, 0x2

    if-ne v2, v8, :cond_365

    .line 429
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->shutter_panel_column_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 430
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v8, v8, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_365

    :goto_34a
    if-eqz v4, :cond_356

    .line 424
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v8, v8, v8, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_365

    .line 426
    :cond_356
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_365

    .line 420
    :goto_360
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 432
    :cond_365
    :goto_365
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 433
    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 434
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoShutterPanelLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mVideoSnapShotButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v0, v0, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->mPauseResumeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_378
    :goto_378
    return-void
.end method
