.class public Lcom/transsion/camera/feature/mode/pmaster/adapter/FaceBeautyAdapter;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;)V
    .registers 4

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;)V

    return-void
.end method


# virtual methods
.method protected getHolder(Landroid/view/View;II)Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;
    .registers 4

    .line 36
    new-instance p0, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/holder/FaceBeautyHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 21
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    if-eqz v1, :cond_f

    .line 23
    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    .line 24
    iget p0, v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->layoutId:I

    return p0

    .line 26
    :cond_f
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getPinnedView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateSelectItemProgress(IIZ)V
    .registers 4

    return-void
.end method

.method public updateSelectedItemById(I)V
    .registers 4

    const/4 v0, 0x0

    .line 42
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 43
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    .line 44
    iget v1, v1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    if-ne p1, v1, :cond_19

    .line 45
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    return-void

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method
