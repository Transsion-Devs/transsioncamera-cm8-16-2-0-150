.class public Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter$ItemHolder;
    }
.end annotation


# instance fields
.field private final mItemHeight:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 309
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 310
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;->mItemHeight:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 306
    check-cast p1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter$ItemHolder;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter$ItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter$ItemHolder;
    .registers 4

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 317
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter;->mItemHeight:I

    sub-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    .line 318
    new-instance p0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 319
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 320
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    new-instance p1, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter$ItemHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$SpaceAdapter$ItemHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
