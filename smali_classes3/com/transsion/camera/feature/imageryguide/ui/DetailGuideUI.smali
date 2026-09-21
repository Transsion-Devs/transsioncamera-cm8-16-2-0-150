.class public Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final ANIMATION_DURATION:I

.field private final ANIMATION_ENTER_INTERVAL_DELAY:I

.field private final ANIMATION_MAX_DELAY:I

.field private final ITEM_SCROLL_DISTANCE:I

.field private isTabSelectedByRecyclerView:Z

.field private final mBackGroundPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mBackgroundView:Landroid/view/View;

.field private final mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

.field private final mContentPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentDetailName:Ljava/lang/String;

.field private final mCurrentMode:Ljava/lang/String;

.field private mCurrentPosition:I

.field private mDetailAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

.field private mDetailFailedRoot:Landroid/widget/LinearLayout;

.field private final mDetailGuideScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mDetailGuideTabSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;

.field private mDetailGuideTopRoot:Landroid/widget/LinearLayout;

.field private mDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailShotText:Landroid/widget/TextView;

.field private mDetailSkeletonRoot:Landroid/widget/LinearLayout;

.field private mEnable:Z

.field private mExitImageView:Landroid/widget/ImageView;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mIsDetailRecyclerMoving:Z

.field private final mItemMarginBottom:I

.field private final mItemMarginTop:I

.field private final mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRootView:Landroid/view/View;

.field private final mRunningAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mSkeletonAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwitchModeListener:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

.field private mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mTopMaskView:Landroid/view/View;

.field public final reLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;


# direct methods
.method public static synthetic $r8$lambda$At3eBvspivwf3XqpDnkE0oWmYWw(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->lambda$init$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NPtpGusqK8i1rBK4xLzSWrWNrc0(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->lambda$init$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VIsDX5Cpfqz7BG2N0CKRIJPOEvs(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->lambda$init$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nh-SLzGgH5xrK42hEiut9KYPhts(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->lambda$init$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qC7Abz6oNi06gK-z_AUtubvqjss(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Ljava/lang/String;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadDetailResource(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$yeuwso6-h1n_Bn3nL4pjrWhFrcg(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 138
    const/4 p0, 0x1

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisTabSelectedByRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->isTabSelectedByRecyclerView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentDetailName(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentDetailName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPosition(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetailAdapter(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetailFailedRoot(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailFailedRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetailGuideScrollListener(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailGuideScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetailList(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetailSkeletonRoot(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/widget/LinearLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDetailRecyclerMoving(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mIsDetailRecyclerMoving:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemMarginBottom(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mItemMarginBottom:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemMarginTop(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mItemMarginTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabLayout(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopMaskView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTopMaskView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisTabSelectedByRecyclerView(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->isTabSelectedByRecyclerView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPosition(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDetailRecyclerMoving(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mIsDetailRecyclerMoving:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mexit(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->exit()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexitAllFragment(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->exitAllFragment()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveToPosition(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->moveToPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartEnterAnimation(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startEnterAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTabPositionByName(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->updateTabPositionByName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_DetailGuideUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/FragmentManager;Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/FragmentManager;",
            "Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;",
            "Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;",
            "Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 62
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->ITEM_SCROLL_DISTANCE:I

    const/16 v0, 0x1f4

    .line 63
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->ANIMATION_DURATION:I

    const/16 v0, 0x64

    .line 64
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->ANIMATION_ENTER_INTERVAL_DELAY:I

    const/16 v0, 0x190

    .line 65
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->ANIMATION_MAX_DELAY:I

    .line 70
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mSkeletonAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mBackGroundPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContentPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRunningAnimators:Ljava/util/List;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->isTabSelectedByRecyclerView:Z

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mEnable:Z

    .line 267
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 414
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->reLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    .line 506
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$3;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 521
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$4;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailGuideScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 585
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$5;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailGuideTabSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentMode:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentDetailName:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mSupportModes:Ljava/util/List;

    .line 111
    iput-object p5, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    .line 112
    iput-object p6, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    .line 113
    iput-object p7, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mSwitchModeListener:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

    .line 114
    iput-object p8, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_guid_item_tab_select_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mItemMarginTop:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_guid_item_margin_bottom:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mItemMarginBottom:I

    .line 118
    new-instance p2, Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    invoke-direct {p2, p1}, Lcom/transsion/camera/featurelibs/download/NetworkHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    return-void
.end method

.method private createAlphaAnim(Landroid/view/View;FFI)Landroid/animation/ValueAnimator;
    .registers 6

    .line 1043
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x2

    .line 1044
    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    const-string p2, "alpha"

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p4

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private createAlphaSkeletonAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;
    .registers 8

    const/4 v0, 0x2

    .line 679
    new-array v1, v0, [F

    fill-array-data v1, :array_58

    const-string v2, "alpha"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 680
    new-array v3, v0, [F

    fill-array-data v3, :array_60

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 682
    filled-new-array {v1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 683
    filled-new-array {v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x1f4

    .line 685
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 686
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mSkeletonAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 687
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 688
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mSkeletonAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 691
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    int-to-long p1, p2

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    .line 692
    invoke-virtual {v2, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 693
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$6;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$6;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    nop

    :array_58
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
    .end array-data

    :array_60
    .array-data 4
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private createChildEnterAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;
    .registers 9

    .line 1016
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1018
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createTranslateAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1019
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createAlphaAnim(Landroid/view/View;FFI)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p4

    .line 1021
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p2, 0x2

    .line 1022
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v1, p2, v2

    const/4 p3, 0x1

    aput-object p1, p2, p3

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1023
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContentPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private createChildExitAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;
    .registers 9

    .line 1028
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1030
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-direct {p0, p1, v2, v1, v3}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createTranslateAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1031
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createAlphaAnim(Landroid/view/View;FFI)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p4

    .line 1033
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p1, 0x2

    .line 1034
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v1, p1, v2

    const/4 p2, 0x1

    aput-object p0, p1, p2

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private createTranslateAnim(Landroid/view/View;III)Landroid/animation/ValueAnimator;
    .registers 6

    int-to-float p0, p2

    int-to-float p2, p3

    const/4 p3, 0x2

    .line 1039
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

.method private downLoadAllDetailResource(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_7b

    .line 327
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_7b

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 332
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2a

    .line 333
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 336
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 338
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadFirstDetailBeanResource(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V

    goto :goto_2b

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2a
    move v1, v3

    :goto_2b
    if-ne v1, v3, :cond_37

    .line 345
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadFirstDetailBeanResource(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V

    move v1, v0

    :cond_37
    add-int/lit8 p2, v1, 0x1

    .line 349
    :goto_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_4b

    .line 350
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadFirstDetailBeanResource(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_39

    :cond_4b
    move p2, v0

    :goto_4c
    if-ge p2, v1, :cond_5a

    .line 355
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadFirstDetailBeanResource(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4c

    :cond_5a
    move p2, v1

    .line 359
    :goto_5b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_6d

    .line 360
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadSecondDetailResource(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5b

    :cond_6d
    :goto_6d
    if-ge v0, v1, :cond_7b

    .line 363
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadSecondDetailResource(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :cond_7b
    :goto_7b
    return-void
.end method

.method private downLoadDetailResource(Ljava/lang/String;II)V
    .registers 6

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/download/NetworkHelper;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_21

    .line 396
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[downLoadDetailResource] net is null !!!"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_net_weak_tips:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7d0

    invoke-static {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->show()V

    return-void

    .line 400
    :cond_21
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->resetDetailLoadingFailedState(Ljava/lang/String;I)V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-virtual {v0, v1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->updateDetailData(Ljava/util/List;II)V

    .line 402
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 403
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 p1, 0x0

    .line 404
    :goto_48
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_6c

    if-ne p1, p3, :cond_69

    .line 406
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->requestDetailResource(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_69
    add-int/lit8 p1, p1, 0x1

    goto :goto_48

    :cond_6c
    return-void
.end method

.method private exit()V
    .registers 4

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3a

    .line 649
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "detail_guide_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    .line 653
    :cond_1e
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 654
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 655
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 658
    :try_start_2a
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p0

    .line 661
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[exit] popBackStack failed, state already saved"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 645
    :cond_3a
    :goto_3a
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[exit], return "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private exitAllFragment()V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_51

    .line 172
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 174
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 175
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    if-eqz v2, :cond_2b

    .line 177
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2b

    .line 181
    :cond_3d
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 183
    :try_start_40
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V
    :try_end_47
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_47} :catch_48

    return-void

    :catch_48
    move-exception p0

    .line 185
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[exitAllFragment] popBackStack failed, state already saved"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 168
    :cond_51
    :goto_51
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[exitAllFragment] return !"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .registers 4

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->getDetailGuideData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    .line 199
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initData] mDetailList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-nez v1, :cond_50

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/featurelibs/download/NetworkHelper;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_40

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailFailedRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startEnterAnimation()V

    return-void

    .line 207
    :cond_40
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startEnterAnimation()V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    if-eqz p0, :cond_4a

    .line 209
    invoke-interface {p0}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->requestImageryJsonData()V

    .line 211
    :cond_4a
    const-string p0, "detailList is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_50
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->requestImageryJsonData()V

    const/4 v0, 0x1

    .line 218
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->updateData(Z)V

    return-void
.end method

.method private initEnterAnim()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 856
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2a

    .line 857
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    const/16 v4, 0x1f4

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createAlphaAnim(Landroid/view/View;FFI)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 858
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 859
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 860
    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mBackGroundPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 861
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_2a
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailGuideTopRoot:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildEnterAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailFailedRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x190

    const/16 v6, 0x64

    const/4 v7, 0x1

    if-nez v1, :cond_4c

    .line 869
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailFailedRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v3, v2, v6}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildEnterAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    goto :goto_74

    .line 872
    :cond_4c
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-nez v1, :cond_73

    move v1, v7

    .line 873
    :goto_51
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_af

    .line 874
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    mul-int/lit8 v6, v1, 0x64

    .line 877
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    const v8, 0x3e4ccccd    # 0.2f

    .line 874
    invoke-direct {p0, v2, v3, v8, v6}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildEnterAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_73
    move v1, v7

    .line 885
    :goto_74
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    mul-int/lit8 v8, v1, 0x64

    invoke-direct {p0, v4, v3, v2, v8}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildEnterAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v7

    .line 888
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    .line 889
    instance-of v7, v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v7, :cond_af

    .line 890
    check-cast v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 892
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v7

    .line 893
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    move v9, v7

    :goto_95
    if-gt v9, v8, :cond_af

    .line 896
    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_ac

    sub-int v11, v9, v7

    add-int/2addr v11, v1

    mul-int/2addr v11, v6

    .line 898
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-direct {p0, v10, v3, v2, v11}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildEnterAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v10

    .line 899
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ac
    add-int/lit8 v9, v9, 0x1

    goto :goto_95

    :cond_af
    return-object v0
.end method

.method private initExitAnim(Z)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x190

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_39

    .line 953
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v4

    move v4, v6

    :goto_1c
    if-ltz v1, :cond_85

    .line 954
    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    mul-int/lit8 v7, v4, 0x32

    .line 957
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const v8, 0x3e4ccccd    # 0.2f

    .line 954
    invoke-direct {p0, v6, v8, v5, v7}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildExitAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 958
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 961
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailFailedRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4b

    .line 962
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailFailedRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v3, v5, v6}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildExitAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 965
    :cond_4b
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 966
    instance-of v7, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v7, :cond_75

    .line 967
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 969
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v7

    .line 970
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    :goto_5f
    if-lt v8, v7, :cond_75

    .line 973
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_72

    mul-int/lit8 v10, v6, 0x32

    .line 975
    invoke-direct {p0, v9, v3, v5, v10}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildExitAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v9

    add-int/lit8 v6, v6, 0x1

    .line 977
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    add-int/lit8 v8, v8, -0x1

    goto :goto_5f

    .line 982
    :cond_75
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    mul-int/lit8 v7, v6, 0x32

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {p0, v1, v3, v5, v7}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildExitAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    .line 986
    :cond_85
    :goto_85
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailGuideTopRoot:Landroid/widget/LinearLayout;

    mul-int/lit8 v4, v4, 0x32

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createChildExitAnim(Landroid/view/View;FFI)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mBackgroundView:Landroid/view/View;

    const/16 v2, 0x15e

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createAlphaAnim(Landroid/view/View;FFI)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 989
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 990
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mBackGroundPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 991
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    new-instance v2, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$9;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private initRecyclerView()V
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_24

    .line 450
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 451
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->detail_item_no_tab_recyclerview_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 452
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    :cond_24
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/RecyclerLinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/transsion/camera/feature/imageryguide/ui/RecyclerLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 455
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 456
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->reLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    .line 457
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 458
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/DetailItemDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/DetailItemDecoration;-><init>(Landroid/content/Context;)V

    .line 459
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initTab()V
    .registers 8

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_11

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 468
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->getTabLayout()Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabMode(I)V

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const v3, -0x59000001

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabTextColors(II)V

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const v3, 0xffffff

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    const/high16 v3, -0x560000

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setEdgeEffectColor(I)V

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->getLeftMaskView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->getRightMaskView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeAllTabs()V

    .line 478
    :goto_53
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_bf

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 481
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_93

    .line 483
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 486
    :cond_93
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v3

    .line 487
    iget-object v4, v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    sget v5, Lcom/transsion/widgetslib/R$id;->os_id_tab_layout_text_view_id:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 488
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    if-ne v5, v1, :cond_b3

    if-eqz v4, :cond_b3

    const/4 v5, 0x4

    .line 490
    invoke-virtual {v4, v5}, Landroid/view/View;->setTextDirection(I)V

    .line 492
    :cond_b3
    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v3, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 496
    :cond_bf
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$2;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailGuideTabSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method private initTitle()V
    .registers 4

    .line 190
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->MODE_ENTRY_MODENAME_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 193
    :cond_b
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$init$2(Landroid/view/View;)V
    .registers 2

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mSwitchModeListener:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startExitAnimation(Z)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mSwitchModeListener:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentMode:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;->onSwitchMode(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private synthetic lambda$init$3(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startExitAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$init$4(Landroid/view/View;)V
    .registers 3

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mNetworkHelper:Lcom/transsion/camera/featurelibs/download/NetworkHelper;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/download/NetworkHelper;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mContext:Landroid/content/Context;

    sget p1, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_net_weak_tips:I

    const/16 v0, 0x7d0

    invoke-static {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->makeText(Landroid/content/Context;II)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->show()V

    .line 152
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[onClick]:  net is null !!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    if-eqz p1, :cond_30

    const/16 p1, 0x8

    .line 156
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->setDetailFailedRootVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startAlphaSkeletonAnimationIfNeed(Landroid/widget/LinearLayout;)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->requestImageryJsonData()V

    :cond_30
    return-void
.end method

.method private moveToPosition()V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentDetailName:Ljava/lang/String;

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    move v1, v0

    .line 284
    :goto_6
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 285
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentDetailName:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 286
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p0, :cond_38

    .line 289
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_38
    return-void
.end method

.method private requestAllDetailResource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getImageryGuideBean()Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_64

    .line 305
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getModeBeanList()Ljava/util/List;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/ImageryGuideBean;->getSaleModeBeanList()Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_3b

    .line 307
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 308
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 309
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 310
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadAllDetailResource(Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_3b
    if-eqz v0, :cond_64

    .line 315
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    .line 316
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 317
    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 318
    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->downLoadAllDetailResource(Ljava/util/List;Ljava/lang/String;)V

    :cond_64
    :goto_64
    return-void
.end method

.method private requestDetailResource(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    if-eqz p0, :cond_7

    .line 444
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->requestDetailResource(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method private resetAllDetailLoadingFailed()V
    .registers 4

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-nez p0, :cond_5

    goto :goto_2e

    .line 420
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 421
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    const/4 v2, 0x0

    .line 422
    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->setImgVideoLoadingFailed(Z)V

    goto :goto_1d

    :cond_2e
    :goto_2e
    return-void
.end method

.method private resetDetailLoadingFailedState(Ljava/lang/String;I)V
    .registers 7

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-nez p0, :cond_5

    goto :goto_3d

    .line 431
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 432
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v2, v1

    .line 433
    :goto_21
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    if-ne v2, p2, :cond_3a

    .line 435
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {v3, v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->setImgVideoLoadingFailed(Z)V

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3d
    :goto_3d
    return-void
.end method

.method private selectTab(I)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 261
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->isTabSelectedByRecyclerView:Z

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_16
    return-void
.end method

.method private smoothMoveToPosition(I)V
    .registers 3

    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mIsDetailRecyclerMoving:Z

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private startEnterAnimation()V
    .registers 3

    .line 811
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 815
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->initEnterAnim()Ljava/util/List;

    move-result-object v0

    .line 816
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 817
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 818
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$7;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 840
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateData(Z)V
    .registers 5

    .line 222
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->getDetailGuideData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-nez v0, :cond_10

    .line 224
    sget-object p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDetailList is null !"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTopMaskView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_18
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 233
    sget-object p1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateData] mDetailList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->resetAllDetailLoadingFailed()V

    .line 235
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->stopAllSkeletonAnimations()V

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->setDetailFailedRootVisibility(I)V

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->initTab()V

    .line 240
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->initRecyclerView()V

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentMode:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentDetailName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->requestAllDetailResource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTabPositionByName(Ljava/lang/String;)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-eqz v0, :cond_31

    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_31

    :cond_f
    const/4 v0, 0x0

    .line 251
    :goto_10
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 253
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->selectTab(I)V

    return-void

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public checkPosition(IZ)V
    .registers 6

    .line 620
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkPosition]  mIsDetailRecyclerMoving: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mIsDetailRecyclerMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,isTabSelectedByRecyclerView :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->isTabSelectedByRecyclerView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,position :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,isSelectTab :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_38

    .line 624
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->setPosition(I)V

    return-void

    .line 625
    :cond_38
    iget-boolean p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mIsDetailRecyclerMoving:Z

    if-nez p2, :cond_44

    .line 626
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTabLayout:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-nez p2, :cond_41

    goto :goto_44

    .line 629
    :cond_41
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->selectTab(I)V

    :cond_44
    :goto_44
    return-void
.end method

.method public downLoadFirstDetailBeanResource(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V
    .registers 5

    .line 368
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[downLoadFirstDetailBeanResource] detailBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getItemType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,index :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDefaultIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getItemType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4f

    .line 371
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDefaultIndex()I

    move-result v0

    .line 372
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->requestDetailResource(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4f
    const/4 v0, 0x0

    .line 374
    :goto_50
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_72

    .line 375
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->requestDetailResource(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_72
    return-void
.end method

.method public downLoadSecondDetailResource(Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V
    .registers 5

    .line 381
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[downLoadSecondDetailResource] detailBean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getItemType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,index :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDefaultIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getItemType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    goto :goto_60

    :cond_36
    const/4 v0, 0x0

    .line 386
    :goto_37
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 387
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDefaultIndex()I

    move-result v1

    if-ne v0, v1, :cond_48

    goto :goto_5d

    .line 390
    :cond_48
    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->requestDetailResource(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_60
    :goto_60
    return-void
.end method

.method public getDetailGuideData()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 723
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getModeBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 725
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 726
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 727
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 728
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    return-object v2

    .line 735
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;->getSaleModeBeans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 737
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    .line 738
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getModeName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCurrentMode:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 739
    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;->getDetailBeansList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 740
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_41

    return-object v2

    :cond_66
    return-object v1
.end method

.method public init(Landroid/view/View;)V
    .registers 5

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    .line 123
    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mBackgroundView:Landroid/view/View;

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_top_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTopMaskView:Landroid/view/View;

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_loading_failed_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailFailedRoot:Landroid/widget/LinearLayout;

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->guide_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mTitle:Landroid/widget/TextView;

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->function_tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mOsTablayout:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_top_bar_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailGuideTopRoot:Landroid/widget/LinearLayout;

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_introduce_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_content_skeleton_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->guide_exit_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mExitImageView:Landroid/widget/ImageView;

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_76

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_77

    :cond_76
    const/4 v0, 0x0

    :goto_77
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_shot_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_loading_failed_again_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mSupportModes:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_9c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_9c

    goto :goto_9d

    :cond_9c
    move v1, v2

    .line 137
    :goto_9d
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    if-eqz v1, :cond_a2

    goto :goto_a4

    :cond_a2
    const/16 v2, 0x8

    :goto_a4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mExitImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->initTitle()V

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->initData()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onImageryConfigSucceed()V
    .registers 2

    const/4 v0, 0x0

    .line 800
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->updateData(Z)V

    return-void
.end method

.method public onRequestFailed()V
    .registers 1

    .line 769
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->shouldShowLoadingFailedView()V

    return-void
.end method

.method public onRequestSourceFailed(Ljava/lang/String;I)V
    .registers 8

    .line 785
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-nez v0, :cond_6

    goto/16 :goto_85

    :cond_6
    const/4 v0, 0x0

    .line 788
    :goto_7
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_85

    .line 789
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 790
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    const/4 v2, 0x1

    .line 791
    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->setImgVideoLoadingFailed(Z)V

    .line 792
    sget-object v2, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onRequestSourceFailed] filePathRoot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,i :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,position :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,mDetailList :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,detailItemBean :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->isImgVideoLoadingFailed()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 792
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-virtual {v1, v2, v0, p2}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->updateDetailData(Ljava/util/List;II)V

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_85
    :goto_85
    return-void
.end method

.method public setDetailFailedRootVisibility(I)V
    .registers 5

    .line 804
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDetailFailedRootVisibility] visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 805
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailFailedRoot:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1d

    .line 806
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 844
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEnable] enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 845
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mEnable:Z

    .line 846
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mExitImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    if-eqz p0, :cond_29

    .line 849
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->setEnable(Z)V

    :cond_29
    return-void
.end method

.method public setPosition(I)V
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 635
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->smoothMoveToPosition(I)V

    return-void
.end method

.method public shouldShowLoadingFailedView()V
    .registers 3

    .line 773
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[shouldShowLoadingFailedView]: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 775
    const-string p0, "[shouldShowLoadingFailedView]  return !"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 778
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->stopAllSkeletonAnimations()V

    .line 779
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailShotText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 781
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->setDetailFailedRootVisibility(I)V

    return-void
.end method

.method public startAlphaSkeletonAnimationIfNeed(Landroid/widget/LinearLayout;)V
    .registers 5

    .line 666
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->stopAllSkeletonAnimations()V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailSkeletonRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 668
    :goto_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 669
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x3e4ccccd    # 0.2f

    .line 670
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 672
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->createAlphaSkeletonAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 673
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRunningAnimators:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_28
    return-void
.end method

.method public startExitAnimation(Z)V
    .registers 5

    .line 908
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startExitAnimation] mEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mEnable:Z

    if-nez v0, :cond_21

    goto :goto_3b

    .line 913
    :cond_21
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->stopAllSkeletonAnimations()V

    .line 914
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->initExitAnim(Z)Ljava/util/List;

    move-result-object v0

    .line 915
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 916
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 917
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$8;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;Z)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 944
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public stopAllSkeletonAnimations()V
    .registers 3

    .line 711
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRunningAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 712
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 713
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    goto :goto_6

    .line 715
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mRunningAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateDetailGuideResource(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 751
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    if-eqz p2, :cond_86

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    if-eqz p2, :cond_86

    .line 753
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_86

    :cond_f
    const/4 p2, 0x0

    .line 757
    :goto_10
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_86

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/utils/StringUtils;->sanitizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 759
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->getDetailGuideData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    .line 760
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateDetailGuideResource] filePathRoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,i :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,position :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mDetailList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    .line 762
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemImgVideoFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->mDetailList:Ljava/util/List;

    invoke-virtual {v0, v1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/adapter/detailguide/DetailGuideAdapter;->updateDetailData(Ljava/util/List;II)V

    :cond_83
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_86
    :goto_86
    return-void
.end method

.method public updateTabTextView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_1c

    .line 612
    :cond_3
    iget-object p0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    sget p1, Lcom/transsion/widgetslib/R$id;->os_id_tab_layout_text_view_id:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1c

    if-eqz p2, :cond_14

    .line 614
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_16

    :cond_14
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_16
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 615
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1c
    :goto_1c
    return-void
.end method
