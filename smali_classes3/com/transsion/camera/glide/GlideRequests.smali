.class public Lcom/transsion/camera/glide/GlideRequests;
.super Lcom/bumptech/glide/RequestManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .registers 5

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequests;->as(Ljava/lang/Class;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public as(Ljava/lang/Class;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 5

    .line 39
    new-instance v0, Lcom/transsion/camera/glide/GlideRequest;

    iget-object v1, p0, Lcom/bumptech/glide/RequestManager;->glide:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/RequestManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/transsion/camera/glide/GlideRequest;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic asBitmap()Lcom/bumptech/glide/RequestBuilder;
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequests;->asBitmap()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public asBitmap()Lcom/transsion/camera/glide/GlideRequest;
    .registers 1

    .line 64
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic asDrawable()Lcom/bumptech/glide/RequestBuilder;
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/transsion/camera/glide/GlideRequests;->asDrawable()Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public asDrawable()Lcom/transsion/camera/glide/GlideRequest;
    .registers 1

    .line 78
    invoke-super {p0}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequests;->load(Ljava/io/File;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/transsion/camera/glide/GlideRequests;->load(Ljava/lang/String;)Lcom/transsion/camera/glide/GlideRequest;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/io/File;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 113
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method public load(Ljava/lang/String;)Lcom/transsion/camera/glide/GlideRequest;
    .registers 2

    .line 99
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/glide/GlideRequest;

    return-object p0
.end method

.method protected setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V
    .registers 3

    .line 167
    instance-of v0, p1, Lcom/transsion/camera/glide/GlideOptions;

    if-eqz v0, :cond_8

    .line 168
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    return-void

    .line 170
    :cond_8
    new-instance v0, Lcom/transsion/camera/glide/GlideOptions;

    invoke-direct {v0}, Lcom/transsion/camera/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/transsion/camera/glide/GlideOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/transsion/camera/glide/GlideOptions;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestManager;->setRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)V

    return-void
.end method
