.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;,
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;,
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;,
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;,
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;,
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;,
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;,
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;,
        Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CropTransformation;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mItemList:Ljava/util/List;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestOperator(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mItemList:Ljava/util/List;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mMainHandler:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mRequestOperator:Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->getType()I

    move-result p0

    return p0
.end method

.method public items()Ljava/util/List;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 71
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->onBindViewHolder(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4

    .line 71
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->onBindViewHolder(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;I)V
    .registers 3

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    .line 137
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;

    if-eqz p2, :cond_18

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

    if-eqz p2, :cond_18

    .line 138
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;)V

    return-void

    .line 139
    :cond_18
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;

    if-eqz p2, :cond_28

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    if-eqz p2, :cond_28

    .line 140
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;)V

    return-void

    .line 141
    :cond_28
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;

    if-eqz p2, :cond_38

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz p2, :cond_38

    .line 142
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    return-void

    .line 143
    :cond_38
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;

    if-eqz p2, :cond_48

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    if-eqz p2, :cond_48

    .line 144
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V

    return-void

    .line 145
    :cond_48
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;

    if-eqz p2, :cond_58

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz p2, :cond_58

    .line 146
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    return-void

    .line 147
    :cond_58
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;

    if-eqz p2, :cond_67

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz p2, :cond_67

    .line 148
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    :cond_67
    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;ILjava/util/List;)V
    .registers 4

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;

    .line 156
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;

    if-eqz p2, :cond_18

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

    if-eqz p2, :cond_18

    .line 157
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;)V

    return-void

    .line 158
    :cond_18
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;

    if-eqz p2, :cond_28

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    if-eqz p2, :cond_28

    .line 159
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;)V

    return-void

    .line 160
    :cond_28
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;

    if-eqz p2, :cond_38

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz p2, :cond_38

    .line 161
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    invoke-virtual {p1, p0, p3}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;Ljava/util/List;)V

    return-void

    .line 162
    :cond_38
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;

    if-eqz p2, :cond_48

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    if-eqz p2, :cond_48

    .line 163
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V

    return-void

    .line 164
    :cond_48
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;

    if-eqz p2, :cond_58

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz p2, :cond_58

    .line 165
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    return-void

    .line 166
    :cond_58
    instance-of p2, p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;

    if-eqz p2, :cond_67

    instance-of p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    if-eqz p2, :cond_67

    .line 167
    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;

    check-cast p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    :cond_67
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_82

    const/4 v2, 0x1

    if-eq p2, v2, :cond_6e

    const/4 v2, 0x3

    if-eq p2, v2, :cond_5a

    const/4 v2, 0x4

    if-eq p2, v2, :cond_5a

    const/4 v2, 0x5

    if-eq p2, v2, :cond_46

    const/4 v2, 0x6

    if-eq p2, v2, :cond_32

    const/4 v2, 0x7

    if-ne p2, v2, :cond_2a

    .line 122
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_fragment_list_item_failed_layout:I

    .line 123
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$FailedViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V

    return-object p2

    .line 127
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid view type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_32
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_fragment_list_item_completed_layout:I

    .line 118
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V

    return-object p2

    .line 112
    :cond_46
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_fragment_list_item_switch_layout:I

    .line 113
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V

    return-object p2

    .line 107
    :cond_5a
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_fragment_list_item_processing_or_queuing_layout:I

    .line 108
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V

    return-object p2

    .line 101
    :cond_6e
    new-instance p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_fragment_list_item_title_layout:I

    .line 102
    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;-><init>(Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V

    return-object p0

    .line 96
    :cond_82
    new-instance p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$layout;->ai_fragment_list_item_header_layout:I

    .line 97
    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$HeaderViewHolder;-><init>(Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V

    return-object p0
.end method
