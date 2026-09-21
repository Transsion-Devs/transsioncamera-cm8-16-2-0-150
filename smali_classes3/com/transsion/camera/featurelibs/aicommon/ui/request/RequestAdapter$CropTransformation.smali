.class Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CropTransformation;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CropTransformation"
.end annotation


# instance fields
.field private final mRequestItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V
    .registers 2

    .line 230
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CropTransformation;->mRequestItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    return-void
.end method


# virtual methods
.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CropTransformation;->mRequestItem:Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ai/AIRequest;->getWatermark()Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    return-object p2

    .line 240
    :cond_13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 241
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-le p0, p1, :cond_26

    int-to-float p1, p1

    int-to-float p3, p0

    const p4, 0x3db425ed

    :goto_22
    mul-float/2addr p3, p4

    sub-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_2c

    :cond_26
    int-to-float p1, p1

    int-to-float p3, p0

    const p4, 0x3dd6480f

    goto :goto_22

    :goto_2c
    const/4 p3, 0x0

    .line 248
    invoke-static {p2, p3, p3, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 2

    .line 253
    const-string p0, "CropTransformation"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
