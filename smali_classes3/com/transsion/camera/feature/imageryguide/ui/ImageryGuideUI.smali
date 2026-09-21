.class public Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;
    }
.end annotation


# static fields
.field private static final BLUR_RENDER_RADIUS:F = 15.0f

.field private static final DEFAULT_GUIDE_SALE_IMAGE_INDEX:I = 0x0

.field private static final SHOW_SNACK_BAR_MSG:I = 0x1001

.field private static final SNACK_BAR_HIDE_DELAY:I = 0x1f4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final ANIMATION_DURATION:I

.field private final ANIMATION_MAX_DELAY:I

.field private final ITEM_SCROLL_DISTANCE:I

.field private final mBackGroundPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mBlurImageView:Landroid/widget/ImageView;

.field private final mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

.field private final mContentPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mExitImageView:Landroid/widget/ImageView;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mFunctionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mHandler:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mImageGuideAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;

.field private mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

.field private mImageryGuideTopRoot:Landroid/widget/LinearLayout;

.field private mModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mRootView:Landroid/view/View;

.field private mSaleModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mToastUICallBack:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;


# direct methods
.method public static synthetic $r8$lambda$08tz3IuajwewEGZQH-ClPvVKoFk(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->lambda$initRecyclerView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$JTG4sbUmZLHJ-HP98zJOIwM6g78(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 122
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$g9NBDHjxcZmisemphySkpfTCcuE(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ouCrLeLFIyeMgGJfRvv1IcGl-jA(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;F)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->lambda$initRecyclerView$2(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmImageryGuideRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mexit(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->exit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideFreshUI(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->hideFreshUI(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartEnterAnimation(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->startEnterAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_ImageryGuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;Landroid/app/FragmentManager;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;",
            "Landroid/app/FragmentManager;",
            "Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;",
            "Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;",
            "Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance p6, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p6, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p6, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 p6, 0x28

    .line 75
    iput p6, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->ITEM_SCROLL_DISTANCE:I

    const/16 p6, 0x1f4

    .line 76
    iput p6, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->ANIMATION_DURATION:I

    const/16 p6, 0x190

    .line 77
    iput p6, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->ANIMATION_MAX_DELAY:I

    .line 79
    new-instance p6, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p6, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p6, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBackGroundPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 80
    new-instance p6, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {p6, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p6, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContentPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 136
    new-instance p6, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$1;

    invoke-direct {p6, p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    iput-object p6, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 102
    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    .line 103
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mSupportModes:Ljava/util/List;

    .line 105
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    .line 106
    iput-object p5, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 107
    iput-object p7, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mToastUICallBack:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;

    .line 109
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHandler:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;

    .line 110
    new-instance p2, Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/download/NetworkHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    return-void
.end method

.method private allResourceDownLoad()Z
    .registers 6

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getSaleModeBeans()Ljava/util/List;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getModeBeans()Ljava/util/List;

    move-result-object v1

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getFunctionBeans()Ljava/util/List;

    move-result-object p0

    .line 426
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[allResourceDownLoad] saleModeList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,modeList :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,functionList :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_70

    if-eqz v1, :cond_70

    if-nez p0, :cond_40

    goto :goto_70

    .line 433
    :cond_40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 434
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeImgFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_44

    return v2

    .line 439
    :cond_57
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 440
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeImgFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5b

    return v2

    :cond_6e
    const/4 p0, 0x1

    return p0

    :cond_70
    :goto_70
    return v2
.end method

.method private createAlphaAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;
    .registers 6

    int-to-float p0, p2

    .line 394
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    int-to-float p2, p3

    const/4 p3, 0x2

    .line 395
    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p0, p3, v0

    const/4 p0, 0x1

    aput p2, p3, p0

    const-string p0, "alpha"

    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private createChildEnterAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;
    .registers 10

    .line 366
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 368
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createTranslateAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v4, 0x1

    .line 369
    invoke-direct {p0, p1, v2, v4, v3}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createAlphaAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v5, p2

    .line 371
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p2, 0x2

    .line 372
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v1, p2, v2

    aput-object p1, p2, v4

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 373
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContentPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private createChildExitAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;
    .registers 10

    .line 378
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 380
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createTranslateAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v4, 0x1

    .line 381
    invoke-direct {p0, p1, v4, v2, v3}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createAlphaAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v5, p2

    .line 383
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p2, 0x2

    .line 384
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v1, p2, v2

    aput-object p1, p2, v4

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContentPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private createTranslateAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;
    .registers 6

    int-to-float p0, p2

    int-to-float p2, p3

    const/4 p3, 0x2

    .line 390
    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p0, p3, v0

    const/4 p0, 0x1

    aput p2, p3, p0

    const-string/jumbo p0, "translationY"

    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private downLoadResourceIfNeed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    if-eqz p0, :cond_9

    .line 486
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->requestImageryGuideReSourceIfNeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private exit()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_32

    .line 211
    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_32

    .line 216
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "imagery_guide_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    .line 220
    :cond_16
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 221
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 222
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 225
    :try_start_22
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception p0

    .line 228
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[exit] popBackStack failed, state already saved"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 212
    :cond_32
    :goto_32
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[exit] return !"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private hideFreshUI(I)V
    .registers 4

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->abortRefreshing()V

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mToastUICallBack:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;

    if-eqz v0, :cond_27

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mToastUICallBack:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_27
    return-void
.end method

.method private initEnterAnim()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBlurImageView:Landroid/widget/ImageView;

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createAlphaAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 285
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 286
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 287
    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBackGroundPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideTopRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createChildEnterAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 293
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_5a

    .line 294
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 296
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 297
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    move v5, v2

    :goto_3d
    if-gt v5, v3, :cond_5a

    .line 300
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_57

    sub-int v7, v5, v2

    add-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0x64

    const/16 v8, 0x190

    .line 304
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 303
    invoke-direct {p0, v6, v7}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createChildEnterAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 305
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_5a
    return-object v0
.end method

.method private initExitAnim()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 319
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/16 v3, 0x190

    const/4 v4, 0x0

    if-eqz v2, :cond_37

    .line 320
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 322
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 323
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v5

    move v6, v4

    :goto_1d
    if-lt v5, v2, :cond_38

    .line 326
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_34

    mul-int/lit8 v8, v6, 0x32

    .line 329
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 328
    invoke-direct {p0, v7, v8}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createChildExitAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 331
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    :cond_37
    move v6, v4

    .line 336
    :cond_38
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideTopRoot:Landroid/widget/LinearLayout;

    mul-int/lit8 v6, v6, 0x32

    .line 337
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 336
    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createChildExitAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBlurImageView:Landroid/widget/ImageView;

    const/16 v2, 0x15e

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->createAlphaAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 340
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 341
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBackGroundPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v2, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$4;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private synthetic lambda$initRecyclerView$2(F)V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->onOverScrollUpdated(F)V

    return-void
.end method

.method private synthetic lambda$initRecyclerView$3()V
    .registers 3

    .line 182
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onRefresh]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/download/NetworkHelper;->isNetworkAvailable()Z

    move-result v0

    const/16 v1, 0x1f4

    if-nez v0, :cond_17

    .line 184
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_net_weak_tips:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->sendShowSnackBarMessage(II)V

    return-void

    .line 185
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->requestImageryGuideResourceIfNeed()Z

    move-result v0

    if-nez v0, :cond_22

    .line 186
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_content_is_newest:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->sendShowSnackBarMessage(II)V

    :cond_22
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->startExitAnimation()V

    return-void
.end method

.method private requestImageryDataIfNeed()V
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->requestImageryJsonData()V

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->allResourceDownLoad()Z

    move-result v0

    if-nez v0, :cond_e

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->requestImageryGuideResourceIfNeed()Z

    :cond_e
    return-void
.end method

.method private sendShowSnackBarMessage(II)V
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHandler:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;

    if-nez v0, :cond_5

    return-void

    .line 499
    :cond_5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1001

    .line 500
    iput v1, v0, Landroid/os/Message;->what:I

    .line 501
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 502
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHandler:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHandler:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setBlurImageBackground()V
    .registers 5

    .line 153
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->allResourceDownLoad()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 155
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 156
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 157
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mSaleModeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeImgFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->fileToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 158
    invoke-static {v1, v2}, Lcom/transsion/camera/feature/imageryguide/utils/BitmapUtils;->cropToRatio(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBlurImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4d

    .line 164
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBlurImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_SALE_MODES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getImgResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :cond_4d
    :goto_4d
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBlurImageView:Landroid/widget/ImageView;

    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1, v1, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    return-void
.end method

.method private startEnterAnimation()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 237
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->initEnterAnim()Ljava/util/List;

    move-result-object v0

    .line 238
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 239
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 240
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$2;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateList()V
    .registers 2

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->allResourceDownLoad()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    if-eqz v0, :cond_20

    .line 197
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getSaleModeBeans()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mSaleModeList:Ljava/util/List;

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getModeBeans()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mModeList:Ljava/util/List;

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getFunctionBeans()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFunctionList:Ljava/util/List;

    :cond_20
    return-void
.end method


# virtual methods
.method public initRecyclerView()V
    .registers 12

    .line 171
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    new-instance v4, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mSupportModes:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mSaleModeList:Ljava/util/List;

    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mModeList:Ljava/util/List;

    iget-object v9, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFunctionList:Ljava/util/List;

    iget-object v10, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-direct/range {v4 .. v10}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageGuideAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-static {v0, v3, v3, v2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 178
    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    invoke-interface {v0, v1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->setOverScrollListener(Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;)V

    .line 181
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;->setOnRefreshListener(Lcom/transsion/widgetslib/view/damping/OSDampingLayout$OnRefreshListener;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mRootView:Landroid/view/View;

    .line 115
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_blur_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mBlurImageView:Landroid/widget/ImageView;

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_top_bar_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideTopRoot:Landroid/widget/LinearLayout;

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageryGuideRecyclerView:Lcom/transsion/widgetslib/view/damping/OSRefreshRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->guide_exit_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mExitImageView:Landroid/widget/ImageView;

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mExitImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mRootView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->updateList()V

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->initRecyclerView()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHandler:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 520
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 521
    iput-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mHandler:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$WeakHandler;

    return-void
.end method

.method public onImageryConfigSucceed()V
    .registers 2

    const/4 v0, 0x0

    .line 399
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mSaleModeList:Ljava/util/List;

    .line 400
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mModeList:Ljava/util/List;

    .line 401
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFunctionList:Ljava/util/List;

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 403
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->requestImageryGuideResourceIfNeed()Z

    :cond_12
    return-void
.end method

.method public onRequestFailed()V
    .registers 3

    .line 492
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_net_weak_tips:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->sendShowSnackBarMessage(II)V

    return-void
.end method

.method public onRequestSourceFailed()V
    .registers 3

    .line 192
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_net_weak_tips:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->sendShowSnackBarMessage(II)V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 525
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->requestImageryDataIfNeed()V

    return-void
.end method

.method public requestImageryGuideResourceIfNeed()Z
    .registers 9

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    if-eqz p0, :cond_10

    .line 452
    invoke-interface {p0}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->requestImageryJsonData()V

    .line 454
    :cond_10
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[requestImageryGuideResourceIfNeed] :  imageryGuideBean is null !!!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 458
    :cond_18
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getSaleModeBeanList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_67

    .line 460
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    move v4, v1

    move v5, v4

    .line 461
    :goto_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_68

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getSaleModePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v7}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->downLoadResourceIfNeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_64

    move v5, v3

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_67
    move v5, v1

    .line 470
    :cond_68
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getModeBeanList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 471
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b4

    .line 472
    :goto_74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b4

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getModePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->downLoadResourceIfNeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    move v5, v3

    :cond_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_b4
    return v5
.end method

.method public setEnable(Z)V
    .registers 3

    .line 204
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mEnable:Z

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mExitImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageGuideAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->setEnable(Z)V

    return-void
.end method

.method public startExitAnimation()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mEnable:Z

    if-nez v0, :cond_9

    goto :goto_20

    .line 261
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->initExitAnim()Ljava/util/List;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 263
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 264
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI$3;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_20
    :goto_20
    return-void
.end method

.method public updateImageryGuideResource()V
    .registers 4

    .line 408
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mSaleModeList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mModeList:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFunctionList:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 409
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[updateImageryGuideResource]:  don\'t update imageryGuide !"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 412
    :cond_14
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->updateList()V

    .line 413
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->allResourceDownLoad()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    .line 418
    :cond_1e
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_content_is_newest:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->sendShowSnackBarMessage(II)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mImageGuideAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mSaleModeList:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mModeList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->mFunctionList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->updateDataList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
