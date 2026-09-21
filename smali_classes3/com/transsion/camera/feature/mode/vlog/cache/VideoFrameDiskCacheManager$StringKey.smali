.class Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringKey"
.end annotation


# instance fields
.field mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 96
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;

    if-eqz v0, :cond_f

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;->mKey:Ljava/lang/String;

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 3

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$StringKey;->mKey:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
