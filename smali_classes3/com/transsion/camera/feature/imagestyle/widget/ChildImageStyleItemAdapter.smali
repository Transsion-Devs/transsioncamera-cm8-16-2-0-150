.class public Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;
.super Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder;,
        Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;",
        "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;"
    }
.end annotation


# instance fields
.field private mColorStyleItemViewType:I

.field private final mColorStyleTextMargins:Landroid/graphics/Rect;

.field private mColorStyleTextSize:I

.field private mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

.field private mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;


# direct methods
.method public constructor <init>(Ljava/util/List;IILcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;II",
            "Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;-><init>(Ljava/util/List;II)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mColorStyleItemViewType:I

    .line 35
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mColorStyleTextMargins:Landroid/graphics/Rect;

    .line 41
    iput-object p4, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    return-void
.end method

.method public static convertItemInfos(Ljava/util/List;ZI)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;ZI)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2c

    .line 211
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_2c

    .line 214
    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    .line 216
    new-instance v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;-><init>(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->setSelected(Z)Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2b
    return-object p2

    .line 212
    :cond_2c
    :goto_2c
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getChildItemPosition(Ljava/lang/Object;)I
    .registers 3

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mDataList:Ljava/util/List;

    if-eqz p0, :cond_d

    instance-of v0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    if-eqz v0, :cond_d

    .line 150
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public getChildItemViewType()I
    .registers 1

    .line 172
    iget p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mColorStyleItemViewType:I

    return p0
.end method

.method public getChildItems()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method public isChildMatch(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 162
    instance-of p0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    return p0
.end method

.method public isChildMatch(Ljava/lang/Object;)Z
    .registers 2

    .line 157
    instance-of p0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    return p0
.end method

.method protected varargs notifyDataChanged([I)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    if-nez p0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_f

    .line 202
    array-length p1, p1

    if-nez p1, :cond_b

    goto :goto_f

    .line 205
    :cond_b
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->notifyColorStyleItemChanged()V

    return-void

    .line 203
    :cond_f
    :goto_f
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->notifyColorStyleDataSetChanged()V

    return-void
.end method

.method public onBindChildViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 122
    check-cast p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 30
    check-cast p1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;I)V
    .registers 6

    .line 109
    instance-of v0, p1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder;

    if-eqz v0, :cond_e

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder;

    iget v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mColorStyleTextSize:I

    iget-object v2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mColorStyleTextMargins:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder;->updateTextStyle(ILandroid/graphics/Rect;)V

    .line 112
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onChildSelectStateChanged(II)V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_42

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_42

    .line 131
    :cond_b
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    .line 132
    instance-of v2, v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    if-eqz v2, :cond_23

    .line 133
    check-cast v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->clone()Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->setSelected(Z)Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_23
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    .line 136
    instance-of v2, v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    if-eqz v2, :cond_3b

    .line 137
    check-cast v1, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->clone()Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;->setSelected(Z)Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ChildImageStyleItem;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_3b
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->notifyDataChanged([I)V

    :cond_42
    :goto_42
    return-void
.end method

.method public onCreateChildViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$ItemViewHolder;
    .registers 5

    .line 98
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p0, :cond_f

    goto :goto_12

    .line 101
    :cond_f
    sget p0, Lcom/transsion/camera/feature/imagestyle/R$layout;->image_style_thumbnail_item:I

    goto :goto_14

    .line 99
    :cond_12
    :goto_12
    sget p0, Lcom/transsion/camera/feature/imagestyle/R$layout;->image_style_thumbnail_item_ui5:I

    .line 103
    :goto_14
    new-instance p2, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 73
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-nez p2, :cond_f

    .line 74
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    const/4 p1, 0x0

    .line 75
    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->notifyDataChanged([I)V

    return-void

    .line 79
    :cond_f
    iget p2, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    if-ne p2, p1, :cond_14

    return-void

    .line 82
    :cond_14
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mOrientation:I

    return-void
.end method

.method public setChildItemViewType(I)V
    .registers 2

    .line 167
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mColorStyleItemViewType:I

    return-void
.end method

.method public setController(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    return-void
.end method

.method public setCurrentPosition(IZ)V
    .registers 4

    .line 59
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_5

    goto :goto_13

    .line 63
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->onChildSelectStateChanged(II)V

    if-eqz p2, :cond_13

    .line 67
    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->notifyDataChanged([I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public updateChildItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)V
    .registers 7

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equalsItemSize(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 181
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->updateItemSize(II)V

    .line 183
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equalsItemTextStyle(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 184
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->getTextSize()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mColorStyleTextSize:I

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mColorStyleTextMargins:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->getTextMarginLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->getTextMarginTop()I

    move-result v2

    .line 186
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->getTextMarginRight()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->getTextMarginBottom()I

    move-result v4

    .line 185
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->equalsRingScreenLight(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 189
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->isRingScreenLight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->updateLowLight(Z)V

    .line 191
    :cond_4e
    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    return-void
.end method

.method protected updateCurrentPosition(I)V
    .registers 4

    .line 46
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_5

    return-void

    .line 49
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mListener:Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;

    if-eqz v0, :cond_19

    .line 50
    iget-object v1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter$OnItemClickListener;->onItemSelected(Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;)V

    .line 51
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->onChildSelectStateChanged(II)V

    .line 53
    :cond_19
    iget v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    filled-new-array {p1, v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->notifyDataChanged([I)V

    .line 54
    iput p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mCurrentPosition:I

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 87
    iget-boolean v0, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mLowLight:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 90
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItemAdapter;->mLowLight:Z

    const/4 p1, 0x0

    .line 91
    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imagestyle/widget/ChildImageStyleItemAdapter;->notifyDataChanged([I)V

    return-void
.end method
