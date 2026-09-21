.class public Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;
.super Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI<",
        "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x96

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final STATE_TO_SHOW_RECYCLE_VIEW:I = 0x1

.field private static final STATE_TO_SHOW_SWITCH_BAR:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSPARENT_0:F


# instance fields
.field private final mAppearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentUIState:I

.field private final mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryView:Landroid/view/View;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

.field private mImageStyleSelectRoot:Landroid/view/ViewGroup;

.field private mIsFilterShow:Z

.field private final mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private final mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private final mItemLeftAndRightDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mLastOffset:I

.field private mLastPosition:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mSettingUiAdjustHeight:I

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private final mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private final mTranslateDistance:F

.field private final mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$-NNv2fElRxFg3OG1QHvWnIf6X2s(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$52n6M7TYezKg2XHMutYlI-LmaYA(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->lambda$onDataCallback$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJWpV2vDKvxOxfnB0pBXlNPjjrA(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->lambda$new$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gqCPQtsa7GYXcyFxyQij-wCaqzY(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lvpLVmMdJdAbPY5HPP1Nyw9Xl7U(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->lambda$updateViewLayoutParams$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmImageStyleSelectRoot(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ImageStyleSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 6

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;-><init>(Landroid/content/res/Resources;)V

    .line 56
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 57
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mLastOffset:I

    .line 64
    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mLastPosition:I

    .line 76
    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mCurrentUIState:I

    .line 78
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$1;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 100
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$2;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mAppearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 294
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$3;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 314
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$4;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemLeftAndRightDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 333
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$5;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 740
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 114
    sget v0, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_rv_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateDistance:F

    .line 115
    sget v0, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_adjust_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mSettingUiAdjustHeight:I

    const/4 p1, 0x2

    .line 116
    new-array p1, p1, [F

    fill-array-data p1, :array_78

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :array_78
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    return p0
.end method

.method private addAnimatorListener()V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method private hideEntryRootView()V
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private hideSettingUI(Z)V
    .registers 5

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_54

    .line 471
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_54

    .line 475
    :cond_b
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSettingUI, needAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->cancelAnimation()V

    const/4 v0, 0x0

    .line 478
    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mCurrentUIState:I

    if-eqz p1, :cond_2d

    .line 481
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->startCollapseAnimator()V

    goto :goto_45

    .line 483
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 484
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateDistance:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 486
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideEntryRootView()V

    .line 488
    :goto_45
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_54

    const/4 v0, 0x1

    .line 489
    invoke-interface {p1, v0, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 490
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0xf3

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_54
    :goto_54
    return-void
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 131
    iput-object p2, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 132
    sget v0, Lcom/transsion/camera/feature/imagestyle/R$layout;->image_style_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    .line 133
    sget p2, Lcom/transsion/camera/feature/imagestyle/R$id;->image_style_select_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/imagestyle/R$id;->image_style_select_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    return-void
.end method

.method private synthetic lambda$new$2()V
    .registers 2

    const/4 v0, 0x1

    .line 750
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    return-void
.end method

.method private synthetic lambda$new$3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 741
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 743
    const-string v0, "key_super_definition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_4a

    .line 747
    :cond_2f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_3e

    const/4 p1, 0x1

    .line 748
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    return-void

    .line 749
    :cond_3e
    iget-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_4a

    .line 750
    new-instance p2, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    :goto_4a
    return-void
.end method

.method private synthetic lambda$onDataCallback$1(Ljava/lang/Object;)V
    .registers 2

    .line 735
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->resetUIState(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateViewLayoutParams$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 261
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 262
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onTranslateAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_63

    .line 416
    :cond_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 418
    iget v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 419
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 420
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 421
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5c

    .line 422
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    .line 423
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_45

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_40

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_3c

    .line 436
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5c

    .line 431
    :cond_3c
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5c

    :cond_40
    neg-float v0, v0

    .line 428
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5c

    :cond_45
    neg-float v0, v0

    .line 425
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5c

    :cond_4a
    const/4 v3, 0x4

    if-ne v2, v3, :cond_51

    .line 440
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5c

    :cond_51
    const/4 v3, 0x5

    if-ne v2, v3, :cond_59

    neg-float v0, v0

    .line 442
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_5c

    .line 444
    :cond_59
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 448
    :cond_5c
    :goto_5c
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_63

    .line 449
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_63
    :goto_63
    return-void
.end method

.method private removeAnimatorListener()V
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method private showEntryRootView()V
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    .line 630
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private showSettingUI()V
    .registers 4

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    .line 496
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 500
    :cond_b
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->showEntryRootView()V

    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->setEnable(Z)V

    .line 504
    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mCurrentUIState:I

    .line 505
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 506
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xf2

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 509
    :cond_2a
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->updateViewLayoutParams(Z)V

    .line 510
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->startExpandAnimator()V

    :cond_30
    :goto_30
    return-void
.end method

.method private startCollapseAnimator()V
    .registers 4

    .line 524
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 525
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mDisappearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private startExpandAnimator()V
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mAppearAnimatorEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 517
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 518
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 520
    :cond_1f
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private toggleFilterPanel()V
    .registers 4

    .line 570
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "toggleFilterPanel"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 573
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4f

    .line 576
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->setCurrentPosition(IZ)V

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4c

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getTempSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 580
    iget-object v2, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 581
    iget-object v2, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->setCurrentPosition(IZ)V

    .line 583
    :cond_48
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->showSettingUI()V

    return-void

    .line 585
    :cond_4c
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method private updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_16

    :cond_3
    const/4 v0, 0x0

    .line 404
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mLastOffset:I

    .line 408
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mLastPosition:I

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 122
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->initView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->addAnimatorListener()V

    const/4 p1, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;)",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;"
        }
    .end annotation

    .line 719
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-direct {v0, p1, v1, p0}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method protected initSelectRecyclerViewData()V
    .registers 3

    .line 389
    invoke-super {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->initSelectRecyclerViewData()V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$6;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public isCameraFacingBack()Z
    .registers 1

    .line 756
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 757
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 756
    :cond_9
    const-string p0, "0"

    .line 759
    :goto_b
    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public needShowOptionBar()Z
    .registers 1

    .line 566
    iget p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mCurrentUIState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7d

    const/16 v0, 0x13

    if-eq p1, v0, :cond_79

    const/16 v0, 0x17

    if-eq p1, v0, :cond_6f

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_68

    const/16 v0, 0x20

    if-eq p1, v0, :cond_66

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_7d

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_62

    const/16 v0, 0x149

    if-eq p1, v0, :cond_5e

    const/16 v0, 0xf

    if-eq p1, v0, :cond_7d

    const/16 v0, 0x10

    if-eq p1, v0, :cond_68

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_5e

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_62

    const/16 v0, 0x30

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x31

    if-eq p1, v0, :cond_4a

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_46

    const/16 v0, 0x80

    if-eq p1, v0, :cond_42

    goto :goto_83

    .line 698
    :cond_42
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->showEntryRootView()V

    goto :goto_83

    .line 695
    :cond_46
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideEntryRootView()V

    goto :goto_83

    .line 682
    :cond_4a
    iput-boolean v2, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIsFilterShow:Z

    goto :goto_83

    .line 674
    :cond_4d
    iput-boolean v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIsFilterShow:Z

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_57

    const/4 v1, 0x0

    .line 676
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 678
    :cond_57
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->setEnable(Z)V

    .line 679
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    goto :goto_83

    .line 686
    :cond_5e
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    goto :goto_83

    .line 690
    :cond_62
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    goto :goto_83

    .line 658
    :cond_66
    iput-boolean v2, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIsFilterShow:Z

    .line 661
    :cond_68
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->setEnable(Z)V

    .line 662
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->showEntryRootView()V

    goto :goto_83

    .line 701
    :cond_6f
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 702
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    goto :goto_83

    .line 671
    :cond_79
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    goto :goto_83

    .line 667
    :cond_7d
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->setEnable(Z)V

    .line 668
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    .line 708
    :cond_83
    :goto_83
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->notifyCameraOperateAction(I)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 646
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 647
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    return v0

    :cond_1b
    return v1
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 764
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onConfigurationChanged()V

    const/4 v0, 0x0

    .line 765
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    return-void
.end method

.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_20

    .line 732
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_14

    .line 733
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->resetUIState(Ljava/lang/String;)V

    return-void

    .line 734
    :cond_14
    iget-object p2, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p2, :cond_20

    .line 735
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method protected onItemSelected(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V
    .registers 2

    .line 533
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->onItemSelected(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 3

    .line 545
    const-string v0, "key_image_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 546
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->toggleFilterPanel()V

    :cond_b
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected recoverFilterPanelToDefault()V
    .registers 4

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    if-nez v1, :cond_9

    goto :goto_23

    .line 556
    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string v1, "0"

    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 558
    invoke-super {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->recoverFilterPanelToDefault()V

    .line 560
    iput v2, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mLastOffset:I

    .line 561
    iput v2, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mLastPosition:I

    :cond_23
    :goto_23
    return-void
.end method

.method protected registerKeyToMonitor()V
    .registers 3

    .line 712
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_b

    .line 713
    const-string v1, "key_super_definition"

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_b
    return-void
.end method

.method protected resetUIState(Ljava/lang/String;)V
    .registers 4

    .line 538
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetUIState"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 539
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    .line 540
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->resetUIState(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 613
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    if-eqz p0, :cond_7

    .line 614
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->setEnable(Z)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 620
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 621
    invoke-super {p0}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->unInit()V

    .line 622
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideEntryRootView()V

    const/4 v0, 0x0

    .line 623
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->hideSettingUI(Z)V

    .line 624
    invoke-direct {p0}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->removeAnimatorListener()V

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mEntryView:Landroid/view/View;

    return-void
.end method

.method protected unRegisterKeyToMonitor()V
    .registers 3

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_b

    .line 725
    const-string v1, "key_super_definition"

    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_b
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateViewLayoutParams(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 139
    iget-object v1, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    if-nez v1, :cond_8

    goto/16 :goto_323

    .line 142
    :cond_8
    iget-object v1, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 144
    iget-object v1, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 146
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 147
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 148
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemLeftAndRightDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 149
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/16 v6, 0x10e

    const/16 v7, 0x5a

    const/4 v8, 0x3

    const/16 v9, 0xb4

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v3, v11, :cond_12b

    .line 150
    invoke-virtual {v1, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 151
    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v3, v7, :cond_cf

    if-eq v3, v9, :cond_a2

    if-eq v3, v6, :cond_75

    .line 176
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_height_expand_0:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 177
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_width_expand_0:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x53

    .line 178
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_left_margin_expand_0:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 180
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_bottom_margin_expand_0:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_fb

    .line 167
    :cond_75
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_height_expand_90:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 168
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_width_expand_90:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x33

    .line 169
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_left_margin_expand_270:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 171
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_top_margin_expand_270:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_fb

    .line 160
    :cond_a2
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_height_expand_0:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 161
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_width_expand_0:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x35

    .line 162
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 163
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_right_margin_expand_180:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 164
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_top_margin_expand_180:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_fb

    .line 153
    :cond_cf
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_height_expand_90:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 154
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_width_expand_90:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x55

    .line 155
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_right_margin_expand_90:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 157
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_bottom_margin_expand_90:I

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 184
    :goto_fb
    iget-boolean v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIsFilterShow:Z

    if-eqz v3, :cond_109

    .line 185
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 186
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 189
    :cond_109
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    if-eqz v3, :cond_122

    .line 190
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_switcher_width:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 191
    iget-object v10, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_switcher_height:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 192
    iget-object v13, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    invoke-virtual {v13, v3, v10}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->updateItemSize(II)V

    .line 194
    :cond_122
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v10, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_20a

    :cond_12b
    const/16 v13, 0x51

    const/4 v14, 0x2

    if-eqz v3, :cond_20c

    if-ne v3, v14, :cond_134

    goto/16 :goto_20c

    :cond_134
    if-ne v3, v8, :cond_167

    const/4 v3, -0x1

    .line 222
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 223
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_height:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 224
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_normal_root_left_padding:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 226
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v3

    iget-object v10, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_bottom_hover_margin_bottom:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v3, v10

    .line 227
    iget-object v10, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v13, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v10, v13}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto/16 :goto_27c

    :cond_167
    if-ne v3, v5, :cond_1b9

    .line 229
    invoke-virtual {v1, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 230
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_lr_hover_height:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 231
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_height:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x15

    .line 232
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 233
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_bottom_lr_hover_margin_bottom:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 234
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_bottom_lr_hover_margin_right:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 235
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    if-eqz v3, :cond_1b1

    .line 236
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_switcher_width:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 237
    iget-object v10, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_switcher_height:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 238
    iget-object v13, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    invoke-virtual {v13, v3, v10}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->updateItemSize(II)V

    .line 240
    :cond_1b1
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v10, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemLeftAndRightDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_20a

    :cond_1b9
    if-ne v3, v4, :cond_20a

    .line 242
    invoke-virtual {v1, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 243
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_lr_hover_height:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 244
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_height:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v3, 0x13

    .line 245
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_bottom_lr_hover_margin_bottom:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 247
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_bottom_lr_hover_margin_right:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 248
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    if-eqz v3, :cond_203

    .line 249
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_switcher_width:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 250
    iget-object v10, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_switcher_height:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 251
    iget-object v13, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mImageStyleItemAdapter:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;

    invoke-virtual {v13, v3, v10}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->updateItemSize(II)V

    .line 253
    :cond_203
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v10, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemLeftAndRightDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_20a
    :goto_20a
    move v3, v12

    goto :goto_27c

    .line 197
    :cond_20c
    :goto_20c
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_recycler_view_header_footer_padding:I

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 198
    iget-object v15, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_recycler_view_item_padding:I

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 199
    iget-object v15, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_width:I

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 200
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v15

    sub-int/2addr v15, v3

    sub-int/2addr v15, v4

    sub-int/2addr v15, v7

    .line 201
    iget v5, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mItemNumber:I

    if-ne v5, v8, :cond_236

    sub-int/2addr v15, v7

    sub-int/2addr v15, v4

    sub-int/2addr v15, v7

    :cond_236
    sub-int/2addr v15, v7

    sub-int/2addr v15, v4

    sub-int/2addr v15, v3

    .line 205
    div-int/2addr v15, v14

    .line 206
    invoke-virtual {v1, v15, v12, v15, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 207
    iget-object v3, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 208
    iput v13, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 209
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mSettingUiAdjustHeight:I

    sub-int/2addr v3, v4

    .line 210
    iget v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v4, v14, :cond_265

    .line 212
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget-object v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/feature/imagestyle/R$dimen;->image_style_column_root_bottom_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 214
    :cond_265
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 216
    iget-boolean v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mIsFilterShow:Z

    if-eqz v4, :cond_275

    .line 217
    iget-object v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 218
    iget-object v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 220
    :cond_275
    iget-object v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    iget-object v5, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 256
    :goto_27c
    iget-object v4, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2b0

    if-eqz p1, :cond_2b0

    .line 257
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x190

    .line 258
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 259
    iget-object v2, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 260
    iget-object v2, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 264
    iget-object v1, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2bb

    .line 266
    :cond_2b0
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v2, v8, :cond_2b6

    .line 267
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 269
    :cond_2b6
    iget-object v2, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleSelectRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    :goto_2bb
    invoke-super/range {p0 .. p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    .line 274
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v1, v11, :cond_2eb

    .line 275
    iget v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eqz v1, :cond_2db

    if-ne v1, v9, :cond_2c9

    goto :goto_2db

    .line 278
    :cond_2c9
    iget-object v2, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-ne v1, v6, :cond_2d3

    move v1, v11

    goto :goto_2d4

    :cond_2d3
    move v1, v12

    :goto_2d4
    invoke-direct {v3, v4, v11, v12, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_312

    .line 276
    :cond_2db
    :goto_2db
    iget-object v2, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    if-ne v1, v9, :cond_2e4

    move v12, v11

    :cond_2e4
    invoke-direct {v3, v4, v11, v11, v12}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_312

    :cond_2eb
    const/4 v2, 0x4

    if-eq v1, v2, :cond_2ff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2f2

    goto :goto_2ff

    .line 284
    :cond_2f2
    iget-object v1, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v11, v12, v12}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_312

    .line 282
    :cond_2ff
    :goto_2ff
    iget-object v1, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_30c

    move v12, v11

    :cond_30c
    invoke-direct {v2, v3, v11, v11, v12}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 287
    :goto_312
    iget-object v1, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mImageStyleRecyclerView:Lcom/transsion/camera/app/ui/widget/GridRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 288
    iget v2, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mLastPosition:I

    if-ltz v2, :cond_323

    .line 289
    iget v0, v0, Lcom/transsion/camera/feature/imagestyle/ui/ImageStyleSettingUI;->mLastOffset:I

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_323
    :goto_323
    return-void
.end method
