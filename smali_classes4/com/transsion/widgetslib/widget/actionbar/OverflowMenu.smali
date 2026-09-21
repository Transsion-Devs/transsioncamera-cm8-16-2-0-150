.class public Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$OnPopMenuListener;
    }
.end annotation


# static fields
.field private static final MENU_FRAME_OFFSET_BOTTOM_DP:I = 0x1e

.field private static final PAINT_COLOR:I = -0x9f9fa0

.field private static mIsMultiWindow:Z = false


# instance fields
.field private fMenuId:I

.field private mActivity:Landroid/app/Activity;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mFg:Landroid/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowing:Z

.field private mLayoutDir:I

.field private mMenuColor:I

.field private mMenuItemHeight:I

.field private mOutClickListener:Landroid/view/View$OnClickListener;

.field private mOverflowMenu:Landroid/widget/PopupMenu;

.field private mPointAnimHelper:Lcom/transsion/widgetslib/util/PointAnimUtil;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/util/Point;",
            ">;"
        }
    .end annotation
.end field

.field public mPopMenuListener:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$OnPopMenuListener;

.field private final mRes:Landroid/content/res/Resources;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 73
    sget v0, Lcom/transsion/widgetslib/R$style;->OsPopupMenuStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, -0x9f9fa0

    .line 38
    iput p2, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mMenuColor:I

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mIsShowing:Z

    .line 58
    new-instance p2, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$1;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$1;-><init>(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 84
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mRes:Landroid/content/res/Resources;

    .line 87
    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_list_item_height_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mMenuItemHeight:I

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPoints:Ljava/util/ArrayList;

    .line 90
    new-instance p1, Lcom/transsion/widgetslib/util/PointAnimUtil;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/util/PointAnimUtil;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPointAnimHelper:Lcom/transsion/widgetslib/util/PointAnimUtil;

    .line 92
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->initCirclePaint()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/widget/PopupMenu;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->fMenuId:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/app/Activity;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)Landroid/app/Fragment;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mFg:Landroid/app/Fragment;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;Z)Z
    .registers 2

    .line 31
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mIsShowing:Z

    return p1
.end method

.method private createPopuMenu(I)V
    .registers 15

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 204
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    sget v6, Lcom/transsion/widgetslib/R$style;->OsPopupMenuStyle:I

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v1, v3, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    goto :goto_25

    :cond_14
    move-object v3, p0

    .line 207
    new-instance v7, Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v11, 0x0

    sget v12, Lcom/transsion/widgetslib/R$style;->OsPopupMenuStyle:I

    const/4 v10, 0x0

    move-object v9, v3

    invoke-direct/range {v7 .. v12}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v7, v3, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 211
    :goto_25
    iget-object p0, v3, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    new-instance p1, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$2;

    invoke-direct {p1, v3}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$2;-><init>(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 224
    iget-object p0, v3, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    new-instance p1, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$3;

    invoke-direct {p1, v3}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$3;-><init>(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 232
    iget-object p0, v3, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPopMenuListener:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$OnPopMenuListener;

    if-eqz p0, :cond_40

    .line 233
    invoke-interface {p0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$OnPopMenuListener;->onCreated()V

    :cond_40
    return-void
.end method

.method private initCirclePaint()V
    .registers 3

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 132
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mCirclePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mMenuColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initCirclePosition(I)V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPointAnimHelper:Lcom/transsion/widgetslib/util/PointAnimUtil;

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p1}, Lcom/transsion/widgetslib/util/PointAnimUtil;->setCetnerPosition(II)V

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mLayoutDir:I

    .line 150
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPointAnimHelper:Lcom/transsion/widgetslib/util/PointAnimUtil;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgetslib/util/PointAnimUtil;->setPointDir(ILjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    if-eqz p0, :cond_7

    .line 190
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_7
    return-void
.end method

.method public getPopWindow()Landroid/widget/PopupMenu;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 254
    invoke-super {p0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_4d

    .line 258
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_shadowbutton_width_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 259
    sget-boolean v0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mIsMultiWindow:Z

    if-eqz v0, :cond_2e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    if-lez v0, :cond_2e

    .line 261
    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mMenuItemHeight:I

    mul-int/lit8 p0, p0, 0x4

    sub-int/2addr v1, p0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    return-void

    .line 262
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_44

    .line 264
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mMenuItemHeight:I

    mul-int/lit8 p0, p0, 0x4

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void

    .line 267
    :cond_44
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mMenuItemHeight:I

    mul-int/lit8 p0, p0, 0x6

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_4d
    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 199
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mIsShowing:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    iget v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mLayoutDir:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-eq v0, p1, :cond_e

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 137
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 138
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPointAnimHelper:Lcom/transsion/widgetslib/util/PointAnimUtil;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/util/PointAnimUtil;->abort()V

    .line 139
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_f

    .line 140
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 318
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 320
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/transsion/widgetslib/util/Point;

    .line 321
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v4}, Lcom/transsion/widgetslib/util/Point;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 324
    :cond_1a
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPointAnimHelper:Lcom/transsion/widgetslib/util/PointAnimUtil;

    iget p1, p0, Lcom/transsion/widgetslib/util/PointAnimUtil;->mState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_24

    .line 325
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/PointAnimUtil;->update()V

    :cond_24
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 311
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 312
    iget p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mWidth:I

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->initCirclePosition(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 302
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 303
    iget p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mWidth:I

    if-nez p1, :cond_d

    .line 304
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mWidth:I

    :cond_d
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    .line 247
    sput-boolean p1, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mIsMultiWindow:Z

    return-void
.end method

.method public performClick()Z
    .registers 3

    .line 275
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 278
    :cond_8
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->setSelected(Z)V

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 284
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOutClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_16

    .line 285
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_16
    return v1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 120
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_f

    .line 122
    iget p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mMenuColor:I

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->setOverMenuColor(I)V

    return-void

    :cond_f
    const p1, -0x9f9fa0

    .line 124
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->setOverMenuColor(I)V

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mFg:Landroid/app/Fragment;

    return-void
.end method

.method public setOnPopMenuListener(Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$OnPopMenuListener;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPopMenuListener:Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu$OnPopMenuListener;

    .line 115
    iget p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mLayoutDir:I

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->createPopuMenu(I)V

    return-void
.end method

.method public setOutOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOutClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOverMenuColor(I)V
    .registers 2

    .line 96
    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mMenuColor:I

    .line 97
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    .line 292
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz p1, :cond_9

    .line 294
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->show()V

    return-void

    .line 296
    :cond_9
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPointAnimHelper:Lcom/transsion/widgetslib/util/PointAnimUtil;

    const/4 v0, 0x0

    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mLayoutDir:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/widgetslib/util/PointAnimUtil;->start(ZI)V

    return-void
.end method

.method public setupOverflowMenuButton(I)V
    .registers 2

    .line 238
    iput p1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->fMenuId:I

    .line 239
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public show()V
    .registers 5

    const/4 v0, 0x2

    .line 165
    new-array v0, v0, [I

    .line 166
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 168
    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x3

    if-gt v0, v2, :cond_1f

    .line 169
    const-string p0, "os_menu"

    const-string v0, "Warnging, screen in a error point!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 172
    :cond_1f
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mIsShowing:Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_5c

    .line 173
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_38

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mFg:Landroid/app/Fragment;

    if-eqz v3, :cond_30

    goto :goto_38

    .line 174
    :cond_30
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Must provide a activity or fragment!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    if-eqz v2, :cond_41

    .line 177
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 179
    :cond_41
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mFg:Landroid/app/Fragment;

    if-eqz v0, :cond_4e

    .line 180
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 182
    :cond_4e
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mIsShowing:Z

    .line 183
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mPointAnimHelper:Lcom/transsion/widgetslib/util/PointAnimUtil;

    iget p0, p0, Lcom/transsion/widgetslib/widget/actionbar/OverflowMenu;->mLayoutDir:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/widgetslib/util/PointAnimUtil;->start(ZI)V

    :cond_5c
    return-void
.end method
