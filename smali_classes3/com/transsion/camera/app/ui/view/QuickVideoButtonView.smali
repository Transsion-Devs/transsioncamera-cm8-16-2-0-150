.class public Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCenterButtonBg:Landroid/widget/ImageView;

.field private mDownRawX:F

.field private mDownRawY:F

.field private mFakeMotionEvent:Z

.field private mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

.field private mIsQuickRecording:Z

.field private mIsQuickVideo:Z

.field private mMoveOrientation:I

.field private mNormalCenterButton:Landroid/widget/ImageButton;

.field private mOrientation:I

.field private mQuickVideoButtonEndColor:Ljava/lang/String;

.field private mQuickVideoButtonStartColor:Ljava/lang/String;

.field private mQuickVideoIndicator:Landroid/widget/ImageView;

.field private mQuickVideoLayout:Landroid/widget/RelativeLayout;

.field private mResources:Landroid/content/res/Resources;

.field private mScreenFormType:I

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;


# direct methods
.method public static synthetic $r8$lambda$3FVWEwM6JVjkeMJbmcziCtg5bSA(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->lambda$startResetAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIQVButtonOperationControl(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;)Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsQuickVideo(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickVideo:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QuickVideoButtonView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string p1, "#FFFF3232"

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonEndColor:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mFakeMotionEvent:Z

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->initView()V

    return-void
.end method

.method public static calculateColor(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 369
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x5

    .line 370
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x7

    .line 371
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 372
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 374
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 375
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 376
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 377
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, p2

    int-to-float v2, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v4, v7

    int-to-float v2, v4

    mul-float/2addr v2, p2

    int-to-float v3, v7

    add-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr p1, p0

    int-to-float p1, p1

    mul-float/2addr p1, p2

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->getHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->getHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->getHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->getHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexString(I)Ljava/lang/String;
    .registers 3

    .line 387
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 388
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method private getScreenSize()Landroid/util/Size;
    .registers 3

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 481
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 482
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 483
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 484
    new-instance p0, Landroid/util/Size;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private static getTransDistance(FFF)F
    .registers 4

    cmpl-float v0, p0, p1

    if-lez v0, :cond_5

    move p0, p1

    :cond_5
    cmpg-float p1, p0, p2

    if-gez p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method private initView()V
    .registers 4

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->quick_video_shutter_panel_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 140
    sget v1, Lcom/transsion/camera/R$id;->center_button_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    .line 141
    sget v1, Lcom/transsion/camera/R$id;->normal_center_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    .line 142
    sget v1, Lcom/transsion/camera/R$id;->quick_video_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    .line 143
    sget v1, Lcom/transsion/camera/R$id;->quick_video_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoLayout:Landroid/widget/RelativeLayout;

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mResources:Landroid/content/res/Resources;

    .line 145
    sget v1, Lcom/transsion/camera/R$string;->quick_video_button_start_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonStartColor:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$startResetAnimator$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 445
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->updateQvScale()V

    return-void
.end method

.method private startResetAnimator()V
    .registers 8

    .line 395
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenFormType:I

    if-ne v0, v1, :cond_3b

    iget v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mOrientation:I

    iget v3, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mMoveOrientation:I

    if-eq v0, v3, :cond_3b

    .line 397
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickVideo:Z

    if-eqz v0, :cond_1b

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;->stopQuickVideo()V

    .line 400
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    if-eqz v0, :cond_2a

    .line 401
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2a

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;->updateUIState()V

    .line 405
    :cond_2a
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 408
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->resetUIState()V

    return-void

    .line 411
    :cond_3b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v2, v5, v1

    .line 411
    const-string/jumbo v3, "translationX"

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 413
    iget v3, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenFormType:I

    if-ne v3, v1, :cond_70

    .line 414
    iget v3, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mOrientation:I

    if-eqz v3, :cond_5d

    const/16 v5, 0xb4

    if-eq v3, v5, :cond_5d

    goto :goto_70

    .line 417
    :cond_5d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    .line 418
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    new-array v4, v4, [F

    aput v3, v4, v6

    aput v2, v4, v1

    .line 417
    const-string/jumbo v1, "translationY"

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :cond_70
    :goto_70
    const-wide/16 v1, 0xc8

    .line 424
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 425
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 426
    new-instance v1, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$1;-><init>(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 444
    new-instance v1, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 447
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateQvScale()V
    .registers 6

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    if-nez v1, :cond_e

    goto/16 :goto_8a

    :cond_e
    const/4 v1, 0x2

    .line 454
    new-array v2, v1, [I

    .line 455
    new-array v1, v1, [I

    .line 456
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_24

    goto :goto_8a

    :cond_24
    const/4 v3, 0x0

    .line 462
    aget v1, v1, v3

    add-int/2addr v1, v0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_32

    move v1, v2

    :cond_32
    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float v1, v0, v1

    div-float/2addr v1, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_45

    .line 468
    sget-object p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "currentValue can not be negative"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 471
    :cond_45
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonStartColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonEndColor:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->calculateColor(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    .line 475
    sget-object v2, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateQvScale, currentValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", calculateColor: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_8a
    :goto_8a
    return-void
.end method


# virtual methods
.method public onScreenFormChanged(I)V
    .registers 3

    .line 104
    iput p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenFormType:I

    .line 105
    iget v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mOrientation:I

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->updateLayoutParams(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v0, p0

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 155
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 157
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_449

    if-eq v1, v2, :cond_437

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_21

    if-eq v1, v4, :cond_437

    goto/16 :goto_476

    .line 168
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_28

    return v3

    .line 171
    :cond_28
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_436

    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_3a

    goto/16 :goto_436

    .line 174
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 179
    iget v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenFormType:I

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/16 v10, 0x10e

    const/16 v11, 0xb4

    const/16 v12, 0x5a

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v7, v2, :cond_167

    .line 180
    iget v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mMoveOrientation:I

    if-eqz v4, :cond_125

    if-eq v4, v12, :cond_e2

    if-eq v4, v11, :cond_a0

    if-eq v4, v10, :cond_5d

    goto/16 :goto_25d

    .line 218
    :cond_5d
    iget v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawX:F

    sub-float/2addr v1, v4

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/R$dimen;->bottom_panel_expand_0_width:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v14

    .line 220
    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v15, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    cmpl-float v7, v1, v4

    if-lez v7, :cond_93

    move v1, v4

    :cond_93
    cmpg-float v4, v1, v6

    if-gez v4, :cond_98

    goto :goto_99

    :cond_98
    move v6, v1

    .line 227
    :goto_99
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_29e

    .line 206
    :cond_a0
    iget v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawY:F

    sub-float/2addr v6, v1

    .line 207
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v1, v4

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/transsion/camera/R$dimen;->bottom_panel_expand_0_width:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v4, v14

    cmpg-float v7, v6, v1

    if-gez v7, :cond_d6

    move v6, v1

    :cond_d6
    cmpl-float v1, v6, v4

    if-lez v1, :cond_db

    move v6, v4

    .line 215
    :cond_db
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_29e

    .line 194
    :cond_e2
    iget v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawX:F

    sub-float/2addr v1, v4

    .line 195
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v4, v6

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->bottom_panel_expand_0_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v14

    cmpl-float v7, v1, v4

    if-lez v7, :cond_118

    move v1, v4

    :cond_118
    cmpg-float v4, v1, v6

    if-gez v4, :cond_11d

    goto :goto_11e

    :cond_11d
    move v6, v1

    .line 203
    :goto_11e
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_29e

    .line 182
    :cond_125
    iget v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawY:F

    sub-float/2addr v6, v1

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/transsion/camera/R$dimen;->bottom_panel_expand_0_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v14

    .line 184
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v4, v14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v15, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v4, v7

    cmpg-float v7, v6, v1

    if-gez v7, :cond_15b

    move v6, v1

    :cond_15b
    cmpl-float v1, v6, v4

    if-lez v1, :cond_160

    move v6, v4

    .line 191
    :cond_160
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_29e

    :cond_167
    if-eqz v7, :cond_25f

    if-ne v7, v4, :cond_16d

    goto/16 :goto_25f

    :cond_16d
    if-ne v7, v9, :cond_1bd

    .line 245
    iget v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawX:F

    sub-float/2addr v1, v4

    .line 246
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1bc

    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_183

    goto :goto_1bc

    .line 249
    :cond_183
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v4, v6

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->bottom_panel_lr_hover_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v14

    .line 251
    invoke-static {v1, v4, v6}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->getTransDistance(FFF)F

    move-result v6

    .line 252
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_29e

    :cond_1bc
    :goto_1bc
    return v3

    :cond_1bd
    if-ne v7, v8, :cond_214

    .line 254
    iget v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawX:F

    sub-float/2addr v1, v4

    .line 255
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v4, :cond_213

    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_1d3

    goto :goto_213

    .line 258
    :cond_1d3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/R$dimen;->bottom_panel_lr_hover_height:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v14

    .line 259
    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v15, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    cmpl-float v7, v1, v4

    if-lez v7, :cond_206

    move v1, v4

    :cond_206
    cmpg-float v4, v1, v6

    if-gez v4, :cond_20b

    goto :goto_20c

    :cond_20b
    move v6, v1

    .line 266
    :goto_20c
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_29e

    :cond_213
    :goto_213
    return v3

    :cond_214
    if-ne v7, v5, :cond_25d

    .line 268
    iget v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawX:F

    sub-float/2addr v1, v4

    .line 269
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->getScreenSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v6}, Lcom/transsion/camera/app/ui/ScreenManager;->getColumnPreviewStartMargin()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v14

    .line 270
    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v15, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    cmpl-float v7, v1, v4

    if-lez v7, :cond_251

    move v1, v4

    :cond_251
    cmpg-float v4, v1, v6

    if-gez v4, :cond_256

    goto :goto_257

    :cond_256
    move v6, v1

    .line 277
    :goto_257
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_29e

    :cond_25d
    :goto_25d
    move v6, v13

    goto :goto_29e

    .line 234
    :cond_25f
    :goto_25f
    iget v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawX:F

    sub-float/2addr v1, v4

    .line 235
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->getScreenSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v14

    .line 236
    iget-object v6, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v14

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v15, Lcom/transsion/camera/R$dimen;->center_button_stoke_size:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    cmpl-float v7, v1, v4

    if-lez v7, :cond_293

    move v1, v4

    :cond_293
    cmpg-float v4, v1, v6

    if-gez v4, :cond_298

    goto :goto_299

    :cond_298
    move v6, v1

    .line 243
    :goto_299
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 279
    :goto_29e
    sget-object v1, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action move: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v14

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_3b5

    .line 281
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/view/View;->setAlpha(F)V

    .line 282
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/view/View;->setScaleX(F)V

    .line 283
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/view/View;->setScaleX(F)V

    .line 284
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    new-array v4, v5, [I

    .line 286
    new-array v5, v5, [I

    .line 287
    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 288
    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 289
    aget v7, v5, v3

    iget-object v15, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v7, v15

    aget v15, v4, v3

    sub-int/2addr v7, v15

    int-to-float v7, v7

    move/from16 p1, v13

    .line 290
    iget v13, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenFormType:I

    if-ne v13, v2, :cond_346

    .line 291
    iget v8, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mMoveOrientation:I

    if-eqz v8, :cond_32a

    if-eq v8, v12, :cond_31e

    if-eq v8, v11, :cond_312

    if-eq v8, v10, :cond_304

    goto :goto_360

    .line 302
    :cond_304
    aget v5, v5, v3

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    aget v4, v4, v3

    :goto_30f
    sub-int/2addr v5, v4

    int-to-float v7, v5

    goto :goto_360

    .line 299
    :cond_312
    aget v5, v5, v2

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    aget v4, v4, v2

    goto :goto_30f

    .line 296
    :cond_31e
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v15, v4

    aget v4, v5, v3

    :goto_327
    sub-int/2addr v15, v4

    int-to-float v7, v15

    goto :goto_360

    .line 293
    :cond_32a
    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v7

    aget v5, v5, v2

    sub-int/2addr v7, v5

    iget-object v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v5}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v5

    aget v4, v4, v2

    sub-int/2addr v5, v4

    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v5, v4

    sub-int/2addr v7, v5

    int-to-float v7, v7

    goto :goto_360

    :cond_346
    if-ne v13, v9, :cond_352

    .line 308
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v15, v4

    aget v4, v5, v3

    goto :goto_327

    :cond_352
    if-ne v13, v8, :cond_360

    .line 310
    aget v5, v5, v3

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v5, v7

    aget v4, v4, v3

    goto :goto_30f

    :cond_360
    :goto_360
    cmpg-float v4, v7, p1

    if-gtz v4, :cond_366

    move/from16 v7, p1

    .line 315
    :cond_366
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v14

    sub-float/2addr v4, v7

    iget-object v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v14

    div-float/2addr v4, v5

    .line 316
    iget-boolean v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickRecording:Z

    if-nez v5, :cond_3a3

    .line 317
    iget-object v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleX(F)V

    .line 318
    iget-object v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleY(F)V

    .line 319
    iget-object v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 320
    iget-object v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonStartColor:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonEndColor:Ljava/lang/String;

    invoke-static {v7, v8, v4}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->calculateColor(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v4, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3cc

    .line 322
    :cond_3a3
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 323
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 324
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    goto :goto_3cc

    :cond_3b5
    move/from16 p1, v13

    .line 327
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickRecording:Z

    if-nez v4, :cond_3cc

    .line 328
    iget-object v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonStartColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 331
    :cond_3cc
    :goto_3cc
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget-object v8, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v14

    add-float/2addr v5, v7

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_42a

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsQuickVideo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickVideo:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",  getVisibility():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 333
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    if-eqz v1, :cond_476

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_476

    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickVideo:Z

    if-nez v1, :cond_476

    .line 334
    iput-boolean v2, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickVideo:Z

    .line 335
    iget-object v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;->startQuickVideo()V

    .line 336
    iget-object v0, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    if-eqz v0, :cond_476

    .line 337
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;->setQuickVideoSuccessful(Z)V

    goto :goto_476

    .line 341
    :cond_42a
    iget-object v0, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    if-eqz v0, :cond_476

    cmpl-float v1, v6, p1

    if-lez v1, :cond_476

    .line 342
    invoke-interface {v0, v3}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;->setQuickVideoSuccessful(Z)V

    goto :goto_476

    :cond_436
    :goto_436
    return v3

    .line 348
    :cond_437
    sget-object v1, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "action up"

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 349
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->startResetAnimator()V

    .line 350
    iget-object v0, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    if-eqz v0, :cond_476

    .line 351
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;->setQuickVideoSuccessful(Z)V

    goto :goto_476

    .line 159
    :cond_449
    sget-object v1, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action down, mFakeMotionEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mFakeMotionEvent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 160
    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mFakeMotionEvent:Z

    if-nez v1, :cond_466

    return v3

    .line 163
    :cond_466
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawX:F

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mDownRawY:F

    .line 165
    iget v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mOrientation:I

    iput v1, v0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mMoveOrientation:I

    :cond_476
    :goto_476
    return v2
.end method

.method public resetUIState()V
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    if-eqz v0, :cond_f

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;->updateUIState()V

    :cond_f
    const/16 v0, 0x8

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonStartColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 82
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickVideo:Z

    return-void
.end method

.method public ringScreenLightUpdateUI(Z)V
    .registers 3

    if-eqz p1, :cond_1b

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->quick_video_indicator_black:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->center_button_swipe_down_bg_black:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->quick_video_button_end_black_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonEndColor:Ljava/lang/String;

    goto :goto_33

    .line 96
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoIndicator:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->quick_video_indicator:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mCenterButtonBg:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->center_button_swipe_down_bg:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$string;->quick_video_button_end_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonEndColor:Ljava/lang/String;

    .line 100
    :goto_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mNormalCenterButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoButtonEndColor:Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setFakeMotionEvent(Z)V
    .registers 2

    .line 149
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mFakeMotionEvent:Z

    return-void
.end method

.method public setIsQuickRecording(Z)V
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIsQuickRecording:Z

    return-void
.end method

.method public setQVButtonOperationControl(Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mIQVButtonOperationControl:Lcom/transsion/camera/app/ui/view/QuickVideoButtonView$IQVButtonOperationControl;

    return-void
.end method

.method public setScreenManager(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method public stopQuickVideo()V
    .registers 1

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->resetUIState()V

    return-void
.end method

.method public updateLayoutParams(II)V
    .registers 4

    .line 113
    iput p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mOrientation:I

    .line 114
    iput p2, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mScreenFormType:I

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_13

    const/4 p2, -0x1

    .line 117
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_16

    :cond_13
    const/4 p2, -0x2

    .line 119
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 121
    :goto_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mQuickVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/transsion/camera/app/ui/view/QuickVideoButtonView;->mOrientation:I

    return-void
.end method
