.class Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$WriterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriterWrapper"
.end annotation


# instance fields
.field private final mWriter:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$WriterWrapper;->mWriter:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;

    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$WriterWrapper;->mWriter:Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;->write(Ljava/io/File;)Z

    move-result p0

    return p0
.end method
