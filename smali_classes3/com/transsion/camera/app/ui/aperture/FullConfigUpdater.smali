.class Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;


# instance fields
.field private mScreenForm:I

.field private final mShelterExpandLeftMargin:I

.field private final mShelterExpandTopMargin:I

.field private final mShelterLeftMargin:I

.field private final mShelterTopMargin:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mScreenForm:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 33
    sget v0, Lcom/transsion/camera/R$dimen;->aperture_shelter_top_margin:I

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterTopMargin:I

    .line 35
    sget v0, Lcom/transsion/camera/R$dimen;->aperture_shelter_left_margin:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterLeftMargin:I

    .line 37
    sget v0, Lcom/transsion/camera/R$dimen;->aperture_shelter_expand_top_margin:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterExpandTopMargin:I

    .line 39
    sget v0, Lcom/transsion/camera/R$dimen;->aperture_shelter_expand_left_margin:I

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterExpandLeftMargin:I

    return-void
.end method


# virtual methods
.method public updateScreenForm(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mScreenForm:I

    return-void
.end method

.method public updateShelter(Landroid/view/ViewGroup;)V
    .registers 4

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    iget v1, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mScreenForm:I

    if-nez v1, :cond_20

    .line 58
    iget v1, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterTopMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 59
    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterLeftMargin:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_29

    .line 61
    :cond_20
    iget v1, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterExpandTopMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 62
    iget p0, p0, Lcom/transsion/camera/app/ui/aperture/FullConfigUpdater;->mShelterExpandLeftMargin:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 64
    :goto_29
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
