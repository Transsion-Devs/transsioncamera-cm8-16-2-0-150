.class final Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;
.super Lcom/transsion/widgetslib/adapter/RecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentAdapter"
.end annotation


# instance fields
.field private final mChoiceMode:I

.field private mWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    .line 1048
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;I)V
    .registers 3

    .line 1052
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 1053
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mChoiceMode:I

    return-void
.end method


# virtual methods
.method public getCheckedItemCount()I
    .registers 5

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    if-eqz v0, :cond_2f

    .line 1120
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    .line 1121
    array-length v0, p0

    move v2, v1

    :goto_23
    if-ge v1, v0, :cond_2e

    .line 1124
    aget-boolean v3, p0, v1

    if-eqz v3, :cond_2b

    add-int/lit8 v2, v2, 0x1

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2e
    return v2

    :cond_2f
    return v1
.end method

.method public isItemChecked(I)Z
    .registers 4

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    if-eqz v0, :cond_2c

    .line 1110
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    if-ltz p1, :cond_2c

    .line 1111
    array-length v0, p0

    if-ge p1, v0, :cond_2c

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v1
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;ILjava/lang/CharSequence;)V
    .registers 7

    .line 1061
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;->-$$Nest$fgetmCheckedTextView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_4f

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4f

    .line 1063
    iget p3, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mChoiceMode:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_34

    .line 1064
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItem:I

    .line 1065
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;->-$$Nest$fgetmCheckedTextView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-ne p0, p2, :cond_30

    move v0, v1

    :cond_30
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_34
    const/4 v2, 0x2

    if-ne p3, v2, :cond_4f

    .line 1067
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    .line 1068
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;->-$$Nest$fgetmCheckedTextView(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;)Landroid/widget/CheckedTextView;

    move-result-object p1

    if-eqz p0, :cond_4c

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_4c

    move v0, v1

    :cond_4c
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_4f
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;ILjava/lang/Object;)V
    .registers 4

    .line 1043
    check-cast p1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 1043
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;
    .registers 3

    .line 1076
    new-instance p2, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 1077
    iget-object p1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;->setSetOnClickListener(Z)V

    .line 1078
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mChoiceMode:I

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentHolder;->setChoiceMode(I)V

    return-object p2
.end method

.method public setSelectedPst(I)V
    .registers 7

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_88

    if-ltz p1, :cond_88

    .line 1084
    invoke-virtual {p0}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->getItemCount()I

    move-result v0

    .line 1085
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mChoiceMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5f

    .line 1086
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItem:I

    if-ltz v1, :cond_37

    if-ge v1, v0, :cond_37

    .line 1088
    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_33

    iget-object v2, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_34

    :cond_33
    move-object v2, v3

    :goto_34
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_37
    if-ge p1, v0, :cond_88

    .line 1092
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iput p1, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItem:I

    .line 1093
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget v0, v0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItem:I

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_5b

    iget-object v1, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_5b
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    :cond_5f
    const/4 v4, 0x2

    if-ne v1, v4, :cond_88

    .line 1096
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;->mCheckedItems:[Z

    if-eqz v1, :cond_88

    .line 1097
    array-length v4, v1

    if-le v4, v0, :cond_72

    goto :goto_88

    .line 1101
    :cond_72
    aget-boolean v0, v1, p1

    xor-int/2addr v0, v2

    aput-boolean v0, v1, p1

    .line 1102
    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_85

    iget-object v0, p0, Lcom/transsion/widgetslib/adapter/RecyclerAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_85
    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_88
    :goto_88
    return-void
.end method

.method public setWeakReference(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController;)V
    .registers 3

    .line 1057
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialogController$ContentAdapter;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
