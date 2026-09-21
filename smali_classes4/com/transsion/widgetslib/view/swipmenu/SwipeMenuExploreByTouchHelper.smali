.class public final Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$Companion;,
        Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$Companion;

.field private static final OPEN_STATUS_TOLERABLE_DIFF:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SwipeMenuExploreByTouch"

.field public static final VIRTUAL_BASE_VIEW_ID:I = 0x1

.field private static final ZERO_RECT:Landroid/graphics/Rect;


# instance fields
.field private final mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->Companion:Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$Companion;

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->ZERO_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;)V
    .registers 3

    const-string v0, "mHostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 24
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    return-void
.end method

.method private final checkIndex(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;I)Z
    .registers 3

    if-ltz p2, :cond_e

    .line 150
    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p2, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private final getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .registers 9

    .line 154
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    add-int/lit8 v4, p1, -0x1

    .line 157
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 158
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_37

    .line 159
    sget-object p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->ZERO_RECT:Landroid/graphics/Rect;

    return-object p0

    .line 161
    :cond_37
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v2

    mul-int v6, v2, p1

    .line 163
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 164
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float v3, p0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isHios()Z

    move-result v5

    .line 162
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getClickMenuItemBound(IFIZI)Landroid/graphics/Rect;

    move-result-object p0

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBoundsForVirtualView = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwipeMenuExploreByTouch"

    invoke-static {v0, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string p1, "bounds"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getTextForVirtualView(I)Ljava/lang/CharSequence;
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v1

    const-string v2, "mHostView.swipeCurrentHorizontal.menuView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    .line 172
    invoke-direct {p0, v1, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->checkIndex(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 177
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$string;->os_string_talkback_untagged:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mHostView.context.getStr\u2026string_talkback_untagged)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 180
    :cond_33
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextForVirtualView: contentDescription = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeMenuExploreByTouch"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 183
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$string;->os_string_talkback_untagged:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 182
    const-string p1, "{\n            mHostView.\u2026kback_untagged)\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 184
    :cond_6f
    const-string p0, "contentDescription"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getVirtualViewIdForHit(FF)I
    .registers 11

    .line 198
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    move v5, p1

    move v6, p2

    .line 199
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getClickMenuItemIndex(Landroid/view/MotionEvent;)I

    move-result p0

    const/4 p1, -0x1

    const/4 p2, 0x1

    if-le p0, p1, :cond_18

    move p1, p2

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    add-int/2addr p0, p2

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/high16 p0, -0x80000000

    .line 212
    :goto_1f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVirtualViewIdForHit("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ") => "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v0, " avail ="

    .line 212
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    const-string p2, "SwipeMenuExploreByTouch"

    invoke-static {p2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private final onItemClicked(I)Z
    .registers 6

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClicked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeMenuExploreByTouch"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    .line 134
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 135
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getOnMenuItemClickListener()Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_56

    const-string v1, "swipeMenu"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->checkIndex(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 136
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getOnMenuItemClickListener()Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    .line 138
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getPosition()I

    move-result v0

    .line 136
    invoke-interface {v2, v3, v0, v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout$OnMenuItemClickListener;->onMenuItemClickListener(Landroid/view/View;II)V

    :cond_56
    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method


# virtual methods
.method public final addAccessAbilityInfo()V
    .registers 6

    .line 29
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccessAbilityInfo: mHorizontal.getMenuView().getMenuItems().size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v2, "SwipeMenuExploreByTouch"

    invoke-static {v2, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 36
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_44
    if-ge v1, v0, :cond_57

    .line 37
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    .line 39
    new-instance v3, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 42
    :cond_57
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result p0

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "virtualViewIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;->getSwipeCurrentHorizontal()Lcom/transsion/widgetslib/view/swipmenu/Horizontal;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVisibleVirtualViews(len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ") mHorizontal.isMenuOpen(mHostView.getScrollX()) = "

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mHostView:Lcom/transsion/widgetslib/view/swipmenu/OSSwipeMenuLayout;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->isMenuOpen(I)Z

    move-result v0

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, " mItems.size() = "

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "SwipeMenuExploreByTouch"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    :goto_4d
    if-ge v0, p0, :cond_59

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_59
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPerformActionForVirtualView(id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", action="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SwipeMenuExploreByTouch"

    invoke-static {v0, p3}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x10

    if-ne p2, p3, :cond_27

    .line 116
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->onItemClicked(I)Z

    move-result p0

    return p0

    .line 119
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "*** action not handled in onPerformActionForVirtualView(viewId="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string p1, "action="

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPopulateEventForVirtualView("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeMenuExploreByTouch"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;

    if-eqz p0, :cond_35

    .line 77
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper$VirtualViewContainer;->getDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPopulateNodeForVirtualView(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") mItems.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "SwipeMenuExploreByTouch"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 96
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object p0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bounds:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final removeAccessAbilityInfo()V
    .registers 3

    .line 46
    const-string v0, "SwipeMenuExploreByTouch"

    const-string v1, "removeAccessAbilityInfo"

    invoke-static {v0, v1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 48
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method
