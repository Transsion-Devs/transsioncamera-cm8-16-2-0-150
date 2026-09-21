.class final Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/bitmap_recycle/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private final pool:Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field size:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$KeyPool;)V
    .registers 2

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->pool:Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$KeyPool;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 228
    instance-of v0, p1, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 229
    check-cast p1, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;

    .line 230
    iget v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    iget v2, p1, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    if-ne v0, v2, :cond_19

    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/bitmap_recycle/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 237
    iget v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    mul-int/lit8 v0, v0, 0x1f

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    add-int/2addr v0, p0

    return v0
.end method

.method public init(ILandroid/graphics/Bitmap$Config;)V
    .registers 3

    .line 212
    iput p1, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 213
    iput-object p2, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public offer()V
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->pool:Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/bitmap_recycle/BaseKeyPool;->offer(Lcom/transsion/camera/utils/bitmap_recycle/Poolable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 223
    iget v0, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    iget-object p0, p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
