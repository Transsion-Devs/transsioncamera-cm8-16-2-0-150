.class Lcom/transsion/widgetslib/view/swipmenu/LeftHorizontal;
.super Lcom/transsion/widgetslib/view/swipmenu/Horizontal;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LeftHorizontal"


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;)V
    .registers 3

    const/4 v0, 0x1

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
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1, v0, p0, p3}, Lcom/transsion/widgetslib/view/swipmenu/OverScroller;->startScroll(III)V

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

    neg-int p0, p0

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
    if-ltz p1, :cond_12

    .line 65
    iput p2, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    .line 67
    :cond_12
    iget p1, v0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p2

    neg-int p2, p2

    if-gt p1, p2, :cond_2c

    .line 68
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p2

    neg-int p2, p2

    iput p2, p1, Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;->x:I

    .line 70
    :cond_2c
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->mChecker:Lcom/transsion/widgetslib/view/swipmenu/Horizontal$Checker;

    return-object p0
.end method

.method getClickMenuItemBound(IFIZI)Landroid/graphics/Rect;
    .registers 10

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuItemCount()I

    move-result v1

    .line 116
    const-string v2, "LeftHorizontal"

    if-gtz v1, :cond_22

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getClickMenuItemBound: menuItemCount = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 120
    :cond_22
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v1

    if-gtz v1, :cond_3d

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getClickMenuItemBound: menuWidth = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 125
    :cond_3d
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    .line 126
    const-string v3, "getClickMenuItemBound: left"

    invoke-static {v2, v3}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p4, :cond_99

    .line 127
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result p4

    if-eqz p4, :cond_99

    .line 128
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p4

    int-to-float p4, p4

    sub-int/2addr p1, v1

    .line 129
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result p0

    add-int/2addr p1, p0

    int-to-float p0, p1

    int-to-float p1, p3

    mul-float/2addr p1, p4

    add-float/2addr p0, p1

    int-to-float p1, p5

    add-float/2addr p0, p1

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getClickMenuItemBound: scrollX = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " start = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    float-to-int p1, p0

    .line 131
    iput p1, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr p0, p4

    float-to-int p0, p0

    .line 132
    iput p0, v0, Landroid/graphics/Rect;->right:I

    sub-float/2addr p2, p4

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p2, p0

    float-to-int p0, p2

    .line 133
    iput p0, v0, Landroid/graphics/Rect;->top:I

    add-float/2addr p2, p4

    float-to-int p0, p2

    .line 134
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    .line 137
    :cond_99
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float p3, p3

    mul-float/2addr p3, p0

    add-float/2addr p1, p3

    int-to-float p3, p5

    add-float/2addr p1, p3

    float-to-int p3, p1

    .line 139
    iput p3, v0, Landroid/graphics/Rect;->left:I

    add-float/2addr p1, p0

    float-to-int p0, p1

    .line 140
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 141
    iput v3, v0, Landroid/graphics/Rect;->top:I

    float-to-int p0, p2

    .line 142
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method getClickMenuItemIndex(IFLandroid/view/MotionEvent;Z)I
    .registers 11

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 81
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    .line 82
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuItemCount()I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_9e

    .line 83
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1c

    goto/16 :goto_9e

    .line 86
    :cond_1c
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuWidth()I

    move-result v3

    if-gtz v3, :cond_23

    return v2

    :cond_23
    if-eqz p4, :cond_97

    .line 90
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result p4

    if-eqz p4, :cond_97

    .line 91
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p4

    const/4 v4, 0x0

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result p4

    int-to-float p4, p4

    sub-int/2addr p1, v3

    int-to-float v3, p1

    sub-float v3, v0, v3

    .line 92
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, p4

    float-to-int v3, v3

    if-ltz v3, :cond_96

    if-ge v3, v1, :cond_96

    .line 95
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuPadding()I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v1, v3

    mul-float/2addr v1, p4

    add-float/2addr p1, v1

    .line 96
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p4

    invoke-virtual {p4}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p1, p4

    float-to-double v4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    float-to-double p1, p2

    float-to-double v0, v0

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 98
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p3, p3

    sub-double/2addr p3, p1

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    .line 99
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/Horizontal;->getMenuView()Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getHiosCircleRadius()I

    move-result p0

    int-to-double p3, p0

    cmpl-double p0, p1, p3

    if-lez p0, :cond_96

    return v2

    :cond_96
    return v3

    :cond_97
    sub-int/2addr p1, v3

    int-to-float p0, p1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    .line 106
    div-int/2addr v3, v1

    div-int/2addr p0, v3

    return p0

    :cond_9e
    :goto_9e
    return v2
.end method

.method public isClickOnContentView(IF)Z
    .registers 3

    int-to-float p0, p1

    cmpg-float p0, p2, p0

    if-gez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
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

    if-ge p1, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method
