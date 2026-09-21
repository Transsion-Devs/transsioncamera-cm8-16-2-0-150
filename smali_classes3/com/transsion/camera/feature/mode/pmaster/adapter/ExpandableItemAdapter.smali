.class public abstract Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;
.super Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;
    }
.end annotation


# instance fields
.field private mExpandableToggleListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->mExpandableToggleListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;

    return-void
.end method


# virtual methods
.method public collapse(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    .line 63
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1b

    .line 64
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    move-result-object v3

    .line 65
    iget-object v3, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->uniqueId:Ljava/lang/String;

    iget-object v4, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v0, v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 69
    :cond_1b
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    .line 72
    iget-object v3, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->parentUniqueId:Ljava/lang/String;

    iget-object v4, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_23

    .line 77
    :cond_3d
    iput-boolean v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    add-int/lit8 v1, v0, 0x1

    .line 78
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 79
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->mExpandableToggleListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;

    if-eqz p0, :cond_56

    .line 81
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;->onCollapse(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    :cond_56
    return-void
.end method

.method public expand(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 27
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 28
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getItem(I)Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->uniqueId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 34
    :cond_1a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 37
    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    .line 39
    iget-object v2, v2, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->parentUniqueId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 44
    :cond_43
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5a

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemAdapter;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :cond_5a
    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    add-int/lit8 v1, v0, 0x1

    .line 49
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 50
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->mExpandableToggleListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;

    if-eqz p0, :cond_74

    .line 52
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;->onExpand(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    :cond_74
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 10
    check-cast p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;I)V

    return-void
.end method

.method public abstract onBindViewHolder(Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;I)V
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;

    move-result-object p0

    return-object p0
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/pmaster/adapter/ItemVH;
.end method

.method public setExpandableToggleListener(Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->mExpandableToggleListener:Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter$ExpandableToggleListener;

    return-void
.end method

.method public toggle(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V
    .registers 4

    .line 98
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->isExpand:Z

    if-nez v0, :cond_c

    .line 100
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->expand(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void

    .line 102
    :cond_c
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;)V

    return-void
.end method
