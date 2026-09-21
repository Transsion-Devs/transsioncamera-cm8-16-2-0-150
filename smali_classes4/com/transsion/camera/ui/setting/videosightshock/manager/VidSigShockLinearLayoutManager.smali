.class public Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private isScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;->isScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;->isScrollEnabled:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setScrollEnabled(Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/manager/VidSigShockLinearLayoutManager;->isScrollEnabled:Z

    return-void
.end method
