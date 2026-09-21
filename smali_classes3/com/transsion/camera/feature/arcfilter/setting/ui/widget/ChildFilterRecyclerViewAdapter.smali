.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;
.super Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;,
        Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;",
        "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;"
    }
.end annotation


# instance fields
.field private mColorStyleItemViewType:I

.field private mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

.field private mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;",
            "Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    .line 30
    new-instance p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mColorStyleItemViewType:I

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    return-void
.end method

.method public static convertItemInfos(Ljava/util/List;ZI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;ZI)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_30

    .line 179
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_30

    .line 182
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 184
    new-instance v2, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;)V

    invoke-virtual {v2, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->setSelected(Z)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->setOrientation(I)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2f
    return-object v0

    .line 180
    :cond_30
    :goto_30
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected applyAlphaAnimation(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V
    .registers 3

    return-void
.end method

.method public getChildItemPosition(Ljava/lang/Object;)I
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 121
    instance-of v0, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    if-eqz v0, :cond_f

    .line 122
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public getChildItemViewType()I
    .registers 1

    .line 144
    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mColorStyleItemViewType:I

    return p0
.end method

.method public getChildItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected isChildAdapter()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isChildMatch(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 134
    instance-of p0, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    return p0
.end method

.method public isChildMatch(Ljava/lang/Object;)Z
    .registers 2

    .line 129
    instance-of p0, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    return p0
.end method

.method protected varargs notifyDataChanged([I)V
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_f

    .line 166
    array-length p1, p1

    if-nez p1, :cond_b

    goto :goto_f

    .line 169
    :cond_b
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->notifyColorStyleItemChanged()V

    return-void

    .line 167
    :cond_f
    :goto_f
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->notifyColorStyleDataSetChanged()V

    return-void
.end method

.method public onBindChildViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 89
    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V

    return-void
.end method

.method public onChildSelectStateChanged(II)V
    .registers 6

    .line 94
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_44

    .line 98
    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 99
    instance-of v2, v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    if-eqz v2, :cond_25

    .line 100
    check-cast v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->clone()Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->setSelected(Z)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_25
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 103
    instance-of v2, v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    if-eqz v2, :cond_3d

    .line 104
    check-cast v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->clone()Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->setSelected(Z)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_3d
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->notifyDataChanged([I)V

    :cond_44
    :goto_44
    return-void
.end method

.method public onCreateChildViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;
    .registers 4

    .line 73
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_12

    .line 76
    :cond_f
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->filter_view_item:I

    goto :goto_14

    .line 74
    :cond_12
    :goto_12
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->filter_view_item_ui4:I

    .line 78
    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 79
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setChildItemViewType(I)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mColorStyleItemViewType:I

    return-void
.end method

.method public setController(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    return-void
.end method

.method public setSelectedIndex(I)V
    .registers 3

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    .line 44
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v0

    .line 45
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setSelectedIndex(I)V

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->onChildSelectStateChanged(II)V

    return-void
.end method

.method public updateChildItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equalsItemSize(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 153
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateItemSize(I)V

    .line 155
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equalsRingScreenLight(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 156
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->isRingScreenLight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->updateRingScreenLight(Z)V

    .line 158
    :cond_27
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    return-void
.end method

.method public updateScreenFormAndOrientation(II)V
    .registers 6

    .line 51
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 52
    instance-of v2, v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    if-eqz v2, :cond_8

    .line 53
    check-cast v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->setOrientation(I)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    goto :goto_8

    .line 56
    :cond_1e
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mScreenFormType:I

    if-ne v0, p1, :cond_35

    .line 57
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_2d

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    if-eq v0, p2, :cond_2d

    goto :goto_35

    .line 63
    :cond_2d
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    if-ne p1, p2, :cond_32

    return-void

    .line 66
    :cond_32
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    return-void

    .line 58
    :cond_35
    :goto_35
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mScreenFormType:I

    .line 59
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->notifyColorStyleItemChanged()V

    return-void
.end method
