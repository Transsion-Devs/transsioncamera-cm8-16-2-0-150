.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemHolder;
.super Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolder"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 196
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public applyAlphaAnimation(ILjava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected applyAlphaAnimation(Landroid/view/View;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public applySelectedBackground(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mItemRootLayout:Landroid/widget/FrameLayout;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected initViewByItem(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;ZZ)V
    .registers 4

    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->initViewByItem(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;ZZ)V

    .line 202
    instance-of p2, p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    if-eqz p2, :cond_11

    .line 203
    check-cast p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->getOrientation()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemHolder;->setOrientation(IZ)V

    :cond_11
    return-void
.end method

.method public bridge synthetic setOrientation(IZ)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void
.end method

.method public setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mItemContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->mCompatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V

    return-void
.end method

.method public updateRotation(IIZ)V
    .registers 4

    return-void
.end method
