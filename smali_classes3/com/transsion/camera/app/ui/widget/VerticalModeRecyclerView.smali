.class public Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$CenterLayoutManager;,
        Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;,
        Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;,
        Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;,
        Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$CenterSmoothScroller;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

.field private mCenterLayoutManager:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$CenterLayoutManager;

.field private mConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

.field private mIsDraggingDone:Z

.field private mItemHeight:I

.field private mItemTextSize:I

.field private mLastDownEventX:F

.field private final mNormalTextAppearance:I

.field private final mNormalTextAppearanceOnRingScreen:I

.field private mOnTabSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;

.field private final mSelectedTextAppearance:I

.field private final mSelectedTextAppearanceOnRingScreen:I

.field private final mTouchSlop:I


# direct methods
.method public static synthetic $r8$lambda$FPXBe2WfSg8Cmj-iuZ1qf2Gexfo(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;Landroid/view/View;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->lambda$setItemList$0(Landroid/view/View;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDraggingDone(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mIsDraggingDone:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDraggingDone(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mIsDraggingDone:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyChange(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->notifyChange(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartVibrator(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->startVibrator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VerticalModeRecyclerView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    sget-object v0, Lcom/transsion/camera/R$styleable;->VerticalModeSelector:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 71
    sget-object v3, Lcom/transsion/camera/R$styleable;->VerticalModeSelector:[I

    move v7, p3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 74
    sget p0, Lcom/transsion/camera/R$styleable;->VerticalModeSelector_normalAppearance:I

    const p1, 0x10301ed

    invoke-virtual {v5, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mNormalTextAppearance:I

    .line 77
    sget p0, Lcom/transsion/camera/R$styleable;->VerticalModeSelector_selectedAppearance:I

    invoke-virtual {v5, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mSelectedTextAppearance:I

    .line 80
    sget p0, Lcom/transsion/camera/R$styleable;->VerticalModeSelector_normalAppearanceOnRingScreen:I

    invoke-virtual {v5, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mNormalTextAppearanceOnRingScreen:I

    .line 83
    sget p0, Lcom/transsion/camera/R$styleable;->VerticalModeSelector_selectedAppearanceOnRingScreen:I

    invoke-virtual {v5, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    iput p0, v1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mSelectedTextAppearanceOnRingScreen:I

    .line 86
    sget p0, Lcom/transsion/camera/R$styleable;->VerticalModeSelector_itemHeight:I

    const/4 p1, -0x1

    invoke-virtual {v5, p0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    iput p0, v1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mItemHeight:I

    .line 88
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    iput p0, v1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mTouchSlop:I

    .line 93
    invoke-direct {v1, v2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    .line 97
    new-instance v0, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    .line 98
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 99
    new-instance v1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$CenterLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mCenterLayoutManager:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$CenterLayoutManager;

    .line 100
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x2

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 102
    new-instance p1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$1;-><init>(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;Landroidx/recyclerview/widget/SnapHelper;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private synthetic lambda$setItemList$0(Landroid/view/View;II)V
    .registers 4

    add-int/lit8 p1, p3, 0x1

    .line 226
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    if-eq p2, p3, :cond_a

    .line 228
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->notifyChange(I)V

    :cond_a
    return-void
.end method

.method private notifyChange(I)V
    .registers 5

    .line 296
    sget-object v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mOnTabSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;

    if-eqz p0, :cond_1d

    .line 298
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;->onTabSelected(I)V

    :cond_1d
    return-void
.end method

.method private startVibrator()V
    .registers 2

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 162
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_15

    .line 163
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    const/4 v2, 0x1

    if-eqz v0, :cond_51

    if-eq v0, v2, :cond_46

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    const/4 v1, 0x3

    if-eq v0, v1, :cond_46

    goto :goto_61

    .line 175
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mOnTabSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;

    if-eqz v0, :cond_28

    .line 176
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;->onTabScrolling()V

    .line 178
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 179
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v2

    if-nez v2, :cond_61

    .line 180
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mLastDownEventX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 181
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mTouchSlop:I

    if-le v0, v2, :cond_61

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_61

    .line 190
    :cond_46
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mOnTabSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;

    if-eqz v0, :cond_61

    .line 192
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;->onStopScrolling()V

    goto :goto_61

    .line 169
    :cond_51
    invoke-static {p0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mLastDownEventX:F

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 196
    :cond_61
    :goto_61
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public fling(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getIndex()I
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    if-eqz p0, :cond_9

    .line 269
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public isScrolling()Z
    .registers 4

    .line 211
    sget-object v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isScrolling] getScrollState():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 207
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_b

    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 218
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    .line 219
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 222
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    if-nez v0, :cond_36

    .line 223
    new-instance v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    .line 224
    new-instance p1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;)V

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$OnItemClickListener;)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mNormalTextAppearance:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mSelectedTextAppearance:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->updateTextAppearance(II)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mItemHeight:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->updateItemHeight(I)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mItemTextSize:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->updateItemTextSize(I)V

    goto :goto_39

    .line 235
    :cond_36
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->setItemList(Ljava/util/List;)V

    .line 238
    :goto_39
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    if-nez p1, :cond_69

    .line 239
    new-instance p1, Landroidx/recyclerview/widget/ConcatAdapter;

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    .line 241
    new-instance v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mItemHeight:I

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mItemHeight:I

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ConcatAdapter;->addAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mConcatAdapter:Landroidx/recyclerview/widget/ConcatAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_69
    return-void
.end method

.method public setItemSize(II)V
    .registers 3

    .line 291
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mItemHeight:I

    .line 292
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mItemTextSize:I

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mOnTabSelectedListener:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$OnTabSelectedListener;

    return-void
.end method

.method public updateIndex(IZ)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    if-eqz v0, :cond_c

    .line 251
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    if-ltz p1, :cond_28

    if-eqz p2, :cond_16

    add-int/lit8 p1, p1, 0x1

    .line 257
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 259
    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 260
    instance-of v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_28

    .line 261
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mItemHeight:I

    neg-int p0, p0

    mul-int/2addr p0, p1

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_28
    return-void
.end method

.method public updateRingScreenLight(Z)V
    .registers 4

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_e

    .line 278
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mNormalTextAppearanceOnRingScreen:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mSelectedTextAppearanceOnRingScreen:I

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->updateTextAppearance(II)V

    goto :goto_15

    .line 280
    :cond_e
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mNormalTextAppearance:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mSelectedTextAppearance:I

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->updateTextAppearance(II)V

    .line 282
    :goto_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;->mAdapter:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1a
    return-void
.end method
