.class Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$KeyPool;
.super Lcom/transsion/camera/utils/bitmap_recycle/BaseKeyPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/utils/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Lcom/transsion/camera/utils/bitmap_recycle/Poolable;
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$KeyPool;->create()Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object p0

    return-object p0
.end method

.method protected create()Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;
    .registers 2

    .line 190
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;-><init>(Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$KeyPool;)V

    return-object v0
.end method

.method public get(ILandroid/graphics/Bitmap$Config;)Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;
    .registers 3

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/utils/bitmap_recycle/BaseKeyPool;->get()Lcom/transsion/camera/utils/bitmap_recycle/Poolable;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/bitmap_recycle/SizeConfigStrategy$Key;->init(ILandroid/graphics/Bitmap$Config;)V

    return-object p0
.end method
