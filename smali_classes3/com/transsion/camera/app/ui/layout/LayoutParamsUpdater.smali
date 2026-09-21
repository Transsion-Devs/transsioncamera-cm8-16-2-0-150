.class public Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAdapters:Ljava/util/Map;

.field private mHeight:I

.field private final mMargins:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 18
    iput v0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mWidth:I

    .line 19
    iput v0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mHeight:I

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mMargins:Landroid/graphics/Rect;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mAdapters:Ljava/util/Map;

    return-void
.end method

.method private getAction(Landroid/view/View;)Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;
    .registers 3

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 124
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_17

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mAdapters:Ljava/util/Map;

    const-class p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;

    return-object p0

    .line 126
    :cond_17
    instance-of p1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_2a

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mAdapters:Ljava/util/Map;

    const-class p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;

    return-object p0

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 79
    iget v0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mWidth:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_9

    .line 80
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    :cond_9
    iget p0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mHeight:I

    if-eq p0, v1, :cond_f

    .line 83
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_f
    return-void
.end method

.method private updateMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 4

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mMargins:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_e

    .line 92
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 94
    :cond_e
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_14

    .line 95
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 97
    :cond_14
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-eq v0, v1, :cond_1a

    .line 98
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 100
    :cond_1a
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-eq p0, v1, :cond_20

    .line 101
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_20
    return-void
.end method


# virtual methods
.method public addAdapter(Ljava/lang/Class;Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mAdapters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setBottomMargin(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mMargins:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public setHeight(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;
    .registers 2

    .line 29
    iput p1, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mHeight:I

    return-object p0
.end method

.method public setMargins(IIII)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;
    .registers 6

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mMargins:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method public setSize(II)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;
    .registers 3

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setWidth(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    .line 39
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setHeight(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    return-object p0
.end method

.method public setTopMargin(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mMargins:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    return-object p0
.end method

.method public setWidth(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;
    .registers 2

    .line 24
    iput p1, p0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->mWidth:I

    return-object p0
.end method

.method public update(Landroid/view/View;)V
    .registers 4

    .line 106
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->getAction(Landroid/view/View;)Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 109
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;->apply(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    goto :goto_f

    .line 111
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 113
    :goto_f
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1a

    .line 114
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->updateMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1d

    .line 116
    :cond_1a
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :goto_1d
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
