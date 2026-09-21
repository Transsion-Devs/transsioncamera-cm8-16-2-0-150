.class public Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu$OrientationMode;
    }
.end annotation


# static fields
.field public static final CIRCLE_RADIUS_HIOS:I = 0x18

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHiosCircleRadius:I

.field private mIsHios:Z

.field private mIsMenuImageType:Z

.field private mMenuItemPadding:I

.field private mMenuPadding:I

.field private mOrientation:I

.field private mSwipeMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 64
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsMenuImageType:Z

    .line 68
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mOrientation:I

    .line 70
    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    .line 72
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    if-eqz p1, :cond_43

    .line 73
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_menu_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    .line 74
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_menu_item_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuItemPadding:I

    .line 75
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_menu_item_circle_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mHiosCircleRadius:I

    :cond_43
    return-void
.end method

.method private decidedMenuType()V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 112
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->setIsMenuImageType(Z)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 104
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setIsHios(Z)V

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-direct {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->decidedMenuType()V

    return-void
.end method

.method public getAdapterPosition()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 148
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getPosition()I

    move-result p0

    return p0

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEdgeDistanceHios(I)F
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_2d

    .line 154
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_e

    goto :goto_2d

    .line 158
    :cond_e
    iget-object v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_16
    if-lt v1, p1, :cond_29

    .line 159
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 161
    :cond_29
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    :cond_2d
    :goto_2d
    return v0
.end method

.method public getHiosCircleRadius()I
    .registers 1

    .line 50
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mHiosCircleRadius:I

    return p0
.end method

.method public getHiosSpaceRatio()F
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 169
    :cond_a
    iget v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    iget v1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuItemPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->getMenuTotalWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getMenuItemPadding()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuItemPadding:I

    return p0
.end method

.method public getMenuItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getMenuPadding()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    return p0
.end method

.method public getMenuTotalWidth()I
    .registers 4

    .line 130
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->isMenuImageType()Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    .line 131
    :goto_c
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 132
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_24
    if-lez v0, :cond_2b

    .line 135
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mMenuPadding:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    :cond_2b
    return v0

    :cond_2c
    move v0, v1

    .line 138
    :goto_2d
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 139
    iget-object v2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_45
    return v0
.end method

.method public getOrientation()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mOrientation:I

    return p0
.end method

.method public hasMenuItems()Z
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isHios()Z
    .registers 1

    .line 174
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsHios:Z

    return p0
.end method

.method public isMenuImageType()Z
    .registers 1

    .line 178
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsMenuImageType:Z

    return p0
.end method

.method public removeMenuItem(Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mSwipeMenuItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setIsMenuImageType(Z)V
    .registers 2

    .line 182
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mIsMenuImageType:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenu;->mOrientation:I

    return-void
.end method
