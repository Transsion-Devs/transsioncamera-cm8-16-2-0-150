.class public Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mInsets:Landroid/graphics/Insets;

.field private final mRotation:I


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mRotation:I

    if-nez v0, :cond_14

    .line 30
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    return-void

    .line 32
    :cond_14
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    .line 33
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 34
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    .line 35
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    .line 32
    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public getSafeInsetLeft(I)I
    .registers 3

    .line 41
    iget v0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mRotation:I

    if-ne v0, p1, :cond_9

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->left:I

    return p0

    :cond_9
    add-int/lit8 p1, p1, 0x4

    sub-int/2addr p1, v0

    .line 44
    rem-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->top:I

    return p0

    :cond_16
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->right:I

    return p0

    .line 50
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0
.end method

.method public getSafeInsetRight(I)I
    .registers 3

    .line 56
    iget v0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mRotation:I

    if-ne v0, p1, :cond_9

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->right:I

    return p0

    :cond_9
    add-int/lit8 p1, p1, 0x4

    sub-int/2addr p1, v0

    .line 59
    rem-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0

    :cond_16
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->left:I

    return p0

    .line 65
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/helper/DisplayCutoutInsetsHelper;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->top:I

    return p0
.end method
