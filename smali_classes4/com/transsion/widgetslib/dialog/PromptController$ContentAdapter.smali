.class final Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;
.super Lcom/transsion/widgetslib/adapter/RecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/widgetslib/adapter/RecyclerAdapter<",
        "Ljava/lang/CharSequence;",
        "Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChoiceMode:I

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/dialog/PromptController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1129
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .line 1133
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 1134
    iput p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mChoiceMode:I

    return-void
.end method


# virtual methods
.method public getCheckedItemCount()I
    .registers 5

    .line 1213
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-nez v0, :cond_18

    goto :goto_30

    .line 1217
    :cond_18
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    array-length v0, p0

    move v2, v1

    :goto_24
    if-ge v1, v0, :cond_2f

    aget-boolean v3, p0, v1

    if-eqz v3, :cond_2c

    add-int/lit8 v2, v2, 0x1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2f
    return v2

    :cond_30
    :goto_30
    return v1
.end method

.method public isItemChecked(I)Z
    .registers 4

    .line 1202
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-nez v0, :cond_18

    goto :goto_2d

    .line 1206
    :cond_18
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-ltz p1, :cond_2d

    .line 1207
    array-length v0, p0

    if-ge p1, v0, :cond_2d

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;ILjava/lang/Object;)V
    .registers 4

    .line 1124
    check-cast p1, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->onBindViewHolder(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;ILjava/lang/CharSequence;)V
    .registers 7

    .line 1144
    # getter for: Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->access$1700(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object p3, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_50

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1a

    goto :goto_50

    .line 1150
    :cond_1a
    iget p3, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mChoiceMode:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_35

    .line 1151
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    .line 1152
    # getter for: Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->access$1700(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-ne p0, p2, :cond_31

    move v0, v1

    :cond_31
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_35
    const/4 v2, 0x2

    if-ne p3, v2, :cond_50

    .line 1154
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    .line 1155
    # getter for: Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->access$1700(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-eqz p0, :cond_4d

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_4d

    move v0, v1

    :cond_4d
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_50
    :goto_50
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1124
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;
    .registers 3

    .line 1162
    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 1163
    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->setSetOnClickListener(Z)V

    .line 1164
    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mChoiceMode:I

    invoke-virtual {p2, p0}, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->setChoiceMode(I)V

    return-object p2
.end method

.method public setSelectedPst(I)V
    .registers 7

    .line 1169
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8a

    if-gez p1, :cond_e

    goto/16 :goto_8a

    .line 1173
    :cond_e
    invoke-virtual {p0}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->getItemCount()I

    move-result v0

    .line 1175
    iget v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mChoiceMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_61

    .line 1176
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/dialog/PromptController;

    iget v1, v1, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    if-ltz v1, :cond_39

    if-ge v1, v0, :cond_39

    .line 1182
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_35

    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_36

    :cond_35
    move-object v2, v3

    :goto_36
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_39
    if-ge p1, v0, :cond_8a

    .line 1185
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/PromptController;

    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    .line 1187
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/PromptController;

    iget v0, v0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItem:I

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5d

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_5d
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    :cond_61
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8a

    .line 1190
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v1, v1, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-eqz v1, :cond_8a

    .line 1191
    array-length v4, v1

    if-le v4, v0, :cond_74

    goto :goto_8a

    .line 1195
    :cond_74
    aget-boolean v0, v1, p1

    xor-int/2addr v0, v2

    aput-boolean v0, v1, p1

    .line 1197
    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_87

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_87
    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public setWeakReference(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .registers 3

    .line 1138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
