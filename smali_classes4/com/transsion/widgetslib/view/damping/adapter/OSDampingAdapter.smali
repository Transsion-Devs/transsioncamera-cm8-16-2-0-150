.class public abstract Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter$HeaderHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;"
    }
.end annotation


# instance fields
.field private mRefreshLayout:Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderCount()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getHeaderHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_damping_layout_title2:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->mRefreshLayout:Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;

    if-eqz p0, :cond_16

    .line 39
    invoke-interface {p0, p1}, Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;->onFinishHeaderInflate(Landroid/view/View;)V

    .line 42
    :cond_16
    new-instance p0, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter$HeaderHolder;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter$HeaderHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public getRefreshLayout()Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->mRefreshLayout:Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;

    return-object p0
.end method

.method public isHeaderPosition(I)Z
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->getHeaderCount()I

    move-result p0

    if-ge p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public setRefreshLayout(Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/adapter/OSDampingAdapter;->mRefreshLayout:Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;

    return-void
.end method
