.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final ACCESS_KEY:Ljava/lang/String; = "free_shot_key"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentAddPosition:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private volatile mIsRecording:Z

.field private final mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNeedAnimation:Z

.field private mOrientation:I

.field private volatile mbEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$7tYOJjxKdIONnvTv7isTiFWPhVE(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->lambda$performClickListener$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$duI0qoOvbhSgJe7ESCLyh_TYEnU(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->lambda$performClickListener$1(ILandroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbEnabled(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mbEnabled:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_FillAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;I)V
    .registers 5

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mCurrentAddPosition:I

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mNeedAnimation:Z

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mbEnabled:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mIsRecording:Z

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;

    .line 59
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mOrientation:I

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic lambda$performClickListener$0(ILandroid/view/View;)V
    .registers 4

    .line 196
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_1f

    .line 200
    :cond_d
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mbEnabled:Z

    if-eqz p2, :cond_1f

    const-string p2, "free_shot_key"

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->updateCurrentPosition(I)V

    .line 202
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method private synthetic lambda$performClickListener$1(ILandroid/view/View;)V
    .registers 4

    .line 207
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mbEnabled:Z

    if-eqz v0, :cond_16

    .line 208
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 209
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_16

    .line 213
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;->onItemDelete(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method private performClickListener(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;I)V
    .registers 5

    .line 195
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;I)V

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private performMultiTouchEvent(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V
    .registers 4

    .line 161
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->registerTouchingView(Landroid/view/View;Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;)V

    .line 178
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->registerTouchingView(Landroid/view/View;Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;)V

    return-void
.end method

.method private updateCurrentPosition(I)V
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$ItemClickListener;->onItemClick(I)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 3

    .line 234
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mNeedAnimation:Z

    .line 236
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mCurrentAddPosition:I

    .line 237
    :goto_8
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_14

    .line 238
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public getItemCount()I
    .registers 3

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mItemList:Ljava/util/List;

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

    .line 225
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    return v0
.end method

.method public getItemId(I)J
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getMediaItemList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 10

    .line 104
    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    if-eqz v0, :cond_cd

    .line 106
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    goto/16 :goto_cd

    .line 110
    :cond_14
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_segment_delete:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mIsRecording:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetmaskView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mIsRecording:Z

    const/4 v4, 0x0

    if-nez v3, :cond_38

    const/16 v3, 0x8

    goto :goto_39

    :cond_38
    move v3, v4

    :goto_39
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 116
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    if-eqz v1, :cond_cd

    .line 119
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_thumbnail_item_size:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_thumbnail_item_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 120
    invoke-virtual {v2, v3, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    const-wide/16 v5, 0x0

    .line 122
    invoke-virtual {v2, v5, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v3, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 123
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 124
    invoke-virtual {v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 125
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestOptions;

    .line 127
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mCurrentAddPosition:I

    if-ne v3, p2, :cond_9d

    .line 128
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetthumbnailView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_9d
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V

    .line 134
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 152
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetthumbnailView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mOrientation:I

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mNeedAnimation:Z

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 153
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteLayout(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mOrientation:I

    invoke-virtual {v0, v1, v4}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 155
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->performMultiTouchEvent(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->performClickListener(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;I)V

    :cond_cd
    :goto_cd
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 99
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->free_shot_segment_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public remove(I)V
    .registers 4

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mNeedAnimation:Z

    const/4 v1, -0x1

    .line 244
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mCurrentAddPosition:I

    .line 245
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 246
    :goto_9
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_15

    .line 247
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mItemList:Ljava/util/List;

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mCurrentAddPosition:I

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mNeedAnimation:Z

    .line 67
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mbEnabled:Z

    return-void
.end method

.method public setEnable(ZZ)V
    .registers 3

    .line 77
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mbEnabled:Z

    if-eqz p2, :cond_a

    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mCurrentAddPosition:I

    .line 80
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method public setRecording(ZZ)V
    .registers 3

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mIsRecording:Z

    xor-int/lit8 p1, p1, 0x1

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->setEnable(ZZ)V

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 3

    .line 85
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mOrientation:I

    .line 86
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mNeedAnimation:Z

    const/4 p1, -0x1

    .line 87
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->mCurrentAddPosition:I

    .line 88
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
