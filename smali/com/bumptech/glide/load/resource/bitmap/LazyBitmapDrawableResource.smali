.class public final Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;
.implements Lcom/bumptech/glide/load/engine/Initializable;


# instance fields
.field private final bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->resources:Landroid/content/res/Resources;

    .line 59
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    return-void
.end method

.method public static obtain(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/Resource;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroid/graphics/drawable/BitmapDrawable;
    .registers 3

    .line 71
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->resources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 19
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->get()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .registers 1

    .line 65
    const-class p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result p0

    return p0
.end method

.method public initialize()V
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    instance-of v0, p0, Lcom/bumptech/glide/load/engine/Initializable;

    if-eqz v0, :cond_b

    .line 87
    check-cast p0, Lcom/bumptech/glide/load/engine/Initializable;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Initializable;->initialize()V

    :cond_b
    return-void
.end method

.method public recycle()V
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/LazyBitmapDrawableResource;->bitmapResource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    return-void
.end method
