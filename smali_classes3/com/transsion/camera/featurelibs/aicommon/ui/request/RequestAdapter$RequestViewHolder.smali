.class abstract Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestViewHolder"
.end annotation


# instance fields
.field protected final mDescription:Landroid/widget/TextView;

.field protected final mThumbnail:Landroid/widget/ImageView;

.field private final mThumbnailSize:I

.field private final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;


# direct methods
.method public static synthetic $r8$lambda$5fQi_KlqPUvsHFQmoYbiXfiX49U(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->lambda$bindView$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V
    .registers 5

    .line 268
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    .line 269
    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_thumbnail_size:I

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnailSize:I

    .line 274
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 275
    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_content_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mTitle:Landroid/widget/TextView;

    .line 276
    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_content_description:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mDescription:Landroid/widget/TextView;

    const/4 p2, 0x1

    .line 278
    invoke-virtual {v0, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 279
    new-instance p2, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder$1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private synthetic lambda$bindView$0()V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mDescription:Landroid/widget/TextView;

    if-eqz p0, :cond_d

    .line 325
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_d
    return-void
.end method


# virtual methods
.method bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V
    .registers 5

    const/4 v0, 0x6

    .line 291
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->getType()I

    move-result v1

    if-ne v0, v1, :cond_57

    .line 292
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getResponseJpegUri()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_fragment_list_item_thumbnail_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9d

    .line 297
    :cond_1e
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 298
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_fragment_list_item_thumbnail_place_holder:I

    .line 299
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_fragment_list_item_thumbnail_error:I

    .line 300
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CropTransformation;

    invoke-direct {v1, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CropTransformation;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    .line 301
    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnailSize:I

    .line 302
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 303
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_9d

    .line 306
    :cond_57
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getPreviewJpegPath()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_fragment_list_item_thumbnail_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9d

    .line 311
    :cond_6d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_fragment_list_item_thumbnail_place_holder:I

    .line 313
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_fragment_list_item_thumbnail_error:I

    .line 314
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnailSize:I

    .line 315
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 316
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 320
    :goto_9d
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-static {v1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$fgetmRequestOperator(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffectValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
