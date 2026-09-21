.class public Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CACHE_NUM:I = 0x78

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sLruFrameCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_LruFrame"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 18
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache$1;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache$1;-><init>(I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->sLruFrameCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .registers 1

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->sLruFrameCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->sLruFrameCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/cache/LruFrameBitmapCache;->sLruFrameCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
