.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private volatile isEnable:Z

.field private mClickPosition:I

.field private mClickProgress:J

.field private final mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;


# direct methods
.method public static synthetic $r8$lambda$q1FmQxgHnCKKlnuAuQ_x-ngSyYw(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mCurrentPosition:I

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mClickPosition:I

    const-wide/16 v1, -0x1

    .line 35
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mClickProgress:J

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->isEnable:Z

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    .line 72
    invoke-direct {p0, p3, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setCurrentPosition(IZ)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .registers 3

    .line 140
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->isEnable:Z

    if-eqz p2, :cond_7

    .line 141
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->updateCurrentPosition(I)V

    :cond_7
    return-void
.end method

.method private setCurrentPosition(IZ)V
    .registers 4

    .line 190
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mCurrentPosition:I

    .line 191
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mCurrentPosition:I

    if-eqz p2, :cond_14

    .line 194
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 195
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    .line 196
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_14
    return-void
.end method

.method private updateCurrentPosition(I)V
    .registers 4

    .line 160
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mCurrentPosition:I

    if-ne v0, p1, :cond_12

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;->onSegmentEditSelected(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;I)V

    return-void

    .line 165
    :cond_12
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mClickPosition:I

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getTargetStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mClickProgress:J

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;

    if-eqz v0, :cond_31

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;->onSegmentItemSelected(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V

    :cond_31
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 152
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 28
    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;I)V
    .registers 11

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 95
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v1

    .line 97
    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mCurrentPosition:I

    const/4 v3, 0x0

    if-ne p2, v2, :cond_1c

    .line 98
    iget-object v2, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivEditItem:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v2, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_27

    .line 101
    :cond_1c
    iget-object v2, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivEditItem:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v2, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_27
    if-eqz v1, :cond_9b

    .line 106
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_segment_item_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_segment_item_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 107
    invoke-virtual {v2, v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    iget-object v4, p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivCoverItem:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 110
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v4, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 111
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 112
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v4, 0x1

    .line 113
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 115
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 116
    invoke-virtual {v4, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    const/16 v2, 0xc8

    .line 118
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade(I)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;)V

    .line 119
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_a2

    .line 136
    :cond_9b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_a2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;I)V

    const/16 p0, 0x12c

    invoke-static {v0, p0, v3, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V

    .line 145
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;
    .registers 5

    .line 88
    new-instance p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/vlog/R$layout;->vlog_editor_segment_item:I

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onPlayerProgress(J)V
    .registers 10

    .line 174
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mClickPosition:I

    const/4 v1, 0x1

    if-ltz v0, :cond_f

    iget-wide v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mClickProgress:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_f

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setCurrentPosition(IZ)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 177
    :goto_10
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 178
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 180
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getTargetStartTime()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_47

    .line 181
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v0, v3, :cond_44

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getTargetStartTime()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v2, p1, v3

    if-gez v2, :cond_47

    .line 182
    :cond_44
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setCurrentPosition(IZ)V

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_4a
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 201
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->isEnable:Z

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$OnItemClickListener;

    return-void
.end method

.method public updateDataList(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;I)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->mDataList:Ljava/util/List;

    const/4 p1, 0x0

    .line 77
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->setCurrentPosition(IZ)V

    .line 78
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
