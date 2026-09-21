.class Lcom/transsion/widgetslib/view/swipmenu/RightHorizontal;
.super Lcom/transsion/widgetslib/view/swipmenu/Horizontal;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RightHorizontal"


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V
    .registers 3

    const/4 v0, -0x1

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;-><init>(ILcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V

    return-void
.end method


# virtual methods
.method public autoCloseMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V
    .registers 4

    neg-int p0, p2

    .line 53
    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->startScroll(III)V

    return-void
.end method

.method public autoCloseMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V
    .registers 7

    .line 48
    invoke-virtual/range {p1 .. p6}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->fling(IIIII)V

    return-void
.end method

.method public autoOpenMenu(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V
    .registers 5

    .line 38
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p0

    neg-int p0, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->startScroll(III)V

    return-void
.end method

.method public autoOpenMenuFling(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;IIIII)V
    .registers 7

    .line 43
    invoke-virtual/range {p1 .. p6}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->fling(IIIII)V

    return-void
.end method

.method public autoRemoveItem(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;III)V
    .registers 5

    .line 28
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getScreenWidth()I

    move-result p0

    invoke-virtual {p1, p3, p0, p4}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->startScroll(III)V

    return-void
.end method

.method public autoRestoreItem(Lcom/transsion/widgetslib/view/swipmenu/OverScroller;II)V
    .registers 4

    neg-int p0, p2

    .line 33
    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->startScroll(III)V

    return-void
.end method

.method public checkXY(II)Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    iput p1, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    .line 59
    iput p2, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->y:I

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->shouldResetSwipe:Z

    if-nez p1, :cond_e

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->shouldResetSwipe:Z

    :cond_e
    if-gez p1, :cond_12

    .line 65
    iput p2, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    .line 67
    :cond_12
    iget p1, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p2

    if-le p1, p2, :cond_2a

    .line 68
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p2

    iput p2, p1, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    .line 70
    :cond_2a
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    return-object p0
.end method

.method getClickMenuItemBound(IFIZI)Landroid/graphics/Rect;
    .registers 8

    .line 110
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 111
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuItemCount()I

    move-result v0

    .line 112
    const-string v1, "RightHorizontal"

    if-gtz v0, :cond_22

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getClickMenuItemBound: menuItemCount = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 116
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v0

    if-gtz v0, :cond_3d

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getClickMenuItemBound: menuWidth = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 121
    :cond_3d
    const-string v0, "getClickMenuItemBound: right"

    invoke-static {v1, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_83

    .line 122
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result p4

    if-eqz p4, :cond_83

    .line 123
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p4

    int-to-float p4, p4

    .line 124
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result p0

    int-to-float p0, p0

    int-to-float p3, p3

    mul-float/2addr p3, p4

    add-float/2addr p0, p3

    int-to-float p3, p5

    add-float/2addr p0, p3

    float-to-int p3, p0

    .line 125
    iput p3, p1, Landroid/graphics/Rect;->left:I

    add-float/2addr p0, p4

    float-to-int p0, p0

    .line 126
    iput p0, p1, Landroid/graphics/Rect;->right:I

    sub-float/2addr p2, p4

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p2, p0

    float-to-int p0, p2

    .line 127
    iput p0, p1, Landroid/graphics/Rect;->top:I

    add-float/2addr p2, p4

    float-to-int p0, p2

    .line 128
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1

    .line 131
    :cond_83
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p0

    int-to-float p0, p0

    int-to-float p3, p3

    mul-float/2addr p3, p0

    int-to-float p4, p5

    add-float/2addr p3, p4

    float-to-int p4, p3

    .line 133
    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-float/2addr p3, p0

    float-to-int p0, p3

    .line 134
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 135
    iput v0, p1, Landroid/graphics/Rect;->top:I

    float-to-int p0, p2

    .line 136
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method getClickMenuItemIndex(IFLandroid/view/MotionEvent;Z)I
    .registers 12

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 81
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    .line 82
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_9b

    .line 83
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1a

    goto/16 :goto_9b

    .line 86
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v2

    if-gtz v2, :cond_21

    return v1

    :cond_21
    if-eqz p4, :cond_93

    .line 90
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result p4

    if-eqz p4, :cond_93

    .line 91
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p4

    const/4 v2, 0x0

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p4

    int-to-float p4, p4

    .line 92
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, p4

    float-to-int v2, v2

    if-ltz v2, :cond_92

    if-ge v2, v0, :cond_92

    .line 94
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v2

    mul-float/2addr v3, p4

    add-float/2addr v0, v3

    .line 95
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr v0, p4

    float-to-double v3, v0

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    float-to-double v5, p2

    float-to-double p1, p1

    sub-double/2addr p1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 97
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    float-to-double p3, p3

    sub-double/2addr p3, v5

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 98
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p0

    int-to-double p3, p0

    cmpl-double p0, p1, p3

    if-lez p0, :cond_92

    return v1

    :cond_92
    return v2

    .line 104
    :cond_93
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    div-int/2addr v2, v0

    div-int/2addr p0, v2

    return p0

    :cond_9b
    :goto_9b
    return v1
.end method

.method public isClickOnContentView(IF)Z
    .registers 3

    .line 75
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public isMenuOpen(I)Z
    .registers 3

    .line 17
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getDirection()I

    move-result p0

    mul-int/2addr v0, p0

    sub-int/2addr p1, v0

    .line 18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_1a

    if-eqz v0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isMenuOpenNotEqual(I)Z
    .registers 3

    .line 23
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getDirection()I

    move-result p0

    mul-int/2addr v0, p0

    if-le p1, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method
