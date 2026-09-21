.class public Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;,
        Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$WriterWrapper;,
        Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x500000

.field private static volatile sInstance:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;


# instance fields
.field private final mDiskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->checkCachePath()V

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getVideoFrameCachePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "framecache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v1, 0x500000

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->get(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->mDiskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-void
.end method

.method private checkCachePath()V
    .registers 3

    .line 42
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getVideoFrameCachePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "framecache"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_14
    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;
    .registers 2

    .line 25
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->sInstance:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    if-nez v0, :cond_19

    .line 26
    const-class v0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    monitor-enter v0

    .line 27
    :try_start_7
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->sInstance:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    if-nez v1, :cond_15

    .line 28
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->sInstance:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 30
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 32
    :cond_19
    :goto_19
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->sInstance:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->mDiskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->mDiskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->delete(Lcom/bumptech/glide/load/Key;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->mDiskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;)V
    .registers 4

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;->mDiskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$WriterWrapper;

    invoke-direct {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$WriterWrapper;-><init>(Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;)V

    invoke-interface {p0, v0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    return-void
.end method
