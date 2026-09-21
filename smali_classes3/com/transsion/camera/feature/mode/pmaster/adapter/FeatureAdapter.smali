.class public Lcom/transsion/camera/feature/mode/pmaster/adapter/FeatureAdapter;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;
.source "SourceFile"


# instance fields
.field private mPinnedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/pmaster/listener/RvListener;)V

    return-void
.end method


# virtual methods
.method protected getHolder(Landroid/view/View;II)Lcom/transsion/camera/feature/mode/pmaster/holder/RvHolder;
    .registers 4

    .line 39
    new-instance p0, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/pmaster/holder/SlimBodyHolder;-><init>(Landroid/view/View;I)V

    return-object p0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    if-eqz v1, :cond_f

    .line 26
    check-cast v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 27
    iget p0, v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->layoutId:I

    return p0

    .line 29
    :cond_f
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getPinnedView()Landroid/view/View;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/FeatureAdapter;->mPinnedView:Landroid/view/View;

    return-object p0
.end method

.method public updateSelectItemProgress(IIZ)V
    .registers 8

    .line 56
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_27

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    .line 60
    :goto_9
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 61
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    if-eqz p3, :cond_1e

    .line 63
    iput v0, v2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->progress:I

    goto :goto_24

    .line 66
    :cond_1e
    iget v3, v2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    if-ne p1, v3, :cond_24

    .line 67
    iput p2, v2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->progress:I

    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_27
    :goto_27
    return-void
.end method

.method public updateSelectedItemById(I)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 46
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    .line 47
    iget v1, v1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;->featureId:I

    if-ne p1, v1, :cond_19

    .line 48
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    return-void

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method
