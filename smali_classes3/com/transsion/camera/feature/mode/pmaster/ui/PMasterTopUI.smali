.class public Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarStatusListener;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$BarClickListener;
    }
.end annotation


# static fields
.field public static final CLICK_BR_BAR:I = 0x0

.field public static final CLICK_FB_BAR:I = 0x1

.field public static final CLICK_MU_BAR:I = 0x3

.field public static final CLICK_SB_BAR:I = 0x2

.field private static final DURATION:I = 0x12c

.field private static final NONE_SUPPORT:[I

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final RATIO_1_1:D = 1.0

.field private static final SUPPORT_PROGRESS_LIST:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static isPressBack:Z


# instance fields
.field private alphaAnimator:Landroid/animation/ObjectAnimator;

.field private mAnimate:Z

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContactBottomMarginChanged:I

.field private mContext:Landroid/content/Context;

.field private mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mId:I

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsNeedAnimation:Z

.field private mLowLight:Z

.field private mPMasterTopUICallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mScreenFormType:I

.field private mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

.field private mScrollerViewContainer:Landroid/widget/FrameLayout;

.field private mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field private mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

.field private mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mShowContractBarAnimator:Landroid/animation/ObjectAnimator;

.field private mShowSeekBarAnimator:Landroid/animation/ObjectAnimator;

.field private mState:I

.field private mTopSeekBarParent:Landroid/view/View;

.field private mTopUIRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

.field private final mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# direct methods
.method public static synthetic $r8$lambda$DZ_Y8JBn-IIRWdCHvRcLAvaLm5w(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->lambda$updateLayout$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UlEIBpe-jb27VZ3ZQJ1GTKWMRyY(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->lambda$showAnimate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fTiXn2IGx8cK79xTGgvevB6tsSo(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->lambda$notifyProgress$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$g8H4FzMHSopyYzno8ilhRXlH9j4(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->lambda$updateLayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iajkdlRlraeqarmWWQ-HYnCal9M(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->lambda$hideAnimate$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPMasterTopUICallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBarChangeListener(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmContactBottomMarginChanged(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContactBottomMarginChanged:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PMasterTopUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x32

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 56
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->SUPPORT_PROGRESS_LIST:[I

    .line 57
    new-array v0, v2, [I

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->NONE_SUPPORT:[I

    .line 63
    sput-boolean v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    .line 74
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 407
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 73
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mId:I

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContactBottomMarginChanged:I

    .line 92
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScreenFormType:I

    .line 120
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    .line 132
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 408
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 412
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 73
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p2, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p2, -0x1

    .line 86
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mId:I

    const/4 p2, 0x0

    .line 87
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContactBottomMarginChanged:I

    .line 92
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScreenFormType:I

    .line 120
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    .line 132
    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 413
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hideAnimate(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 346
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method private synthetic lambda$hideAnimate$1(Landroid/view/View;)V
    .registers 5

    .line 347
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mIsNeedAnimation:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x2

    .line 348
    new-array v0, v0, [F

    fill-array-data v0, :array_38

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    .line 349
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_2e
    const/16 p0, 0x8

    .line 364
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 365
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :array_38
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$notifyProgress$0(I)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->scrollToPosition(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showAnimate$2(Landroid/view/View;)V
    .registers 5

    .line 374
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mIsNeedAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 376
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x2

    .line 377
    new-array v0, v0, [F

    fill-array-data v0, :array_58

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    .line 378
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$4;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$4;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 392
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->contrast:I

    if-ne p1, v0, :cond_3d

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mShowContractBarAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_49

    .line 394
    :cond_3d
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->seek_bar:I

    if-eq p1, v0, :cond_45

    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->scroller_ruler_view:I

    if-ne p1, v0, :cond_49

    .line 395
    :cond_45
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mShowSeekBarAnimator:Landroid/animation/ObjectAnimator;

    .line 397
    :cond_49
    :goto_49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 399
    :cond_4f
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 400
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :array_58
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$updateLayout$3(I)V
    .registers 4

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_7

    const/16 p1, -0x5a

    goto :goto_c

    :cond_7
    const/16 v1, 0x10e

    if-ne p1, v1, :cond_c

    move p1, v0

    .line 567
    :cond_c
    :goto_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->rotateIndicator(I)V

    return-void
.end method

.method private synthetic lambda$updateLayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 641
    const-string v0, "seekBarBottomMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 642
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showAnimate(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 373
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method private updateContractBarLayout(I)V
    .registers 3

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public currentState()I
    .registers 1

    .line 275
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mState:I

    return p0
.end method

.method public enableUIStatus(Z)V
    .registers 5

    .line 460
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUIStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_26

    .line 462
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 463
    :cond_26
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_35

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_35

    .line 464
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_35
    return-void
.end method

.method public hideSeekBarAndContractBar()V
    .registers 3

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mIsNeedAnimation:Z

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideSeekBarOrScrollerView()V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_20

    const/4 v1, -0x1

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideAnimate(Landroid/view/View;)V

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_20

    const/16 v0, 0x168

    .line 253
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_20
    return-void
.end method

.method public hideSeekBarOrScrollerView()V
    .registers 2

    .line 259
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_e

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideAnimate(Landroid/view/View;)V

    return-void

    .line 262
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideAnimate(Landroid/view/View;)V

    return-void
.end method

.method public notifyPhotoSizeChangeEnd()V
    .registers 2

    .line 802
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_7

    .line 803
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateContrastBG(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V

    :cond_7
    return-void
.end method

.method public notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 15

    .line 186
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const-string v1, "muscle_care"

    if-eqz v0, :cond_50

    .line 187
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz p4, :cond_6e

    .line 189
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 190
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/16 v5, 0x32

    const/16 v6, 0x32

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    move-object v1, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZIII)V

    goto :goto_39

    :cond_22
    move-object v1, p6

    neg-int p1, p2

    if-ne p3, p1, :cond_2e

    const/16 p1, 0xa

    const/4 p4, 0x1

    :goto_29
    move v5, p1

    move v6, v5

    move v3, p4

    move-object v2, v1

    goto :goto_31

    :cond_2e
    const/4 p1, 0x5

    const/4 p4, 0x0

    goto :goto_29

    .line 205
    :goto_31
    new-instance v1, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZIII)V

    move-object v0, v1

    .line 208
    :goto_39
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;->setCurrentValue(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateScope(IILcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance p2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p5}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;I)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScrollerPointsCallback(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$ScrollerPointsCallback;)V

    return-void

    .line 215
    :cond_50
    iget-object p6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p6, :cond_6e

    .line 216
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 217
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget-object p6, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->SUPPORT_PROGRESS_LIST:[I

    invoke-virtual {p1, p6}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setSupportProgressList([I)V

    goto :goto_69

    .line 219
    :cond_62
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget-object p6, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->NONE_SUPPORT:[I

    invoke-virtual {p1, p6}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setSupportProgressList([I)V

    .line 221
    :goto_69
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    :cond_6e
    return-void
.end method

.method public notifyState(IIZLjava/lang/String;)V
    .registers 9

    const/4 v0, -0x1

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 280
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 281
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mState:I

    .line 282
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mId:I

    .line 283
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mIsNeedAnimation:Z

    const/16 p2, 0x168

    if-eqz p1, :cond_e7

    const/4 p3, 0x1

    if-eq p1, p3, :cond_cd

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7d

    const/4 p2, 0x3

    if-eq p1, p2, :cond_38

    goto/16 :goto_129

    .line 328
    :cond_38
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideSeekBarOrScrollerView()V

    .line 329
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPMasterTopUICallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;

    invoke-interface {p1, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;->needShowSettingTitle(Z)V

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_75

    .line 331
    iget p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->showAnimate(Landroid/view/View;)V

    .line 333
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_75

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmaster_top_ui_contrast_icon_ai_margin_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateContractBarLayout(I)V

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateContrastBG(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_contrast:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    :cond_75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x167

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 311
    :cond_7d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->showSeekBarOrScrollerView()V

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPMasterTopUICallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;->hideSettingTitle()V

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_c5

    .line 314
    iget p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_9f

    .line 316
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateContrastBG(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V

    .line 318
    :cond_9f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->showAnimate(Landroid/view/View;)V

    .line 319
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_c5

    .line 320
    iget p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContactBottomMarginChanged:I

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmaster_top_ui_contrast_icon_margin_bottom:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 320
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateContractBarLayout(I)V

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_contrast:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    :cond_c5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x166

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 302
    :cond_cd
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideSeekBarOrScrollerView()V

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPMasterTopUICallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;

    invoke-interface {p1, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;->needShowSettingTitle(Z)V

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_e1

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideAnimate(Landroid/view/View;)V

    .line 308
    :cond_e1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 286
    :cond_e7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mShowContractBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_f6

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_f6

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mShowContractBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 289
    :cond_f6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mShowSeekBarAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_105

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_105

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mShowSeekBarAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 292
    :cond_105
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideSeekBarOrScrollerView()V

    .line 293
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_114

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->hideAnimate(Landroid/view/View;)V

    .line 297
    :cond_114
    const-string p1, "onBackPressed"

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_129

    const-string p1, "showOrHide"

    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_129

    .line 298
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_129
    :goto_129
    return-void
.end method

.method public onBackPressed()Z
    .registers 5

    const/4 v0, 0x1

    .line 233
    sput-boolean v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->isPressBack:Z

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->alphaAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 235
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAnimate:Z

    goto :goto_13

    .line 237
    :cond_11
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAnimate:Z

    .line 239
    :goto_13
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mState:I

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAnimate:Z

    if-nez v1, :cond_23

    .line 240
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mId:I

    const-string v3, "onBackPressed"

    invoke-virtual {p0, v2, v1, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->notifyState(IIZLjava/lang/String;)V

    return v0

    :cond_23
    return v2
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 418
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_47

    .line 421
    sget v1, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_top_scroller_layout_ui5:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    .line 422
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_top_scroller_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerViewContainer:Landroid/widget/FrameLayout;

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->scroller_ruler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 424
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$5;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    goto :goto_80

    .line 435
    :cond_47
    sget v1, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_top_seekbar_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    .line 436
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_top_seekbar_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_top_seekbar_parent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopSeekBarParent:Landroid/view/View;

    .line 438
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTouchMoveListener:Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$6;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    .line 449
    :goto_80
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mLowLight:Z

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopUIRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->contrast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, -0x1

    .line 451
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 452
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mLowLight:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateLowLight(Z)V

    .line 453
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_b9

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mLowLight:Z

    if-nez v0, :cond_b9

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateContrastBG(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V

    :cond_b9
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 97
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->contrast:I

    if-eq v0, v1, :cond_10

    return v2

    .line 100
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_39

    if-eq p2, v1, :cond_1d

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1d

    goto :goto_57

    .line 110
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

    if-eqz p0, :cond_35

    sget p2, Lcom/transsion/camera/feature/pmaster/R$id;->contrast:I

    if-ne v0, p2, :cond_35

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, v2, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;->closeContrast(ZI)V

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 114
    :cond_35
    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_57

    .line 102
    :cond_39
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

    if-eqz p0, :cond_51

    sget p2, Lcom/transsion/camera/feature/pmaster/R$id;->contrast:I

    if-ne v0, p2, :cond_51

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;->openContrast(I)V

    .line 104
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_51
    const p0, 0x3f4ccccd    # 0.8f

    .line 106
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;F)V

    :goto_57
    return v1
.end method

.method public resetToInitState()V
    .registers 4

    .line 469
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_12

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz v0, :cond_19

    .line 471
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 474
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz v0, :cond_19

    .line 475
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_2a

    const/4 v2, -0x1

    .line 479
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    const/4 v0, 0x0

    .line 482
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mState:I

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 504
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public setIPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPMasterTopUICallBack:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;)V
    .registers 3

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$SeekBarChangeListener;

    .line 229
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$ContrastListener;

    return-void
.end method

.method public showSeekBarOrScrollerView()V
    .registers 2

    .line 267
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_e

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->showAnimate(Landroid/view/View;)V

    return-void

    .line 270
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->showAnimate(Landroid/view/View;)V

    return-void
.end method

.method protected unInit()V
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method public updateContrastBG(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V
    .registers 5

    .line 808
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mLowLight:Z

    if-nez v0, :cond_30

    .line 809
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 810
    const-string p0, "4:3"

    const-string v1, "_global_scope"

    const-string v2, "key_picture_ratio"

    invoke-virtual {v0, v2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 811
    const-string v0, "1:1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 812
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_contrast_black:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 814
    :cond_2b
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_contrast:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_30
    return-void
.end method

.method public updateLayout(IIZ)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 515
    sget-object v4, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateLayout, screenFormType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", animation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 516
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v4}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "option_margin_top_normal"

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v1, v5, :cond_4b

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "option_margin_top_hover"

    invoke-static {v4, v6}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 521
    :cond_4b
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 522
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v7

    .line 523
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v8}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v8

    .line 524
    sget v9, Lcom/transsion/camera/feature/pmaster/R$dimen;->interactive_option_margin_bottom:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 525
    sget v10, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_ui_hover_extra_margin_bottom:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 526
    sget v11, Lcom/transsion/camera/feature/pmaster/R$dimen;->mu_big_item_height_hover:I

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    if-ne v1, v5, :cond_72

    add-int/2addr v7, v11

    add-int/2addr v7, v10

    goto :goto_82

    .line 532
    :cond_72
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v7

    if-nez v7, :cond_7b

    add-int v7, v8, v9

    goto :goto_82

    .line 535
    :cond_7b
    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_bar_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v7, v8

    .line 538
    :goto_82
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v8

    iget-boolean v8, v8, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_dd

    .line 539
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 540
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x51

    .line 542
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 543
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmaster_top_scroller_margin_bottom:I

    .line 544
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmaster_top_scroller_margin_bottom_offset:I

    .line 545
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 547
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmaster_top_scroller_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 549
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v2, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 560
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 570
    :cond_dd
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 571
    iget v10, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 573
    iput v1, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScreenFormType:I

    .line 574
    iget-object v11, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 575
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopSeekBarParent:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 576
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, 0x0

    .line 577
    invoke-virtual {v13, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 578
    invoke-virtual {v8, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v15, -0x2

    .line 579
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 580
    iput v15, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 581
    invoke-virtual {v11, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v15, 0x9

    .line 582
    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v5, 0xb

    .line 583
    invoke-virtual {v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 584
    invoke-virtual {v13, v14, v14, v14, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 585
    invoke-virtual {v13, v15}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 586
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 587
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroid/view/View;->setRotationY(F)V

    .line 588
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v14, v2}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    const/16 v14, 0x5a

    const/16 v15, 0x10e

    if-ne v1, v9, :cond_1c7

    .line 590
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_expand_seekbar_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 591
    invoke-virtual {v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 592
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_expand_seekbar_parent_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 593
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_top_expand_seekbar_parent_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v14, :cond_194

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_17f

    if-eq v2, v15, :cond_16a

    const/16 v3, 0x53

    .line 613
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 614
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_0_expand_seekbar_bottom_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 615
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_0_expand_seekbar_left_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1a8

    :cond_16a
    const/16 v3, 0x33

    .line 606
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 607
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_90_expand_seekbar_right_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 608
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_90_expand_seekbar_bottom_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1a8

    :cond_17f
    const/16 v3, 0x35

    .line 601
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 602
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_0_expand_seekbar_bottom_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 603
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_0_expand_seekbar_left_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1a8

    :cond_194
    const/16 v3, 0x55

    .line 596
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 597
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_90_expand_seekbar_right_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 598
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_90_expand_seekbar_bottom_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 618
    :goto_1a8
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    add-int/lit16 v4, v2, 0x10e

    rem-int/lit16 v4, v4, 0x168

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 619
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v15, v5}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 620
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->contract_expand_bottom_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0x9

    .line 621
    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1c4
    const/4 v3, 0x7

    goto/16 :goto_464

    :cond_1c7
    const/16 v9, 0x9

    .line 625
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v15

    const/16 v14, 0x50

    if-eqz v15, :cond_26e

    if-eqz v3, :cond_26e

    .line 626
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 627
    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 628
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_parent_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 629
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_parent_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 630
    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 631
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->interactive_option_seekbar_start_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 634
    const-string v3, "childTopMargin"

    const/4 v9, 0x0

    filled-new-array {v9, v4}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 635
    const-string v4, "seekBarBottomMargin"

    filled-new-array {v10, v7}, [I

    move-result-object v7

    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 637
    filled-new-array {v3, v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0x190

    .line 638
    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 639
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 640
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v8}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 644
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 645
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 646
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_249

    .line 647
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto/16 :goto_1c4

    :cond_249
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_250

    const/16 v14, 0x10e

    goto :goto_258

    :cond_250
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_257

    const/16 v14, 0x5a

    goto :goto_258

    :cond_257
    move v14, v2

    .line 655
    :goto_258
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_25e

    move v4, v2

    goto :goto_25f

    :cond_25e
    const/4 v4, 0x0

    :goto_25f
    if-nez v1, :cond_263

    const/4 v9, 0x1

    goto :goto_264

    :cond_263
    const/4 v9, 0x0

    :goto_264
    invoke-virtual {v3, v4, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 657
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v3, v14}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    goto/16 :goto_1c4

    :cond_26e
    if-eqz v1, :cond_402

    const/4 v3, 0x3

    if-ne v1, v3, :cond_275

    goto/16 :goto_402

    :cond_275
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2b1

    .line 687
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v3, 0x9

    .line 688
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 689
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_parent_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 690
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_parent_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 691
    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 692
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->interactive_option_seekbar_column_start_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 693
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 694
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 695
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 696
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1c4

    .line 700
    :cond_2b1
    iget v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScreenFormType:I

    const/4 v7, 0x4

    const/16 v14, 0xe9

    const/16 v15, 0xf

    move/from16 p3, v3

    const/high16 v3, 0x43340000    # 180.0f

    const/16 v16, 0x9f

    const/16 v17, 0xf3

    const/4 v9, -0x1

    if-ne v4, v7, :cond_304

    .line 701
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 702
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 703
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v7, 0x5a

    const/4 v10, 0x0

    const/16 v18, 0xe2

    invoke-virtual {v4, v7, v10}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 705
    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 706
    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 708
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v4, v3}, Landroid/view/View;->setRotationY(F)V

    .line 710
    invoke-static {v15}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v14}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 711
    invoke-static/range {v18 .. v18}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 712
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 714
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 715
    invoke-static/range {v17 .. v17}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 716
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1c4

    :cond_304
    const/16 v18, 0xe2

    const/4 v7, 0x5

    if-ne v4, v7, :cond_348

    .line 718
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 719
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 720
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v7, 0x10e

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v10}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 722
    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 723
    iput v9, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 725
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v4, v3}, Landroid/view/View;->setRotationY(F)V

    .line 727
    invoke-static {v15}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v14}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 728
    invoke-static/range {v18 .. v18}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 729
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 731
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 732
    invoke-static/range {v17 .. v17}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 733
    invoke-static/range {v16 .. v16}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1c4

    :cond_348
    const/4 v3, 0x7

    if-ne v4, v3, :cond_464

    .line 735
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->pmaster_lr_seekbar_width_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v3, 0x9

    .line 736
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 737
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->pmaster_lr_seekbar_parent_width_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 738
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->pmaster_lr_seekbar_parent_width_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3da

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_3b8

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_394

    const/16 v3, 0x55

    .line 763
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 764
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_seekbar_margin_bottom_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 765
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_seekbar_margin_right_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 766
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 767
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_3fd

    :cond_394
    const/16 v3, 0x33

    const/4 v9, 0x0

    .line 755
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 756
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_seekbar_margin_top_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 757
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->pmaster_lr_seekbar_margin_left_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 758
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v4, 0xb4

    invoke-virtual {v3, v4, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 759
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v7, 0x10e

    invoke-virtual {v3, v7, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_3fd

    :cond_3b8
    const/16 v3, 0x33

    const/4 v9, 0x0

    .line 748
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 749
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_seekbar_margin_top_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 750
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->pmaster_lr_seekbar_margin_left_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 751
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v4, 0xb4

    invoke-virtual {v3, v4, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 752
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_3fd

    :cond_3da
    const/16 v3, 0x33

    const/4 v9, 0x0

    .line 741
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 742
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_seekbar_margin_top_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 743
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->pmaster_lr_seekbar_margin_left_flip:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 744
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/16 v4, 0xb4

    invoke-virtual {v3, v4, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 745
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v7, 0x5a

    invoke-virtual {v3, v7, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 770
    :goto_3fd
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1c4

    .line 661
    :cond_402
    :goto_402
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v3, 0x9

    .line 662
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 663
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_parent_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 664
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_column_seekbar_parent_layout_width:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 665
    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 666
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->interactive_option_seekbar_start_margin:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 667
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 668
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 669
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_43d

    .line 670
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v9, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_45f

    :cond_43d
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_444

    const/16 v14, 0x10e

    goto :goto_44b

    :cond_444
    const/16 v7, 0x10e

    if-ne v2, v7, :cond_44a

    move v14, v3

    goto :goto_44b

    :cond_44a
    move v14, v2

    .line 678
    :goto_44b
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v1, :cond_451

    move v4, v2

    goto :goto_452

    :cond_451
    const/4 v4, 0x0

    :goto_452
    if-nez v1, :cond_456

    const/4 v9, 0x1

    goto :goto_457

    :cond_456
    const/4 v9, 0x0

    :goto_457
    invoke-virtual {v3, v4, v9}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 680
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v3, v14}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOrientation(I)V

    .line 682
    :goto_45f
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1c4

    :cond_464
    :goto_464
    if-ne v3, v1, :cond_497

    .line 773
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_top_seekbar_layout_height:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 774
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->flip_cm_item_icon_size:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 775
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->flip_cm_item_icon_size:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 776
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_top_seekbar_layout_left_padding:I

    .line 777
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_top_seekbar_layout_right_padding:I

    .line 779
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->flip_top_seekbar_layout_padding:I

    .line 780
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v9, 0x0

    .line 776
    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4d5

    .line 782
    :cond_497
    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_seekbar_layout_height:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v11, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 783
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cm_item_icon_size:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 784
    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->cm_item_icon_size:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 785
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    sget v4, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_seekbar_layout_padding:I

    .line 786
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_seekbar_layout_padding:I

    .line 788
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 789
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v7

    if-eqz v7, :cond_4cb

    .line 790
    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_seekbar_layout_bootom_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_4c9
    const/4 v9, 0x0

    goto :goto_4d2

    .line 791
    :cond_4cb
    sget v7, Lcom/transsion/camera/feature/pmaster/R$dimen;->top_seekbar_layout_padding:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_4c9

    .line 785
    :goto_4d2
    invoke-virtual {v3, v4, v9, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 793
    :goto_4d5
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBarContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mTopSeekBarParent:Landroid/view/View;

    invoke-virtual {v3, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateProgressText(II)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 4

    .line 490
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mLowLight:Z

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_b

    .line 493
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_contrast_low_light:I

    goto :goto_d

    .line 494
    :cond_b
    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_btn_contrast:I

    .line 495
    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mContractBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->updateContrastBG(Lcom/transsion/camera/app/ui/widget/RotateImageView;)V

    .line 498
    :cond_15
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    if-eqz p0, :cond_24

    .line 499
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->updateLowLight(Z)V

    :cond_24
    return-void
.end method
