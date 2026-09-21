.class public Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowMoving:Z

.field private mAnimationStart:Z

.field private mBurstCountLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mBurstCountText:Landroid/widget/TextView;

.field private mCShotLayout:Landroid/widget/RelativeLayout;

.field private mCenterButtonBg:Landroid/widget/ImageView;

.field private mDownRawX:F

.field private mDownRawY:F

.field private mFakeMotionEvent:Z

.field private mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

.field private mIsCShooting:Z

.field private mNormalCenterButton:Landroid/widget/ImageButton;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mTransDistance:F


# direct methods
.method public static synthetic $r8$lambda$-IUxDRh-Cu2VfXIYNYiG_3JaPs0(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->lambda$startResetAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8rowNNhjRFxwzITNsGw8Zw9KQTU(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->lambda$notifyCSNotSupport$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBurstCountText(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmICShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCShooting(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mIsCShooting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimationStart(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mAnimationStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCShooting(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mIsCShooting:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CSButtonView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mFakeMotionEvent:Z

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->initView()V

    return-void
.end method

.method private getScreenSize()Landroid/util/Size;
    .registers 3

    .line 534
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 535
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 536
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 537
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 538
    new-instance p0, Landroid/util/Size;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private initView()V
    .registers 4

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->continuous_shutter_panel_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 258
    sget v1, Lcom/transsion/camera/R$id;->center_button_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    .line 259
    sget v1, Lcom/transsion/camera/R$id;->normal_center_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    .line 260
    sget v1, Lcom/transsion/camera/R$id;->burst_count_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    .line 261
    sget v1, Lcom/transsion/camera/R$id;->continuous_shot_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCShotLayout:Landroid/widget/RelativeLayout;

    .line 262
    sget v1, Lcom/transsion/camera/R$id;->burst_count_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-void
.end method

.method private synthetic lambda$notifyCSNotSupport$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 165
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateBstScale()V

    return-void
.end method

.method private synthetic lambda$startResetAnimator$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 484
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateBstScale()V

    return-void
.end method

.method private startResetAnimator()V
    .registers 8

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v1

    .line 437
    const-string/jumbo v6, "translationX"

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 439
    iget v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenFormType:I

    if-ne v3, v1, :cond_37

    .line 440
    iget v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    if-eqz v3, :cond_24

    const/16 v6, 0xb4

    if-eq v3, v6, :cond_24

    goto :goto_37

    .line 443
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    .line 444
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    new-array v2, v2, [F

    aput v3, v2, v4

    aput v5, v2, v1

    .line 443
    const-string/jumbo v1, "translationY"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :cond_37
    :goto_37
    const-wide/16 v1, 0xc8

    .line 450
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 451
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 452
    new-instance v1, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$3;-><init>(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 483
    new-instance v1, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 486
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateBstScale()V
    .registers 10

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_de

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    if-nez v1, :cond_e

    goto/16 :goto_de

    .line 493
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_de

    if-nez v1, :cond_1e

    goto/16 :goto_de

    .line 498
    :cond_1e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    .line 499
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v2

    const/4 v3, 0x2

    .line 500
    new-array v4, v3, [I

    .line 501
    new-array v3, v3, [I

    .line 502
    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 503
    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v5, 0x0

    .line 504
    aget v6, v3, v5

    int-to-float v6, v6

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v0, v7

    add-float/2addr v6, v7

    aget v7, v4, v5

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    .line 505
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 506
    iget v7, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenFormType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9f

    .line 507
    iget v7, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    if-eqz v7, :cond_90

    const/16 v2, 0x5a

    if-eq v7, v2, :cond_7f

    const/16 v1, 0xb4

    if-eq v7, v1, :cond_73

    const/16 v1, 0x10e

    if-eq v7, v1, :cond_65

    goto :goto_ae

    .line 518
    :cond_65
    aget v1, v4, v5

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    aget v2, v3, v5

    :goto_70
    sub-int/2addr v1, v2

    int-to-float v6, v1

    goto :goto_ae

    .line 515
    :cond_73
    aget v1, v4, v8

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    aget v2, v3, v8

    goto :goto_70

    .line 512
    :cond_7f
    aget v2, v4, v5

    sub-int v2, v1, v2

    aget v3, v3, v5

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v2, v1

    int-to-float v6, v2

    goto :goto_ae

    .line 509
    :cond_90
    aget v1, v4, v8

    sub-int v1, v2, v1

    aget v3, v3, v8

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_70

    :cond_9f
    const/4 v1, 0x4

    if-ne v7, v1, :cond_ae

    .line 524
    aget v1, v3, v5

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    aget v2, v4, v5

    goto :goto_70

    :cond_ae
    :goto_ae
    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    div-float/2addr v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 527
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 528
    sget-object v1, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBstScale, scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 530
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_de
    :goto_de
    return-void
.end method

.method private updateHorizontalDistance(FF)V
    .registers 8

    .line 406
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_8

    .line 407
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 409
    :cond_8
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_10

    .line 410
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 412
    :cond_10
    sget-object p1, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action move: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    iget p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 414
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-ltz p1, :cond_57

    .line 415
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateBstScale()V

    .line 420
    :cond_57
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    .line 421
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_a4

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    if-eqz p1, :cond_97

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_97

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mIsCShooting:Z

    if-nez p1, :cond_97

    const/4 p1, 0x1

    .line 423
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mIsCShooting:Z

    .line 424
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->startContinuousShot()V

    .line 425
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->setContinuousShotSuccessful(Z)V

    .line 427
    :cond_97
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 430
    :cond_a4
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    if-eqz p1, :cond_b1

    iget p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_b1

    .line 431
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->setContinuousShotSuccessful(Z)V

    :cond_b1
    return-void
.end method

.method private updateVerticalDistance(FF)V
    .registers 8

    .line 375
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_8

    .line 376
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 378
    :cond_8
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_10

    .line 379
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 381
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    iget p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 382
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-ltz p1, :cond_3f

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 386
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateBstScale()V

    .line 388
    :cond_3f
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    .line 389
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_8f

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    if-eqz p1, :cond_82

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_82

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mIsCShooting:Z

    if-nez p1, :cond_82

    const/4 p1, 0x1

    .line 391
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mIsCShooting:Z

    .line 392
    sget-object p2, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "start continuous shot"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-interface {p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->startContinuousShot()V

    .line 394
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->setContinuousShotSuccessful(Z)V

    .line 396
    :cond_82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 399
    :cond_8f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    if-eqz p1, :cond_9c

    iget p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_9c

    .line 400
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->setContinuousShotSuccessful(Z)V

    :cond_9c
    return-void
.end method


# virtual methods
.method public hideCShotNumber()V
    .registers 3

    const/16 v0, 0x8

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public notifyCSNotSupport()V
    .registers 8

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 128
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v3, v1

    const-string/jumbo v6, "translationX"

    invoke-static {v0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 129
    iget v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenFormType:I

    if-ne v3, v1, :cond_3e

    .line 130
    iget v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    if-eqz v3, :cond_2b

    const/16 v6, 0xb4

    if-eq v3, v6, :cond_2b

    goto :goto_3e

    .line 133
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    new-array v2, v2, [F

    aput v3, v2, v4

    aput v5, v2, v1

    .line 133
    const-string/jumbo v1, "translationY"

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :cond_3e
    :goto_3e
    const-wide/16 v1, 0xc8

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    new-instance v1, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$2;-><init>(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 165
    new-instance v1, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public notifyContinuousShotStop()V
    .registers 4

    .line 69
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mAnimationStart:Z

    if-eqz v0, :cond_5

    return-void

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$1;-><init>(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onContinuousShotProgress(II)V
    .registers 6

    .line 117
    sget-object v0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->continuous_shot_number:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 3

    .line 201
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenFormType:I

    .line 202
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateLayoutParams(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 272
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 274
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_27f

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_24b

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_22

    if-eq v0, v5, :cond_24b

    goto/16 :goto_2af

    .line 286
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->isPreviewReady()Z

    move-result v0

    if-nez v0, :cond_32

    .line 287
    sget-object p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "preview is not ready"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 290
    :cond_32
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mAllowMoving:Z

    if-nez v0, :cond_37

    return v2

    .line 293
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_3e

    return v2

    .line 296
    :cond_3e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_24a

    .line 299
    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 303
    iget v2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenFormType:I

    if-ne v2, v3, :cond_156

    .line 304
    iget v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    if-eqz v1, :cond_11e

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_e6

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_ae

    const/16 p1, 0x10e

    if-eq v1, p1, :cond_76

    goto/16 :goto_242

    .line 324
    :cond_76
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->bottom_panel_expand_0_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateHorizontalDistance(FF)V

    goto/16 :goto_242

    .line 318
    :cond_ae
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->bottom_panel_expand_0_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 321
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateVerticalDistance(FF)V

    goto/16 :goto_242

    .line 312
    :cond_e6
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    neg-float p1, p1

    .line 314
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_panel_expand_0_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 315
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateHorizontalDistance(FF)V

    goto/16 :goto_242

    .line 306
    :cond_11e
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    neg-float p1, p1

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_panel_expand_0_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 309
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateVerticalDistance(FF)V

    goto/16 :goto_242

    :cond_156
    if-eqz v2, :cond_20e

    if-ne v2, v5, :cond_15c

    goto/16 :goto_20e

    :cond_15c
    if-ne v2, v1, :cond_196

    .line 340
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    neg-float p1, p1

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->bottom_panel_lr_hover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 343
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateHorizontalDistance(FF)V

    goto/16 :goto_242

    :cond_196
    const/4 p1, 0x5

    if-ne v2, p1, :cond_1d0

    .line 345
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 346
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->bottom_panel_lr_hover_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateHorizontalDistance(FF)V

    goto :goto_242

    :cond_1d0
    if-ne v2, v6, :cond_242

    .line 350
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 351
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 353
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateHorizontalDistance(FF)V

    goto :goto_242

    .line 335
    :cond_20e
    :goto_20e
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    .line 336
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->getScreenSize()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    neg-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 338
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateHorizontalDistance(FF)V

    .line 355
    :cond_242
    :goto_242
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    if-eqz p0, :cond_2af

    .line 356
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->onCSViewMoving()V

    goto :goto_2af

    :cond_24a
    :goto_24a
    return v2

    .line 361
    :cond_24b
    sget-object p1, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "action up"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->startResetAnimator()V

    .line 363
    iget p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mTransDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_277

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_277
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    if-eqz p0, :cond_2af

    .line 367
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->setContinuousShotSuccessful(Z)V

    goto :goto_2af

    .line 276
    :cond_27f
    sget-object v0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action down: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mFakeMotionEvent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mFakeMotionEvent:Z

    if-nez v0, :cond_29c

    return v2

    .line 280
    :cond_29c
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mAllowMoving:Z

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawX:F

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mDownRawY:F

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2af
    :goto_2af
    return v3
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mAnimationStart:Z

    return-void
.end method

.method public resetUIState(Z)V
    .registers 4

    .line 98
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mIsCShooting:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    if-eqz v0, :cond_14

    .line 99
    sget-object v0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetUIState: force stop continuous shot logic"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->stopContinuousShot()V

    :cond_14
    if-eqz p1, :cond_25

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_25

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;->updateUIState()V

    :cond_25
    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mIsCShooting:Z

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mAllowMoving:Z

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 108
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ringScreenLightUpdateUI(Z)V
    .registers 5

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_34

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    sget v1, Lcom/transsion/camera/R$color;->burst_count_black_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->center_button_swipe_down_bg_black:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$drawable;->center_button_bg_black:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 190
    :cond_34
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    sget v1, Lcom/transsion/camera/R$color;->burst_count_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->center_button_swipe_down_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$drawable;->center_button_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCShotButtonOperationControl(Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mICShotButtonOperationControl:Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView$ICShotButtonOperationControl;

    return-void
.end method

.method public setFakeMotionEvent(Z)V
    .registers 2

    .line 266
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mFakeMotionEvent:Z

    return-void
.end method

.method public setScreenManager(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method public showCShotNumber()V
    .registers 4

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateLayoutParams(II)V
    .registers 6

    .line 211
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    .line 212
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenFormType:I

    const/4 p2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 214
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    .line 216
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCShotLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 217
    iget v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 218
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    invoke-virtual {v0, v1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_42

    :cond_21
    const/4 v0, -0x2

    if-eqz v1, :cond_3b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2b

    goto :goto_3b

    :cond_2b
    const/4 v2, 0x4

    if-eq v1, v2, :cond_31

    const/4 v2, 0x5

    if-ne v1, v2, :cond_42

    .line 227
    :cond_31
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    invoke-virtual {v0, v1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_42

    .line 223
    :cond_3b
    :goto_3b
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mBurstCountLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p2, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 230
    :cond_42
    :goto_42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mCShotLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 3

    .line 206
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mOrientation:I

    .line 207
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->mScreenFormType:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ContinuousShotButtonView;->updateLayoutParams(II)V

    return-void
.end method
