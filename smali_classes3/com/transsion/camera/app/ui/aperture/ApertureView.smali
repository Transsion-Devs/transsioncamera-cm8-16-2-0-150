.class public Lcom/transsion/camera/app/ui/aperture/ApertureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance p2, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/aperture/UpdaterFactory;->createUpdater()Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    return-void
.end method


# virtual methods
.method public onScreenFormChanged(I)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;->updateScreenForm(I)V

    .line 50
    iget-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;->updateShelter(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;->updateShelter(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_a

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/aperture/ApertureView;->mShelterUpdater:Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/aperture/IShelterUpdater;->updateShelter(Landroid/view/ViewGroup;)V

    :cond_a
    return-void
.end method
