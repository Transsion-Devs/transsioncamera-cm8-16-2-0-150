.class Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;


# instance fields
.field private final mApertureSize:I

.field private final mApertureTopMargin:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->aperture_size:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mApertureSize:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->aperture_top_margin:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mApertureTopMargin:I

    return-void
.end method

.method private getCutoutBounds()Ljava/util/List;
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mContext:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 67
    :cond_8
    check-cast p0, Landroid/app/Activity;

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-nez p0, :cond_19

    return-object v1

    .line 73
    :cond_19
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_20

    return-object v1

    .line 77
    :cond_20
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public updateShelter(Landroid/view/ViewGroup;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->getCutoutBounds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_4c

    .line 47
    :cond_d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_14

    goto :goto_4c

    :cond_14
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 54
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mApertureSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 55
    iget v1, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mApertureTopMargin:I

    if-lez v1, :cond_3b

    .line 56
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_49

    .line 58
    :cond_3b
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/DefaultUpdater;->mApertureSize:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 60
    :goto_49
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4c
    :goto_4c
    return-void
.end method
