.class public Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/ICutSame$ICutSameUI;


# static fields
.field private static final ENTER_ANIMATION_TIME:I = 0xc8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mFirstPreviewArrived:Z

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsRecording:Z

.field private mIsZooming:Z

.field private final mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

.field private mOrientation:I

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mRecordingOrientation:I

.field private mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mScreenFormType:I

.field private mVisibility:I


# direct methods
.method public static synthetic $r8$lambda$5c-EPHg5fJCSwvil5YG3kkICfCs(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->lambda$updateLayoutParam$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XHMNi4XdLwax3Oz1o8HtEeJ_kfs(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->lambda$onFirstSteadyFrame$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_SegmentFill"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;)V
    .registers 10

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mFirstPreviewArrived:Z

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 65
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mOrientation:I

    .line 66
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mScreenFormType:I

    .line 67
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

    return-void
.end method

.method private hide()V
    .registers 3

    .line 311
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_13

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private initRecyclerView()V
    .registers 8

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->segment_fill_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_32

    .line 86
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 89
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_segment_item_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_interval:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    .line 92
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

    .line 93
    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mScreenFormType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_61

    move v5, v3

    goto :goto_63

    :cond_61
    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mOrientation:I

    :goto_63
    invoke-direct {v0, v2, v4, v5}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic lambda$onFirstSteadyFrame$1()V
    .registers 2

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setEnable(Z)V

    return-void
.end method

.method private synthetic lambda$updateLayoutParam$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 160
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private show()V
    .registers 2

    .line 305
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mVisibility:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method private updateLayoutParam(Z)V
    .registers 13

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_b

    goto/16 :goto_108

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mOrientation:I

    .line 106
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsRecording:Z

    if-eqz v2, :cond_19

    .line 107
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecordingOrientation:I

    .line 110
    :cond_19
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    .line 111
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v3

    .line 112
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    iget v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 117
    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 119
    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mScreenFormType:I

    const/4 v8, 0x1

    const/16 v9, 0x51

    const/4 v10, -0x2

    if-ne v7, v8, :cond_97

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_81

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_72

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_61

    .line 141
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 142
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x31

    .line 143
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_margin_top_expand_0:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_91

    .line 134
    :cond_61
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 135
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x15

    .line 136
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 137
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_margin_top_expand_90:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_91

    .line 128
    :cond_72
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 129
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_margin_top_expand_0:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_91

    .line 122
    :cond_81
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 123
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x13

    .line 124
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_margin_top_expand_90:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 147
    :goto_91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 148
    :cond_97
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 149
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mScreenFormType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_af

    .line 150
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_bottom_margin_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_bb

    .line 152
    :cond_af
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_bottom_margin:I

    .line 153
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 152
    invoke-static {v1, v2, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IAppUI;II)I

    move-result v0

    :goto_bb
    if-eqz p1, :cond_e3

    .line 156
    filled-new-array {v6, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 157
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v4}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 165
    :cond_e3
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void

    .line 167
    :cond_e6
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mScreenFormType:I

    if-nez p1, :cond_108

    .line 168
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 169
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 170
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_bottom_margin:I

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 172
    invoke-static {p1, v2, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IAppUI;II)I

    move-result p1

    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v3, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_108
    :goto_108
    return-void
.end method

.method private updateRecyclerEnable(Z)V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;->setScrollEnabled(Z)V

    :cond_15
    return-void
.end method


# virtual methods
.method public enter(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter fill ui, item size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mVisibility:I

    .line 248
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->show()V

    const/4 v1, 0x1

    .line 249
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setEnable(Z)V

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->setData(Ljava/util/List;)V

    .line 251
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->setCurrentPosition(IZ)V

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    const/16 p1, 0xc8

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    return-void
.end method

.method public exit()V
    .registers 2

    const/16 v0, 0x8

    .line 256
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mVisibility:I

    .line 257
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->hide()V

    return-void
.end method

.method public inflate(Landroid/view/ViewGroup;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 73
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->segment_fill_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->segment_fill_rotate_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->initRecyclerView()V

    const/4 p1, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->updateLayoutParam(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_61

    const/4 v1, 0x1

    if-eq p1, v1, :cond_51

    const/4 v2, 0x2

    if-eq p1, v2, :cond_61

    const/4 v2, 0x3

    if-eq p1, v2, :cond_51

    const/4 v2, 0x6

    if-eq p1, v2, :cond_61

    const/4 v2, 0x7

    if-eq p1, v2, :cond_51

    const/16 v2, 0x9

    if-eq p1, v2, :cond_51

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_61

    const/16 v2, 0x17

    if-eq p1, v2, :cond_4b

    const/16 v2, 0x18

    if-eq p1, v2, :cond_48

    const/16 v2, 0x11b

    if-eq p1, v2, :cond_61

    const/16 v2, 0x11c

    if-eq p1, v2, :cond_51

    packed-switch p1, :pswitch_data_66

    goto :goto_60

    .line 293
    :pswitch_2e
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsRecording:Z

    .line 294
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_37

    .line 295
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setEnable(Z)V

    .line 297
    :cond_37
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->updateLayoutParam(Z)V

    return-void

    .line 267
    :pswitch_3b
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mFirstPreviewArrived:Z

    .line 268
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setEnable(Z)V

    return-void

    .line 289
    :pswitch_41
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsRecording:Z

    .line 290
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRecordingOrientation:I

    return-void

    .line 278
    :cond_48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsZooming:Z

    goto :goto_51

    .line 263
    :cond_4b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsZooming:Z

    .line 264
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setEnable(Z)V

    return-void

    .line 284
    :cond_51
    :goto_51
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsZooming:Z

    if-nez p1, :cond_60

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsRecording:Z

    if-nez p1, :cond_60

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_60

    .line 285
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setEnable(Z)V

    :cond_60
    :goto_60
    return-void

    .line 275
    :cond_61
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->setEnable(Z)V

    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x2712
        :pswitch_41
        :pswitch_3b
        :pswitch_2e
    .end packed-switch
.end method

.method public notifyItemChanged(I)V
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onFirstSteadyFrame()V
    .registers 4

    .line 212
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstSteadyFrame  mIsRecording :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mFirstPreviewArrived:Z

    .line 214
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsZooming:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsRecording:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2f

    .line 215
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2f
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 6

    .line 181
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mScreenFormType:I

    if-eq v0, p1, :cond_16

    .line 182
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mScreenFormType:I

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_f

    .line 184
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mOrientation:I

    goto :goto_10

    :cond_f
    move p1, v2

    .line 183
    :goto_10
    invoke-virtual {v0, p1, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->updateOrientation(IZ)V

    .line 185
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->updateLayoutParam(Z)V

    :cond_16
    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsRecording:Z

    .line 234
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mFirstPreviewArrived:Z

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setCurrentPosition(IZ)V
    .registers 3

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 221
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->setEnable(Z)V

    .line 223
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->updateRecyclerEnable(Z)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 6

    .line 202
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 205
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mOrientation:I

    const/4 v0, 0x1

    .line 206
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->updateLayoutParam(Z)V

    .line 207
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mScreenFormType:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_13

    goto :goto_14

    :cond_13
    move p1, v3

    .line 208
    :goto_14
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mVisibility:I

    if-nez p0, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v3

    .line 207
    :goto_1a
    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->updateOrientation(IZ)V

    return-void
.end method

.method public setRecording(Z)V
    .registers 2

    .line 196
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mIsRecording:Z

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->setRecording(Z)V

    return-void
.end method

.method public switchToNextPosition()V
    .registers 1

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->switchToNextPosition()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/SegmentFillUI;->mRootView:Landroid/widget/FrameLayout;

    return-void
.end method
