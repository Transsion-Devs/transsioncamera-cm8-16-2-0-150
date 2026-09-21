.class public final Lcom/bumptech/glide/load/Option;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/Option$CacheKeyUpdater;
    }
.end annotation


# static fields
.field private static final EMPTY_UPDATER:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;


# instance fields
.field private final cacheKeyUpdater:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

.field private final defaultValue:Ljava/lang/Object;

.field private final key:Ljava/lang/String;

.field private volatile keyBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/Option$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/Option$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/Option;->EMPTY_UPDATER:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/bumptech/glide/load/Option;->defaultValue:Ljava/lang/Object;

    .line 93
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    iput-object p1, p0, Lcom/bumptech/glide/load/Option;->cacheKeyUpdater:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    return-void
.end method

.method public static disk(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)Lcom/bumptech/glide/load/Option;
    .registers 4

    .line 86
    new-instance v0, Lcom/bumptech/glide/load/Option;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method

.method private static emptyUpdater()Lcom/bumptech/glide/load/Option$CacheKeyUpdater;
    .registers 1

    .line 138
    sget-object v0, Lcom/bumptech/glide/load/Option;->EMPTY_UPDATER:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    return-object v0
.end method

.method private getKeyBytes()[B
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    if-nez v0, :cond_e

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    .line 118
    :cond_e
    iget-object p0, p0, Lcom/bumptech/glide/load/Option;->keyBytes:[B

    return-object p0
.end method

.method public static memory(Ljava/lang/String;)Lcom/bumptech/glide/load/Option;
    .registers 4

    .line 47
    new-instance v0, Lcom/bumptech/glide/load/Option;

    const/4 v1, 0x0

    invoke-static {}, Lcom/bumptech/glide/load/Option;->emptyUpdater()Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method

.method public static memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;
    .registers 4

    .line 59
    new-instance v0, Lcom/bumptech/glide/load/Option;

    invoke-static {}, Lcom/bumptech/glide/load/Option;->emptyUpdater()Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/Option;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/Option$CacheKeyUpdater;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 123
    instance-of v0, p1, Lcom/bumptech/glide/load/Option;

    if-eqz v0, :cond_f

    .line 124
    check-cast p1, Lcom/bumptech/glide/load/Option;

    .line 125
    iget-object p0, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/bumptech/glide/load/Option;->defaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/Option;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/Option;->cacheKeyUpdater:Lcom/bumptech/glide/load/Option$CacheKeyUpdater;

    invoke-direct {p0}, Lcom/bumptech/glide/load/Option;->getKeyBytes()[B

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/bumptech/glide/load/Option$CacheKeyUpdater;->update([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method
