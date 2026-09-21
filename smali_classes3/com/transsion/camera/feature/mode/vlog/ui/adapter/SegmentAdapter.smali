.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;,
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final ACCESS_KEY:Ljava/lang/String; = "cut_same_key"

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private volatile mIsRecording:Z

.field private final mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

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
.method public static synthetic $r8$lambda$PqIQbOO37gOEFtI7JzaKOelvWTg(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->lambda$onBindViewHolder$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hFM14ILVJ1xbYxmxCn_8BzgFslA(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->lambda$onBindViewHolder$0(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mOrientation:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;I)V
    .registers 6

    .line 62
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mNeedAnimation:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mbEnabled:Z

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mIsRecording:Z

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

    .line 65
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mOrientation:I

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private formatSegmentDuration(F)Landroid/text/SpannableString;
    .registers 8

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_shoot_speed_unit:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%.1f"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 202
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x11

    .line 203
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 205
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p0

    invoke-direct {v2, p0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 205
    invoke-virtual {v1, v2, p0, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;Landroid/view/View;)V
    .registers 5

    .line 177
    invoke-static {p3}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_1d

    .line 180
    :cond_7
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mbEnabled:Z

    if-eqz p3, :cond_1d

    const-string p3, "cut_same_key"

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->canAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 181
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->updateCurrentPosition(IZ)V

    .line 182
    invoke-static {p3}, Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager;->reAccess(Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroid/view/View;)V
    .registers 3

    .line 188
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mbEnabled:Z

    if-nez p2, :cond_b

    goto :goto_10

    .line 192
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;->onItemDelete(I)V

    :cond_10
    :goto_10
    return-void
.end method

.method private updateCurrentPosition(IZ)V
    .registers 4

    .line 211
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    if-eq v0, p1, :cond_16

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;->onItemClick(IZ)V

    if-nez p2, :cond_13

    .line 215
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 216
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 219
    :cond_13
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    return-void

    :cond_16
    if-eqz p2, :cond_1e

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;->onItemClick(IZ)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 13

    .line 96
    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 98
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 99
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_16
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    const/4 v3, 0x0

    if-eqz v1, :cond_40

    .line 102
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_segment_delete:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetchoseSign(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_segment_transparent:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetduration(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 105
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v2

    iget-boolean v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mbEnabled:Z

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_75

    .line 108
    :cond_40
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_segment_delete_transparent:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    if-ne v4, p2, :cond_65

    .line 111
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetchoseSign(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_segment_ring:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetduration(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_75

    .line 114
    :cond_65
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetchoseSign(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/vlog/R$drawable;->ic_cutsame_segment_transparent:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetduration(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 119
    :goto_75
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetduration(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 120
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetduration(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_117

    .line 123
    new-instance v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v5}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_thumbnail_item_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_segment_thumbnail_item_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 124
    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetthumbnailView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemList:Ljava/util/List;

    .line 127
    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v6}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v6, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 128
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;

    .line 129
    invoke-virtual {v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;

    .line 130
    invoke-virtual {v5, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestOptions;

    .line 132
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    .line 133
    invoke-virtual {v6, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v6

    .line 134
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    const/16 v6, 0xc8

    .line 135
    invoke-static {v6}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade(I)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$1;

    invoke-direct {v6, p0, v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)V

    .line 136
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 155
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetduration(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetmaskView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mIsRecording:Z

    if-nez v6, :cond_112

    goto :goto_113

    :cond_112
    move v2, v3

    :goto_113
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_140

    .line 158
    :cond_117
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetthumbnailView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->formatSegmentDuration(F)Landroid/text/SpannableString;

    move-result-object v5

    .line 160
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetduration(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetmaskView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :goto_140
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetthumbnailView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v2

    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mOrientation:I

    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mNeedAnimation:Z

    invoke-virtual {v2, v5, v6}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 165
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdurationRoot(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object v2

    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mOrientation:I

    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mNeedAnimation:Z

    invoke-virtual {v2, v5, v6}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 166
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdeleteLayout(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object v2

    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mOrientation:I

    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mNeedAnimation:Z

    invoke-virtual {v2, v5, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    if-eqz v1, :cond_168

    .line 169
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    :cond_168
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v1, v2, v4}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 174
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mbEnabled:Z

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;ILcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 187
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;I)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetitemRoot(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 196
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 91
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->cut_same_segment_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$SegmentViewHolder;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCurrentPosition(IZ)V
    .registers 4

    .line 242
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-eqz p2, :cond_18

    .line 245
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter$ItemClickListener;->onItemClick(IZ)V

    .line 248
    :cond_18
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    if-eq p2, p1, :cond_21

    .line 249
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 250
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    :cond_21
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

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemList:Ljava/util/List;

    .line 71
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mbEnabled:Z

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 260
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mbEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 263
    :cond_5
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mbEnabled:Z

    .line 264
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRecording(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mIsRecording:Z

    xor-int/lit8 p1, p1, 0x1

    .line 256
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->setEnable(Z)V

    return-void
.end method

.method public switchToNextPosition()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 78
    :goto_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1d

    .line 79
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    move v1, v3

    :goto_1e
    if-eq v1, v3, :cond_21

    goto :goto_23

    .line 85
    :cond_21
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mCurrentPosition:I

    :goto_23
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->updateCurrentPosition(IZ)V

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 3

    .line 226
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mOrientation:I

    .line 227
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/SegmentAdapter;->mNeedAnimation:Z

    .line 228
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
