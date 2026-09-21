.class public Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/IFreeShot$IFreeShotUI;
.implements Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$IDragListener;
    }
.end annotation


# static fields
.field private static final ENTER_ANIMATION_TIME:I = 0xc8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private final mDragListener:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$IDragListener;

.field private final mFillListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;

.field private mFirstPreviewArrived:Z

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIsDragging:Z

.field private mIsRecording:Z

.field private mIsTouchZooming:Z

.field private mIsZooming:Z

.field private final mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

.field private mOrientation:I

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mRecordingOrientation:I

.field private mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mScreenFormType:I

.field private final mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

.field private mVisibility:I


# direct methods
.method public static synthetic $r8$lambda$CgjI3kGvPNjiXZDNROumZrGxXEk(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->lambda$onFirstSteadyFrame$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$iZFiFZ2Zq-DOZDZVIBh3gM_yLGI(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->lambda$updateLayoutParam$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTouchCallback(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;)Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibility(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mVisibility:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsZooming(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsZooming:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_FreeFill"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$IDragListener;)V
    .registers 13

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 56
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFirstPreviewArrived:Z

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 85
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    .line 86
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    .line 87
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    .line 88
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFillListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;

    .line 89
    iput-object p8, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mDragListener:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$IDragListener;

    .line 90
    invoke-interface {p7}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->registerKeysToMonitor()V

    return-void
.end method

.method private hide()V
    .registers 3

    .line 417
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_13

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method private initRecyclerView()V
    .registers 7

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->free_fill_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    .line 106
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 108
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeItemAnimator;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeItemAnimator;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 113
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFillListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;

    .line 114
    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    if-ne v5, v3, :cond_4d

    goto :goto_4f

    :cond_4d
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    :goto_4f
    invoke-direct {v0, v1, v4, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    .line 115
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback$IItemControl;II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    .line 118
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;Landroid/content/Context;)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private synthetic lambda$onFirstSteadyFrame$1()V
    .registers 2

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setZooming(Z)V

    return-void
.end method

.method private synthetic lambda$updateLayoutParam$0(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 189
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private show()V
    .registers 2

    .line 411
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mVisibility:I

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    .line 412
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method private updateLayoutParam(Z)V
    .registers 13

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_b

    goto/16 :goto_12d

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    .line 131
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    if-eqz v2, :cond_19

    .line 132
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecordingOrientation:I

    .line 135
    :cond_19
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    .line 136
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 139
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    .line 141
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 143
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 146
    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    const/4 v8, 0x1

    const/16 v9, 0x51

    const/4 v10, -0x2

    if-ne v7, v8, :cond_ab

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 148
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_freeshot_segment_editor_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 149
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 150
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_freeshot_segment_editor_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    iput v10, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_8f

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_84

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_77

    const/16 v2, 0x31

    .line 168
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 169
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_margin_top_expand_0:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_9b

    :cond_77
    const/16 v2, 0x15

    .line 163
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_margin_top_expand_90:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_9b

    .line 159
    :cond_84
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_margin_top_expand_0:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_9b

    :cond_8f
    const/16 v2, 0x13

    .line 155
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 156
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_margin_top_expand_90:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 173
    :goto_9b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v1, v5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 176
    :cond_ab
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 177
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_bf

    .line 178
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_fill_bottom_margin_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_cb

    .line 180
    :cond_bf
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget v4, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_bottom_margin:I

    .line 181
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 180
    invoke-static {v1, v2, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IAppUI;II)I

    move-result v0

    :goto_cb
    if-eqz p1, :cond_f3

    .line 185
    filled-new-array {v6, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 194
    :cond_f3
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 197
    :cond_fb
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    if-nez p1, :cond_12d

    const/4 p1, -0x1

    .line 198
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 199
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 200
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_segment_item_bottom_margin:I

    .line 202
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 201
    invoke-static {v1, v2, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/UIUtil;->getBottomViewMarginBottom(Lcom/transsion/camera/app/common/IAppUI;II)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 205
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 206
    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v5, v5}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12d
    :goto_12d
    return-void
.end method

.method private updateRecyclerEnable(Z)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerView:Lcom/transsion/camera/feature/mode/vlog/widget/NoMultitouchRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;->setScrollEnabled(Z)V

    :cond_15
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 2

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->add(I)V

    return-void
.end method

.method public enter(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter free fill ui, item size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mVisibility:I

    .line 394
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->show()V

    const/4 v0, 0x1

    .line 395
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->setData(Ljava/util/List;)V

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    const/16 p1, 0xc8

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    return-void
.end method

.method public exit()V
    .registers 2

    const/16 v0, 0x8

    .line 401
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mVisibility:I

    .line 402
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->hide()V

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x144

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public inflate(Landroid/view/ViewGroup;)V
    .registers 3

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mParentLayout:Landroid/view/ViewGroup;

    .line 97
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->free_fill_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mParentLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->free_fill_rotate_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecyclerRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->initRecyclerView()V

    const/4 p1, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->updateLayoutParam(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_b3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9a

    const/4 v2, 0x6

    if-eq p1, v2, :cond_b3

    const/4 v2, 0x7

    if-eq p1, v2, :cond_9a

    const/16 v2, 0x9

    if-eq p1, v2, :cond_9a

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_b3

    const/16 v2, 0x17

    if-eq p1, v2, :cond_8f

    const/16 v2, 0x18

    if-eq p1, v2, :cond_78

    const/16 v2, 0x11b

    if-eq p1, v2, :cond_b3

    const/16 v2, 0x11c

    if-eq p1, v2, :cond_9a

    const/16 v2, 0x145

    if-eq p1, v2, :cond_6b

    const/16 v2, 0x146

    if-eq p1, v2, :cond_58

    packed-switch p1, :pswitch_data_b8

    goto/16 :goto_b2

    .line 355
    :pswitch_37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    .line 356
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    .line 357
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_47

    .line 358
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setZooming(Z)V

    .line 361
    :cond_47
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->updateLayoutParam(Z)V

    return-void

    .line 327
    :pswitch_4b
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFirstPreviewArrived:Z

    .line 328
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    return-void

    .line 351
    :pswitch_51
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    .line 352
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRecordingOrientation:I

    return-void

    .line 320
    :cond_58
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    .line 321
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    if-nez p1, :cond_b2

    .line 322
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setZooming(Z)V

    return-void

    .line 314
    :cond_6b
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsZooming:Z

    .line 315
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    .line 316
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setZooming(Z)V

    return-void

    .line 307
    :cond_78
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsZooming:Z

    .line 308
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    if-nez p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    if-nez p1, :cond_b2

    .line 309
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setZooming(Z)V

    return-void

    .line 302
    :cond_8f
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsZooming:Z

    .line 303
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setZooming(Z)V

    return-void

    .line 342
    :cond_9a
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsZooming:Z

    if-nez p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    if-nez p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    if-nez p1, :cond_b2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_b2

    .line 346
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setZooming(Z)V

    :cond_b2
    :goto_b2
    return-void

    .line 335
    :cond_b3
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->setEnable(Z)V

    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x2712
        :pswitch_51
        :pswitch_4b
        :pswitch_37
    .end packed-switch
.end method

.method public onBackClick()Z
    .registers 1

    .line 407
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsDragging:Z

    return p0
.end method

.method public onDragEnd()V
    .registers 5

    .line 435
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDragEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsDragging:Z

    .line 437
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v2, 0x2724

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 438
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x144

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mDragListener:Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$IDragListener;

    if-eqz v1, :cond_1f

    .line 440
    invoke-interface {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$IDragListener;->onDragEnd()V

    .line 443
    :cond_1f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    if-eqz v1, :cond_4a

    .line 444
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->onScreenFormChanged(II)V

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->setEnable(ZZ)V

    .line 446
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->updateLayoutParam(Z)V

    .line 447
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    if-ne v2, v3, :cond_40

    move v2, v0

    goto :goto_42

    .line 448
    :cond_40
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    :goto_42
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mVisibility:I

    if-nez p0, :cond_47

    move v0, v3

    .line 447
    :cond_47
    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->updateOrientation(IZ)V

    :cond_4a
    return-void
.end method

.method public onDragStart()V
    .registers 3

    .line 424
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDragStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsDragging:Z

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOperationControl:Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    const/16 v1, 0x2723

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x143

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    if-eqz p0, :cond_20

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->setEnable(ZZ)V

    :cond_20
    return-void
.end method

.method public onFirstSteadyFrame()V
    .registers 4

    .line 268
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstSteadyFrame, mbRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsTouchZooming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsZooming :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFirstPreviewArrived:Z

    .line 272
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_47

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    if-nez v1, :cond_47

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsZooming:Z

    if-nez v1, :cond_47

    .line 273
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_47
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 229
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    if-eq v0, p1, :cond_2f

    .line 230
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    .line 232
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsDragging:Z

    if-nez v0, :cond_24

    .line 233
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->updateLayoutParam(Z)V

    .line 234
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    invoke-virtual {p2, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->onScreenFormChanged(II)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1f

    .line 236
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    goto :goto_20

    :cond_1f
    move p0, v1

    .line 235
    :goto_20
    invoke-virtual {p1, p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->updateOrientation(IZ)V

    return-void

    .line 238
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 239
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->updateLayoutParam(Z)V

    :cond_2f
    return-void
.end method

.method public pause()V
    .registers 3

    .line 375
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 376
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsZooming:Z

    .line 377
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsTouchZooming:Z

    .line 379
    :cond_b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    .line 380
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mFirstPreviewArrived:Z

    return-void
.end method

.method protected registerKeysToMonitor()V
    .registers 3

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_13

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_limit_monitor"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_13
    return-void
.end method

.method public remove(I)V
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->remove(I)V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 294
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->setEnable(ZZ)V

    .line 296
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->updateRecyclerEnable(Z)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 6

    .line 247
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    if-ne v0, p1, :cond_5

    goto :goto_2a

    .line 250
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    .line 251
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsDragging:Z

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    .line 252
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->updateLayoutParam(Z)V

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->onScreenFormChanged(II)V

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mScreenFormType:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_20

    goto :goto_21

    :cond_20
    move p1, v3

    .line 255
    :goto_21
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mVisibility:I

    if-nez p0, :cond_26

    goto :goto_27

    :cond_26
    move v0, v3

    .line 254
    :goto_27
    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->updateOrientation(IZ)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public setRecording(ZZ)V
    .registers 4

    .line 221
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mIsRecording:Z

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->setRecording(ZZ)V

    .line 223
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mTouchCallback:Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/FreeItemTouchCallback;->setRecording(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 224
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->updateRecyclerEnable(Z)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mRootView:Landroid/widget/FrameLayout;

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->unRegisterKeysToMonitor()V

    return-void
.end method

.method protected unRegisterKeysToMonitor()V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_13

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_zoom_limit_monitor"

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/FreeShot/FreeFillUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_13
    return-void
.end method
