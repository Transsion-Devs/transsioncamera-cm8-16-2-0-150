.class public final Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;

.field private static final MAX_FOLDER_SIZE:I = 0x3e800000

.field private static currentSize:J

.field private static files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static initialize:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized initialize()V
    .registers 7

    monitor-enter p0

    .line 22
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PathHelper;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->getWorkspacePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "file.listFiles()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager$initialize$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager$initialize$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->files:Ljava/util/List;

    if-nez v0, :cond_3d

    .line 29
    const-string v0, "files"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3d

    :catchall_3b
    move-exception v0

    goto :goto_66

    :cond_3d
    :goto_3d
    check-cast v0, Ljava/lang/Iterable;

    .line 78
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 30
    sget-wide v2, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->currentSize:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->currentSize:J

    goto :goto_43

    :cond_59
    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->initialize:Z
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_3b

    .line 33
    monitor-exit p0

    return-void

    .line 24
    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "worksapce folder not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_3b

    throw v0
.end method


# virtual methods
.method public final declared-synchronized addFile(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-boolean v0, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->initialize:Z

    if-nez v0, :cond_10

    .line 38
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->initialize()V

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_72

    .line 40
    :cond_10
    :goto_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 44
    sget-object p1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->files:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_26

    const-string p1, "files"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_26
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-wide v2, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->currentSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    sput-wide v2, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->currentSize:J

    .line 46
    :goto_32
    sget-wide v2, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->currentSize:J

    const-wide/32 v4, 0x3e800000

    cmp-long p1, v2, v4

    if-lez p1, :cond_68

    .line 47
    sget-object p1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->files:Ljava/util/List;

    if-nez p1, :cond_45

    const-string p1, "files"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_45
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 49
    sget-object v4, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    invoke-virtual {v4, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->safeDeleteFile(Ljava/io/File;)Z

    .line 50
    sget-wide v4, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->currentSize:J

    sub-long/2addr v4, v2

    sput-wide v4, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->currentSize:J

    .line 51
    sget-object p1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->files:Ljava/util/List;

    if-nez p1, :cond_64

    const-string p1, "files"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_64
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_e

    goto :goto_32

    .line 53
    :cond_68
    monitor-exit p0

    return-void

    .line 42
    :cond_6a
    :try_start_6a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "file to add not exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :goto_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_e

    throw p1
.end method

.method public final clearCache()V
    .registers 3

    .line 74
    sget-object p0, Lcom/bytedance/ies/cutsame/util/FileUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/FileUtils;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/prepare/PathHelper;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/prepare/PathHelper;->getWorkspacePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/cutsame/util/FileUtils;->safeDeleteFile(Ljava/io/File;)Z

    return-void
.end method

.method public final declared-synchronized queryFile(Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-boolean v0, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->initialize:Z

    if-nez v0, :cond_10

    .line 58
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->initialize()V

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_65

    .line 60
    :cond_10
    :goto_10
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->files:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    const-string v0, "files"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1b
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 63
    sget-object p1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->files:Ljava/util/List;

    if-nez p1, :cond_4e

    const-string p1, "files"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4e
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    sget-object p1, Lcom/bytedance/ies/cutsame/prepare/PrepareLruFolderManager;->files:Ljava/util/List;

    if-nez p1, :cond_5b

    const-string p1, "files"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5c

    :cond_5b
    move-object v1, p1

    :goto_5c
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_e

    .line 66
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 70
    :cond_62
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_65
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_e

    throw p1
.end method
