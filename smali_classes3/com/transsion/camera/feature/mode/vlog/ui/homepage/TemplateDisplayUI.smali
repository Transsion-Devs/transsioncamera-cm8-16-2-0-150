.class public Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCheckListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;

.field private final mContext:Landroid/content/Context;

.field private final mDetailUIDefaultMarginBottom:I

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIndicatorAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;

.field private final mIndicatorUIDefaultMarginBottom:I

.field private mIsTempDetailMoving:Z

.field private mLastOffset:I

.field private mLastPosition:I

.field private mLinearLayoutManager:Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

.field private final mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field public mOnItemClick:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;

.field private final mOnTempIndicatorSelectListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

.field private final mSupportFreeShot:Z

.field private final mTempDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTempDetailRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mTempDetailScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mTemplateCategoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateDetailAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;

.field private mTemplateIndicatorRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

.field private mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

.field private mTemplateListener:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;

.field private mTemplateRootView:Landroid/widget/FrameLayout;

.field private mVisibility:I


# direct methods
.method public static synthetic $r8$lambda$1ounObYSbKyBAXC9BO6VzXAaMv0(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->lambda$initTemplateList$1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FhWIhEynQjCyYBg44WegNitFNjE(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setChecked(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jVP4ba7RKBc7hjyi8xBySnc3ju4(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;Landroid/view/View;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->lambda$new$2(Landroid/view/View;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYgSRULn2x_N5dswq4dq72tUoVI(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->lambda$updateLayoutParameters$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsTempDetailMoving(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIsTempDetailMoving:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreMonitor(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportFreeShot(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mSupportFreeShot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemplateCategoryItems(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateCategoryItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemplateIndicatorScrollView(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemplateListener(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateListener:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTempDetailMoving(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIsTempDetailMoving:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePositionAndOffset(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_TemplateDisplayUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;II)V
    .registers 8

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailList:Ljava/util/List;

    .line 50
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastPosition:I

    .line 75
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastOffset:I

    .line 451
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOnItemClick:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;

    .line 482
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mCheckListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;

    .line 484
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOnTempIndicatorSelectListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

    .line 487
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 82
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mDetailUIDefaultMarginBottom:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_indicator_root_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIndicatorUIDefaultMarginBottom:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_support_free_shot:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mSupportFreeShot:Z

    .line 89
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mScreenFormType:I

    .line 90
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOrientation:I

    return-void
.end method

.method private initDetailRecyclerView()V
    .registers 6

    .line 367
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLinearLayoutManager:Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    .line 368
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 369
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailList:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOnItemClick:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {v4}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getTemplateIndex()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter$ItemClickListener;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateDetailAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;

    .line 370
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 372
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailList:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    .line 373
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mScreenFormType:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->updateScreenFormType(I)V

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getTempDetailTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->setCurrentTag(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mCheckListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->setCheckListener(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;)V

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 379
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastPosition:I

    if-ltz v0, :cond_97

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getTemplatePosition()I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getTemplateOffset()I

    move-result v1

    .line 382
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastPosition:I

    .line 383
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastOffset:I

    if-nez v0, :cond_83

    .line 385
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_item_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    :cond_83
    if-lez v0, :cond_92

    .line 389
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_item_interval:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 392
    :cond_92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLinearLayoutManager:Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_97
    return-void
.end method

.method private initTemplateDetailData()V
    .registers 8

    .line 343
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mSupportFreeShot:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 344
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;-><init>(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 345
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->setTag(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 346
    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->setPage(I)V

    .line 347
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_1c
    move v2, v1

    :goto_1d
    move v0, v1

    .line 351
    :goto_1e
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_68

    .line 352
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_37
    if-ge v4, v3, :cond_63

    .line 354
    new-instance v5, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->getItemList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-direct {v5, v6}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;-><init>(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    .line 355
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->setTag(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 356
    invoke-virtual {v5, v6}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->setPage(I)V

    .line 357
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_63
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 363
    :cond_68
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->initDetailRecyclerView()V

    return-void
.end method

.method private initTemplateIndicator(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 334
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;

    .line 335
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mScreenFormType:I

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->updateScreenFormType(I)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setTextColor()V

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOnTempIndicatorSelectListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setOnItemSelectListener(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;)V

    return-void
.end method

.method private initTemplateList()V
    .registers 3

    .line 310
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initTemplateList, load START"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo;->loadItems(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;)V

    return-void
.end method

.method private initView(Landroid/view/ViewGroup;)V
    .registers 3

    .line 166
    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    .line 167
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->template_indicator_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 168
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->template_detail_fragment_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 169
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->template_indicator_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    .line 170
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->template_recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private synthetic lambda$initTemplateList$1(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_a

    .line 313
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "categoryItems is Null, Please check AssetsRes!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_a
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTemplateList, load END, categoryItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateCategoryItems:Ljava/util/List;

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateListener:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;->onTemplateLoadFinished(Ljava/util/List;)V

    .line 320
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mSupportFreeShot:Z

    if-eqz v0, :cond_43

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->template_type_frees_shot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    const/4 v0, 0x0

    .line 324
    :goto_44
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_70

    .line 325
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getType(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 328
    :cond_70
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->initTemplateIndicator(Ljava/util/List;)V

    .line 329
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->initTemplateDetailData()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;II)V
    .registers 4

    const/4 p1, 0x1

    .line 485
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setChecked(IZ)V

    return-void
.end method

.method private synthetic lambda$updateLayoutParameters$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 254
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 255
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setChecked(IZ)V
    .registers 6

    .line 409
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setChecked]: , position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsTempDetailMove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIsTempDetailMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSupportFreeShot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mSupportFreeShot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_71

    const/4 p2, 0x0

    if-lez p1, :cond_3d

    .line 413
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mSupportFreeShot:Z

    if-eqz v1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, p2

    :goto_3e
    move v1, v0

    :goto_3f
    sub-int v2, p1, v0

    if-ge p2, v2, :cond_57

    .line 419
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateCategoryItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3f

    .line 422
    :cond_57
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setChecked, count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setPosition(I)V

    return-void

    .line 424
    :cond_71
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIsTempDetailMoving:Z

    if-nez p2, :cond_7a

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setCurrentItem(IZ)V

    :cond_7a
    return-void
.end method

.method private setIndicatorStoreMonitor()V
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V

    return-void
.end method

.method private smoothMoveToPosition(I)V
    .registers 5

    .line 435
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[smoothMoveToPosition] index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    const/4 p1, 0x1

    .line 437
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIsTempDetailMoving:Z

    return-void
.end method

.method private updateAdapterDecoration(I)V
    .registers 4

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    if-nez v1, :cond_d

    goto :goto_2a

    .line 289
    :cond_d
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->updateScreenFormType(I)V

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->updateScreenFormType(I)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private updateLayoutParameters(Z)V
    .registers 13

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_a

    return-void

    .line 179
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 182
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v4

    .line 185
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v6, 0x0

    .line 187
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 188
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 190
    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mScreenFormType:I

    const/4 v8, 0x1

    const/16 v9, 0x51

    const/4 v10, -0x2

    if-ne v7, v8, :cond_121

    .line 191
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOrientation:I

    const/16 v4, 0x5a

    const/16 v5, 0x15

    const/16 v7, 0x13

    if-eq p1, v4, :cond_e1

    const/16 v4, 0xb4

    const/16 v8, 0x31

    if-eq p1, v4, :cond_b2

    const/16 v4, 0x10e

    if-eq p1, v4, :cond_83

    .line 227
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 228
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_width_expand:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 229
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 230
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_indicator_margin_bottom_expand_0:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 232
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 233
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_width_expand:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 234
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 235
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_margin_top_expand_0:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_10f

    .line 215
    :cond_83
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 217
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_width_expand:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 218
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_indicator_margin_bottom_expand_90:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 220
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 222
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_width_expand:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 223
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_margin_top_expand_90:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_10f

    .line 204
    :cond_b2
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_width_expand:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 206
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 207
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_indicator_margin_bottom_expand_0:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 209
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 210
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_width_expand:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 211
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 212
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_margin_top_expand_0:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_10f

    .line 193
    :cond_e1
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 194
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 195
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_width_expand:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 196
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_indicator_margin_bottom_expand_90:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 198
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 200
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_width_expand:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 201
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_margin_top_expand_90:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 238
    :goto_10f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOrientation:I

    invoke-virtual {p1, v0, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOrientation:I

    invoke-virtual {p1, v0, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 240
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1a6

    .line 241
    :cond_121
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_174

    .line 242
    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mScreenFormType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_13a

    .line 243
    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_hover_reduce:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_138
    add-int/2addr v4, v6

    goto :goto_141

    .line 247
    :cond_13a
    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_root_margin_bottom_normal_fold:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_138

    :goto_141
    if-eqz p1, :cond_169

    .line 250
    filled-new-array {v5, v4}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    .line 251
    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_16b

    .line 259
    :cond_169
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 261
    :goto_16b
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_indicator_hover_margin_bottom:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1a6

    .line 262
    :cond_174
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mScreenFormType:I

    if-eqz p1, :cond_17b

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1a6

    :cond_17b
    const/16 p1, 0x53

    .line 264
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p1, -0x1

    .line 265
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 266
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 267
    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mIndicatorUIDefaultMarginBottom:I

    add-int/2addr v5, v4

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 269
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 270
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 271
    sget p1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 272
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mDetailUIDefaultMarginBottom:I

    add-int/2addr v4, p1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 276
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 279
    :cond_1a6
    :goto_1a6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRootRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePositionAndOffset(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_16

    :cond_3
    const/4 v0, 0x0

    .line 443
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastOffset:I

    .line 447
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastPosition:I

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 1

    .line 502
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->restoreValue()V

    return-void
.end method

.method public hide()V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    return-void

    .line 136
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->initView(Landroid/view/ViewGroup;)V

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setIndicatorStoreMonitor()V

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->initTemplateList()V

    const/4 p1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->updateLayoutParameters(Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 305
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mOrientation:I

    const/4 p1, 0x1

    .line 306
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->updateLayoutParameters(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 298
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mScreenFormType:I

    .line 299
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->updateAdapterDecoration(I)V

    .line 300
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->updateLayoutParameters(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resetLocation()V
    .registers 6

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateItemDecoration:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->setCurrentTag(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateDetailAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;

    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->setCurrentPosition(I)V

    .line 399
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastPosition:I

    const-string v2, "48"

    if-ltz v0, :cond_25

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLinearLayoutManager:Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 400
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 404
    :cond_25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastOffset:I

    .line 405
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastPosition:I

    return-void
.end method

.method public restoreValue()V
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastOffset:I

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->storeTemplateOffset(I)V

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLastPosition:I

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->storeTemplatePosition(I)V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 109
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEnable] enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateIndicatorScrollView:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateDetailAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLinearLayoutManager:Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    if-nez v1, :cond_23

    goto :goto_30

    .line 115
    :cond_23
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->setEnable(Z)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateDetailAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->setEnable(Z)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mLinearLayoutManager:Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;->setScrollEnabled(Z)V

    :cond_30
    :goto_30
    return-void
.end method

.method public setPosition(I)V
    .registers 3

    .line 430
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTempDetailRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 431
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->smoothMoveToPosition(I)V

    return-void
.end method

.method public setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    return-void
.end method

.method public setTemplateDetailEnable(Z)V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateDetailAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;

    if-eqz p0, :cond_7

    .line 122
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateDetailAdapter;->setEnable(Z)V

    :cond_7
    return-void
.end method

.method public setTemplateListener(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateListener:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 146
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mVisibility:I

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_10

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    const/16 p1, 0xc8

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    :cond_10
    return-void
.end method

.method public show()V
    .registers 2

    .line 127
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mVisibility:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->restoreValue()V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
