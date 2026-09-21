.class public Lcom/bef/byteeffect/EffectSDKUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static assetFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static localFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static needRemoveFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    .line 20
    sget-object v0, Lcom/bef/byteeffect/ModelsList;->list:Ljava/util/List;

    sput-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->assetFiles:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->needRemoveFiles:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/Closeable;)V
    .registers 1

    .line 17
    invoke-static {p0}, Lcom/bef/byteeffect/EffectSDKUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_8

    .line 242
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    return-void

    :catch_6
    move-exception p0

    .line 244
    throw p0

    :cond_8
    return-void
.end method

.method private static copyAssets(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 11

    .line 112
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->needRemoveFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 113
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->needRemoveFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 115
    :cond_d
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->needRemoveFiles:Ljava/util/Set;

    sget-object v1, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 116
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_2b
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->assetFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    invoke-static {v1}, Lcom/bef/byteeffect/EffectSDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    sget-object v3, Lcom/bef/byteeffect/EffectSDKUtils;->needRemoveFiles:Ljava/util/Set;

    new-instance v4, Lcom/bef/byteeffect/EffectSDKUtils$2;

    invoke-direct {v4, v2}, Lcom/bef/byteeffect/EffectSDKUtils$2;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/bef/byteeffect/EffectSDKUtils;->takeFirstMatchingOrNull(Ljava/util/Set;Ljava/io/FileFilter;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 131
    new-instance v4, Ljava/io/File;

    invoke-static {v1}, Lcom/bef/byteeffect/EffectSDKUtils;->getAssetRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 132
    sget-object v1, Lcom/bef/byteeffect/EffectSDKUtils;->needRemoveFiles:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_63
    const/4 v3, 0x0

    if-eqz p2, :cond_7d

    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 139
    array-length v4, p2

    move v5, v3

    :goto_6e
    if-ge v5, v4, :cond_7d

    aget-object v6, p2, v5

    .line 140
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    const/4 v3, 0x1

    goto :goto_7d

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :cond_7d
    :goto_7d
    if-eqz v3, :cond_84

    if-eqz p3, :cond_84

    .line 147
    invoke-static {p0, v1, p1}, Lcom/bef/byteeffect/EffectSDKUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    if-nez v3, :cond_31

    if-nez p3, :cond_31

    .line 150
    invoke-static {p0, v1, p1}, Lcom/bef/byteeffect/EffectSDKUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_8c
    return-void
.end method

.method private static copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 158
    const-string v0, "/"

    const/4 v1, 0x0

    .line 161
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9c

    .line 163
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "model"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 164
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_5c

    .line 167
    :cond_3c
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not mkdirs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_57
    move-exception p1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_9e

    .line 170
    :cond_5c
    :goto_5c
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/bef/byteeffect/EffectSDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_57

    const/16 p2, 0x400

    .line 172
    :try_start_7e
    new-array p2, p2, [B

    .line 174
    :goto_80
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_90

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_8b

    goto :goto_80

    :catchall_8b
    move-exception p2

    move-object v1, p0

    move-object p0, p1

    move-object p1, p2

    goto :goto_9e

    .line 179
    :cond_90
    :try_start_90
    invoke-static {p0}, Lcom/bef/byteeffect/EffectSDKUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_97

    .line 181
    invoke-static {p1}, Lcom/bef/byteeffect/EffectSDKUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_97
    move-exception p0

    invoke-static {p1}, Lcom/bef/byteeffect/EffectSDKUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    throw p0

    :catchall_9c
    move-exception p1

    move-object p0, v1

    .line 179
    :goto_9e
    :try_start_9e
    invoke-static {v1}, Lcom/bef/byteeffect/EffectSDKUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a5

    .line 181
    invoke-static {p0}, Lcom/bef/byteeffect/EffectSDKUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 183
    throw p1

    :catchall_a5
    move-exception p1

    .line 181
    invoke-static {p0}, Lcom/bef/byteeffect/EffectSDKUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    throw p1
.end method

.method private static deleteNoUseModel()V
    .registers 3

    .line 217
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 218
    sget-object v2, Lcom/bef/byteeffect/EffectSDKUtils;->needRemoveFiles:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_6

    :cond_24
    return-void
.end method

.method public static flushAlgorithmModelFiles(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 24
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 27
    :cond_d
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/bef/byteeffect/EffectSDKUtils;->scanRecursive(Ljava/lang/String;Ljava/util/Set;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-static {p0, p1, v0, v1}, Lcom/bef/byteeffect/EffectSDKUtils;->copyAssets(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 29
    invoke-static {}, Lcom/bef/byteeffect/EffectSDKUtils;->deleteNoUseModel()V

    .line 30
    sget-object p0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static flushAlgorithmModelFiles(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 5

    .line 41
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 42
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 44
    :cond_d
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/bef/byteeffect/EffectSDKUtils;->scanRecursive(Ljava/lang/String;Ljava/util/Set;)V

    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/bef/byteeffect/EffectSDKUtils;->copyAssets(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 46
    invoke-static {}, Lcom/bef/byteeffect/EffectSDKUtils;->deleteNoUseModel()V

    .line 47
    sget-object p0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private static getAssetRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 205
    const-string v0, "model/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    add-int/lit8 v0, v0, 0x6

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_12
    return-object p0
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 188
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    add-int/lit8 v0, v0, 0x1

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_14
    const-string p0, ""

    return-object p0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .registers 1

    .line 251
    invoke-static {}, Lcom/bef/byteeffect/EffectSDKUtils;->nativeGetSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeGetSdkVersion()Ljava/lang/String;
.end method

.method public static needUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 73
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 74
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 76
    :cond_d
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/bef/byteeffect/EffectSDKUtils;->scanRecursive(Ljava/lang/String;Ljava/util/Set;)V

    const/4 p1, 0x1

    .line 78
    :try_start_13
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->assetFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_22

    return p1

    .line 79
    :cond_22
    sget-object v0, Lcom/bef/byteeffect/EffectSDKUtils;->assetFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    sget-object v2, Lcom/bef/byteeffect/EffectSDKUtils;->localFiles:Ljava/util/Set;

    new-instance v3, Lcom/bef/byteeffect/EffectSDKUtils$1;

    invoke-direct {v3, v1, p0}, Lcom/bef/byteeffect/EffectSDKUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/bef/byteeffect/EffectSDKUtils;->takeFirstMatchingOrNull(Ljava/util/Set;Ljava/io/FileFilter;)Ljava/io/File;

    move-result-object v1
    :try_end_3f
    .catchall {:try_start_13 .. :try_end_3f} :catchall_42

    if-nez v1, :cond_28

    return p1

    :catchall_42
    move-exception p0

    goto :goto_46

    :cond_44
    const/4 p0, 0x0

    return p0

    .line 105
    :goto_46
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p1
.end method

.method private static scanRecursive(Ljava/lang/String;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_2c

    .line 53
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 55
    array-length v0, p0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2c

    aget-object v2, p0, v1

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/bef/byteeffect/EffectSDKUtils;->scanRecursive(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_29

    .line 59
    :cond_26
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2c
    :goto_2c
    return-void
.end method

.method private static takeFirstMatchingOrNull(Ljava/util/Set;Ljava/io/FileFilter;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 227
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 228
    invoke-interface {p1, v0}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method
