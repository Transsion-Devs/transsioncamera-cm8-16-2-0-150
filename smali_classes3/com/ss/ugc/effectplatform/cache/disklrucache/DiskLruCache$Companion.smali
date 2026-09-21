.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$renameTo(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->renameTo(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V

    return-void
.end method

.method private final deleteIfExists(Lbytekn/foundation/io/file/FilePathComponent;)V
    .registers 4

    .line 142
    sget-object p0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->remove(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_26

    .line 143
    :cond_f
    new-instance p0, Lbytekn/foundation/io/file/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete file exception occur,file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method private final renameTo(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V
    .registers 5

    if-eqz p3, :cond_5

    .line 134
    invoke-direct {p0, p2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->deleteIfExists(Lbytekn/foundation/io/file/FilePathComponent;)V

    .line 136
    :cond_5
    sget-object p0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {p0, p1, p2}, Lbytekn/foundation/io/file/FileManager;->renameFile(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result p0

    if-eqz p0, :cond_e

    return-void

    .line 137
    :cond_e
    new-instance p0, Lbytekn/foundation/io/file/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rename file exception occur, from = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",to = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final open(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;
    .registers 17

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_e5

    if-lez p3, :cond_dc

    .line 58
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v0, p1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v2

    const/4 v9, 0x1

    if-nez v2, :cond_3a

    .line 59
    invoke-virtual {v0, p1, v9}, Lbytekn/foundation/io/file/FileManager;->mkdir(Ljava/lang/String;Z)Z

    .line 60
    invoke-virtual {v0, p1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 61
    sget-object v3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache directory error"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "DiskLruCache"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 64
    :cond_3a
    new-instance v2, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-direct {v2, p1}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    const-string v3, "journal.bkp"

    invoke-virtual {v2, v3}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 65
    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 66
    new-instance v3, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-direct {v3, p1}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    const-string v4, "journal"

    invoke-virtual {v3, v4}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 67
    invoke-virtual {v0, v3}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 68
    invoke-virtual {v0, v3}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 69
    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->remove(Lbytekn/foundation/io/file/FilePathComponent;)Z

    goto :goto_70

    .line 71
    :cond_6a
    sget-object v4, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->renameTo(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V

    .line 78
    :cond_70
    :goto_70
    new-instance v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;-><init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v1

    .line 79
    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getJournalComponent$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 81
    :try_start_87
    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->readJournal()V
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$readJournal(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V

    .line 82
    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->processJournal()V
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$processJournal(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V

    .line 83
    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getInitialized$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_96} :catch_97

    return-object v2

    :catch_97
    move-exception v0

    .line 86
    sget-object v3, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 86
    const-string v4, "DiskLruCache"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 91
    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->delete()V

    .line 95
    :cond_c7
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v0, p1, v9}, Lbytekn/foundation/io/file/FileManager;->mkdir(Ljava/lang/String;Z)Z

    .line 96
    new-instance v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;-><init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$rebuildJournal(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V

    return-object v0

    .line 56
    :cond_dc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_e5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toDiskLruCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string p0, "fileName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [C

    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_49

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p0, v1

    const/16 v3, 0x41

    if-ge v2, v3, :cond_40

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_21

    goto :goto_40

    :cond_21
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_46

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_46

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_46

    const/16 v4, 0x61

    if-lt v2, v4, :cond_35

    const/16 v4, 0x7a

    if-le v2, v4, :cond_46

    :cond_35
    const/16 v4, 0x30

    if-lt v2, v4, :cond_3d

    const/16 v4, 0x39

    if-le v2, v4, :cond_46

    .line 112
    :cond_3d
    aput-char v3, p0, v1

    goto :goto_46

    .line 110
    :cond_40
    :goto_40
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, p0, v1

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 115
    :cond_49
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method
