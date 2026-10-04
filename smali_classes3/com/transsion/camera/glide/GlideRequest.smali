.class public Lcom/transsion/camera/glide/GlideRequest;
.super Lcom/bumptech/glide/RequestBuilder;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .registers 5

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 477
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 456
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequest;->clone()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequest;->clone()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/transsion/camera/glide/GlideRequest;
    .registers 1

    .line 575
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequest;->clone()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->decode(Ljava/lang/Class;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public decode(Ljava/lang/Class;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 231
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 105
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequest;->dontAnimate()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public dontAnimate()Lcom/transsion/camera/glide/GlideRequest;
    .registers 1

    .line 449
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 285
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->error(I)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public error(I)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 168
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->load(Ljava/io/File;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->load(Ljava/lang/Object;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->load(Ljava/lang/String;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->load([B)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/io/File;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 548
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public load(Ljava/lang/Object;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 513
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 534
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public load([B)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 569
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequest;->optionalCenterCrop()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public optionalCenterCrop()Lcom/transsion/camera/glide/GlideRequest;
    .registers 1

    .line 303
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequest;->optionalCenterInside()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public optionalCenterInside()Lcom/transsion/camera/glide/GlideRequest;
    .registers 1

    .line 339
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 1

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequest;->optionalFitCenter()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public optionalFitCenter()Lcom/transsion/camera/glide/GlideRequest;
    .registers 1

    .line 321
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->override(I)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/glide/GlideRequest;->override(II)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public override(I)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 204
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public override(II)Lcom/transsion/camera/glide/GlideRequest;
    .registers 3

    .line 195
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->placeholder(I)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public placeholder(I)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 132
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 123
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->priority(Lcom/bumptech/glide/Priority;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public priority(Lcom/bumptech/glide/Priority;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 114
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/glide/GlideRequest;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 3

    .line 222
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 213
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->sizeMultiplier(F)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public sizeMultiplier(F)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 69
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->skipMemoryCache(Z)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public skipMemoryCache(Z)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 186
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public transform(Lcom/bumptech/glide/load/Transformation;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 375
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 463
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequest;->useAnimationPool(Z)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public useAnimationPool(Z)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 87
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method
