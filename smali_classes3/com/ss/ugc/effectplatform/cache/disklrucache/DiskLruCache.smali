.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;,
        Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;,
        Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;,
        Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

.field private static final LEGAL_KEY_PATTERN:Lkotlin/text/Regex;


# instance fields
.field private final appVersion:I

.field private final classLock:Lbytekn/foundation/concurrent/lock/Lock;

.field private final cleanUpRunnable:Ljava/lang/Runnable;

.field private closed:Lbytekn/foundation/concurrent/SharedReference;

.field private final directory:Ljava/lang/String;

.field private final executorService:Lbytekn/foundation/concurrent/executor/AsyncExecutor;

.field private final iAllowListKeyRule:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

.field private initialized:Lbytekn/foundation/concurrent/SharedReference;

.field private final journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

.field private final journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

.field private final journalTmpComponent:Lbytekn/foundation/io/file/FilePathComponent;

.field private journalWriter:Lbytekn/foundation/concurrent/SharedReference;

.field private final lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

.field private maxSize:J

.field private nextSequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

.field private redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

.field private size:Lbytekn/foundation/concurrent/SharedReference;

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    .line 44
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[a-z0-9._-]{1,120}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;)V
    .registers 7

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;

    iput p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->appVersion:I

    iput p3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    iput-wide p4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->maxSize:J

    iput-object p6, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->iAllowListKeyRule:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

    .line 152
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    const-wide/16 p3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p2, p3}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->size:Lbytekn/foundation/concurrent/SharedReference;

    .line 153
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p2, p5}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    .line 154
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    .line 155
    new-instance p2, Lbytekn/foundation/concurrent/lock/Lock;

    invoke-direct {p2}, Lbytekn/foundation/concurrent/lock/Lock;-><init>()V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 157
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    sget-object p6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, p6}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;

    .line 158
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {p2, p6}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;

    .line 165
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {p2, p3}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->nextSequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

    .line 167
    new-instance p2, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 p3, 0x1

    invoke-direct {p2, p4, p3, p5}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    .line 169
    new-instance p2, Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    invoke-direct {p2}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;-><init>()V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->executorService:Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    .line 170
    new-instance p2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;

    invoke-direct {p2, p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;-><init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->cleanUpRunnable:Ljava/lang/Runnable;

    .line 193
    new-instance p2, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-direct {p2, p1}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    const-string p3, "journal"

    invoke-virtual {p2, p3}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p2

    if-nez p2, :cond_72

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_72
    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    .line 194
    new-instance p2, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-direct {p2, p1}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    const-string p3, "journal.tmp"

    invoke-virtual {p2, p3}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p2

    if-nez p2, :cond_84

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_84
    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalTmpComponent:Lbytekn/foundation/io/file/FilePathComponent;

    .line 195
    new-instance p2, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-direct {p2, p1}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    const-string p1, "journal.bkp"

    invoke-virtual {p2, p1}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p1

    if-nez p1, :cond_96

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_96
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;-><init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;)V

    return-void
.end method

.method public static final synthetic access$completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public static final synthetic access$getClassLock$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/lock/Lock;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    return-object p0
.end method

.method public static final synthetic access$getClosed$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public static final synthetic access$getDirectory$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getInitialized$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public static final synthetic access$getJournalComponent$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/io/file/FilePathComponent;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    return-object p0
.end method

.method public static final synthetic access$getRedundantOpCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public static final synthetic access$getValueCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    return p0
.end method

.method public static final synthetic access$journalRebuildRequired(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Z
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$processJournal(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->processJournal()V

    return-void
.end method

.method public static final synthetic access$readJournal(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->readJournal()V

    return-void
.end method

.method public static final synthetic access$rebuildJournal(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method public static final synthetic access$trimToSize(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method private final checkNotClosed()V
    .registers 2

    .line 722
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->isClosed()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 723
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V
    .registers 13

    .line 474
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 475
    :try_start_5
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->getEntry()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    move-result-object v1

    .line 476
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    const/4 v2, 0x0

    if-eqz p2, :cond_78

    .line 480
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getReadable()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v3

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_78

    .line 481
    iget v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    move v4, v2

    :goto_2f
    if-ge v4, v3, :cond_78

    .line 482
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->getWritten()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v5

    invoke-virtual {v5}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_5e

    .line 487
    invoke-virtual {v1, v4}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v5

    if-eqz v5, :cond_5b

    sget-object v5, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v1, v4}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 488
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_58

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :catchall_58
    move-exception p0

    goto/16 :goto_1ce

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 484
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->abort()V

    .line 485
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 493
    :cond_78
    iget p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    :goto_7a
    if-ge v2, p1, :cond_dd

    .line 494
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v3

    if-eqz v3, :cond_da

    if-eqz p2, :cond_d5

    .line 497
    sget-object v4, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v4, v3}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 498
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v5

    .line 499
    invoke-virtual {v4, v3, v5}, Lbytekn/foundation/io/file/FileManager;->renameFile(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;)Z

    .line 500
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Lbytekn/foundation/collections/SharedMutableList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbytekn/foundation/collections/SharedMutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 501
    invoke-virtual {v4, v5}, Lbytekn/foundation/io/file/FileManager;->file(Lbytekn/foundation/io/file/FilePathComponent;)Lbytekn/foundation/io/file/FileMeta;

    move-result-object v3

    if-eqz v3, :cond_b2

    invoke-virtual {v3}, Lbytekn/foundation/io/file/FileMeta;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_b2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_b4

    :cond_b2
    const-wide/16 v3, 0x0

    .line 502
    :goto_b4
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Lbytekn/foundation/collections/SharedMutableList;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Lbytekn/foundation/collections/SharedMutableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->size:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v5}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    goto :goto_da

    .line 506
    :cond_d5
    sget-object v4, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    invoke-virtual {v4, v3}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Lbytekn/foundation/io/file/FilePathComponent;)Z

    :cond_da
    :goto_da
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 510
    :cond_dd
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 511
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 512
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getReadable()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_168

    .line 513
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getReadable()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 514
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz p1, :cond_142

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    :cond_142
    if-eqz p2, :cond_196

    .line 516
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->nextSequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getSequenceNumber()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->nextSequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    goto :goto_196

    .line 520
    :cond_168
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz p1, :cond_196

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 523
    :cond_196
    :goto_196
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz p1, :cond_1a3

    invoke-virtual {p1}, Lbytekn/foundation/io/file/KnFileWriter;->flush()V

    .line 524
    :cond_1a3
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->size:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->maxSize:J

    cmp-long p1, p1, v1

    if-gtz p1, :cond_1bb

    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_1c2

    .line 525
    :cond_1bb
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->executorService:Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->cleanUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->execute(Ljava/lang/Runnable;)V

    .line 527
    :cond_1c2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c4
    .catchall {:try_start_5e .. :try_end_1c4} :catchall_58

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    .line 477
    :cond_1c8
    :try_start_1c8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_1ce
    .catchall {:try_start_1c8 .. :try_end_1ce} :catchall_58

    .line 8
    :goto_1ce
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method private final edit(Ljava/lang/String;J)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;
    .registers 10

    .line 791
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 792
    :try_start_5
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialize()V

    .line 793
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 794
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 798
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1, p1}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3c

    if-eqz v1, :cond_38

    .line 800
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getSequenceNumber()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_35

    cmp-long p2, v4, p2

    if-eqz p2, :cond_3c

    goto :goto_38

    :catchall_35
    move-exception p0

    goto/16 :goto_d0

    .line 8
    :cond_38
    :goto_38
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object v3

    :cond_3c
    if-nez v1, :cond_49

    .line 805
    :try_start_3e
    new-instance v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;-><init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Ljava/lang/String;)V

    .line 806
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 807
    :cond_49
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p2

    invoke-virtual {p2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_74

    .line 808
    sget-object p0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string p2, "DiskLruCache"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is now in editing, return null!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_3e .. :try_end_70} :catchall_35

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object v3

    .line 811
    :cond_74
    :goto_74
    :try_start_74
    new-instance p2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    invoke-direct {p2, p0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;-><init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;)V

    .line 812
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p3

    invoke-virtual {p3, p2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 816
    iget-object p3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz p3, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIRTY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 817
    :cond_a3
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz p0, :cond_b0

    invoke-virtual {p0}, Lbytekn/foundation/io/file/KnFileWriter;->flush()V
    :try_end_b0
    .catchall {:try_start_74 .. :try_end_b0} :catchall_35

    .line 8
    :cond_b0
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object p2

    .line 795
    :cond_b4
    :try_start_b4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "keys must match regex [a-z0-9._-]{1,120}: \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 795
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d0
    .catchall {:try_start_b4 .. :try_end_d0} :catchall_35

    .line 8
    :goto_d0
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method private final initialize()V
    .registers 9

    .line 670
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 673
    :cond_f
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 675
    :try_start_14
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 677
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 678
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->remove(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_5d

    .line 679
    :cond_37
    new-instance v0, Lbytekn/foundation/io/file/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lbytekn/foundation/io/file/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_50
    move-exception v0

    move-object p0, v0

    goto :goto_c9

    .line 682
    :cond_53
    sget-object v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    const/4 v5, 0x0

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->renameTo(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->access$renameTo(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V

    .line 687
    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v0
    :try_end_63
    .catchall {:try_start_14 .. :try_end_63} :catchall_50

    if-eqz v0, :cond_b9

    .line 689
    :try_start_65
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->readJournal()V

    .line 690
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->processJournal()V

    .line 691
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V
    :try_end_72
    .catch Lbytekn/foundation/io/file/IOException; {:try_start_65 .. :try_end_72} :catch_76
    .catchall {:try_start_65 .. :try_end_72} :catchall_50

    .line 8
    :try_start_72
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V
    :try_end_75
    .catch Lbytekn/foundation/io/file/IOException; {:try_start_72 .. :try_end_75} :catch_76

    return-void

    :catch_76
    move-exception v0

    .line 694
    :try_start_77
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const-string v3, "DiskLruCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 694
    invoke-static/range {v2 .. v7}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_a5
    .catchall {:try_start_77 .. :try_end_a5} :catchall_50

    .line 707
    :try_start_a5
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->delete()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_b0

    .line 709
    :try_start_a8
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    goto :goto_b9

    :catchall_b0
    move-exception v0

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    throw v0

    .line 712
    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->rebuildJournal()V

    .line 713
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 714
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c5
    .catchall {:try_start_a8 .. :try_end_c5} :catchall_50

    .line 8
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :goto_c9
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method private final isClosed()Z
    .registers 1

    .line 718
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final journalRebuildRequired()Z
    .registers 3

    .line 616
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_26

    .line 617
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p0}, Lbytekn/foundation/collections/SharedMutableMap;->size()I

    move-result p0

    if-lt v0, p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private final processJournal()V
    .registers 10

    .line 328
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalTmpComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->remove(Lbytekn/foundation/io/file/FilePathComponent;)Z

    .line 329
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0}, Lbytekn/foundation/collections/SharedMutableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 330
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    .line 332
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_51

    .line 333
    iget v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    :goto_2a
    if-ge v3, v2, :cond_11

    .line 334
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->size:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v4}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Lbytekn/foundation/collections/SharedMutableList;

    move-result-object v7

    invoke-virtual {v7, v3}, Lbytekn/foundation/collections/SharedMutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 337
    :cond_51
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 338
    iget v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    :goto_5b
    if-ge v3, v2, :cond_70

    .line 339
    sget-object v4, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    invoke-virtual {v1, v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Lbytekn/foundation/io/file/FilePathComponent;)Z

    .line 340
    invoke-virtual {v1, v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Lbytekn/foundation/io/file/FilePathComponent;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 342
    :cond_70
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_74
    return-void
.end method

.method private final readJournal()V
    .registers 10

    .line 240
    const-string v0, ", "

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    .line 241
    sget-object v2, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v2, v1}, Lbytekn/foundation/io/file/FileManager;->openFileInputStream(Lbytekn/foundation/io/file/FilePathComponent;)Lbytekn/foundation/io/file/FileInputStream;

    move-result-object v4

    if-eqz v4, :cond_e1

    .line 244
    new-instance v3, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;

    sget-object v6, Lbytekn/foundation/io/file/ContentEncoding;->Ascii:Lbytekn/foundation/io/file/ContentEncoding;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;-><init>(Lbytekn/foundation/io/file/FileInputStream;ILbytekn/foundation/io/file/ContentEncoding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 246
    :try_start_16
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 252
    const-string v7, "libcore.io.DiskLruCache"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    const-string v7, "1"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 251
    iget v7, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 252
    iget v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    const-string v4, ""

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_58} :catch_88
    .catchall {:try_start_16 .. :try_end_58} :catchall_6b

    if-eqz v4, :cond_ab

    const/4 v0, 0x0

    .line 259
    :goto_5b
    :try_start_5b
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 260
    invoke-direct {p0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->readJournalLine(Ljava/lang/String;)Z

    move-result v1
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_65} :catch_6e
    .catchall {:try_start_5b .. :try_end_65} :catchall_6b

    if-nez v1, :cond_68

    goto :goto_6e

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    :catchall_6b
    move-exception v0

    move-object p0, v0

    goto :goto_db

    .line 268
    :catch_6e
    :cond_6e
    :goto_6e
    :try_start_6e
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v2}, Lbytekn/foundation/collections/SharedMutableMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/StrictLineReader;->hasUnterminatedLine()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 273
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->rebuildJournal()V

    goto :goto_a5

    :catch_88
    move-exception v0

    move-object p0, v0

    goto :goto_da

    .line 275
    :cond_8b
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    new-instance v1, Lbytekn/foundation/io/file/KnFileOutStreamWriter;

    .line 276
    sget-object v2, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream(Lbytekn/foundation/io/file/FilePathComponent;Z)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object p0

    if-nez p0, :cond_9d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9d
    sget-object v2, Lbytekn/foundation/io/file/ContentEncoding;->Ascii:Lbytekn/foundation/io/file/ContentEncoding;

    .line 275
    invoke-direct {v1, p0, v2}, Lbytekn/foundation/io/file/KnFileOutStreamWriter;-><init>(Lbytekn/foundation/io/file/FileOutputStream;Lbytekn/foundation/io/file/ContentEncoding;)V

    invoke-static {v0, v1}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a5} :catch_88
    .catchall {:try_start_6e .. :try_end_a5} :catchall_6b

    .line 281
    :goto_a5
    sget-object p0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {p0, v3}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V

    return-void

    .line 253
    :cond_ab
    :try_start_ab
    new-instance p0, Lbytekn/foundation/io/file/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-direct {p0, v0}, Lbytekn/foundation/io/file/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_da} :catch_88
    .catchall {:try_start_ab .. :try_end_da} :catchall_6b

    .line 279
    :goto_da
    :try_start_da
    throw p0
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_6b

    .line 281
    :goto_db
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v0, v3}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V

    throw p0

    :cond_e1
    return-void
.end method

.method private final readJournalLine(Ljava/lang/String;)Z
    .registers 21

    move-object/from16 v0, p0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    .line 287
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-ne v7, v9, :cond_13

    return v8

    :cond_13
    add-int/lit8 v3, v7, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v4, 0x0

    move-object/from16 v1, p1

    .line 292
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 294
    const-string v4, "(this as java.lang.String).substring(startIndex)"

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v2, v9, :cond_49

    if-eqz v1, :cond_43

    .line 295
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x6

    if-ne v7, v12, :cond_54

    .line 296
    const-string v12, "REMOVE"

    invoke-static {v1, v12, v8, v6, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_54

    .line 297
    iget-object v0, v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0, v3}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v10

    .line 295
    :cond_43
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    if-eqz v1, :cond_e7

    .line 301
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v12, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    :cond_54
    iget-object v12, v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v12, v3}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    if-nez v12, :cond_68

    .line 305
    new-instance v12, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    invoke-direct {v12, v0, v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;-><init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Ljava/lang/String;)V

    .line 306
    iget-object v13, v0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-interface {v13, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    const/4 v3, 0x5

    if-eq v2, v9, :cond_be

    if-ne v7, v3, :cond_be

    .line 308
    const-string v13, "CLEAN"

    invoke-static {v1, v13, v8, v6, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_be

    add-int/2addr v2, v10

    if-eqz v1, :cond_b8

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 38
    new-array v1, v8, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 309
    check-cast v0, [Ljava/lang/String;

    .line 310
    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getReadable()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v1

    invoke-virtual {v1, v11}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v12, v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    goto :goto_e5

    .line 38
    :cond_b0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_b8
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_be
    if-ne v2, v9, :cond_d7

    if-ne v7, v3, :cond_d7

    .line 313
    const-string v3, "DIRTY"

    invoke-static {v1, v3, v8, v6, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 314
    invoke-virtual {v12}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v1

    new-instance v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    invoke-direct {v2, v0, v12}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;-><init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;)V

    invoke-virtual {v1, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    goto :goto_e5

    :cond_d7
    if-ne v2, v9, :cond_e6

    const/4 v0, 0x4

    if-ne v7, v0, :cond_e6

    .line 315
    const-string v0, "READ"

    invoke-static {v1, v0, v8, v6, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    goto :goto_e6

    :cond_e5
    :goto_e5
    return v10

    :cond_e6
    :goto_e6
    return v8

    .line 301
    :cond_e7
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final rebuildJournal()V
    .registers 9

    .line 352
    const-string v0, "\n"

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 353
    :try_start_7
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lbytekn/foundation/io/file/KnFileWriter;->close()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_18

    :catchall_15
    move-exception p0

    goto/16 :goto_112

    :cond_18
    :goto_18
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 355
    :try_start_1b
    sget-object v5, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalTmpComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-static {v5, v6, v4, v3, v2}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream$default(Lbytekn/foundation/io/file/FileManager;Lbytekn/foundation/io/file/FilePathComponent;ZILjava/lang/Object;)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_24
    .catchall {:try_start_1b .. :try_end_23} :catchall_15

    goto :goto_31

    .line 357
    :catch_24
    :try_start_24
    sget-object v5, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalTmpComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v5, v6}, Lbytekn/foundation/io/file/FileManager;->touch(Lbytekn/foundation/io/file/FilePathComponent;)Z

    .line 358
    iget-object v6, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalTmpComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-static {v5, v6, v4, v3, v2}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream$default(Lbytekn/foundation/io/file/FileManager;Lbytekn/foundation/io/file/FilePathComponent;ZILjava/lang/Object;)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object v2

    :goto_31
    if-eqz v2, :cond_10e

    .line 363
    new-instance v3, Lbytekn/foundation/io/file/KnFileOutStreamWriter;

    sget-object v5, Lbytekn/foundation/io/file/ContentEncoding;->Ascii:Lbytekn/foundation/io/file/ContentEncoding;

    invoke-direct {v3, v2, v5}, Lbytekn/foundation/io/file/KnFileOutStreamWriter;-><init>(Lbytekn/foundation/io/file/FileOutputStream;Lbytekn/foundation/io/file/ContentEncoding;)V
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_15

    .line 365
    :try_start_3a
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v3, v2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3, v0}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 367
    const-string v2, "1"

    invoke-virtual {v3, v2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3, v0}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 369
    iget v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3, v0}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 371
    iget v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v3, v0}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v3, v0}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0}, Lbytekn/foundation/collections/SharedMutableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    .line 375
    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v5

    invoke-virtual {v5}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0xa

    if-eqz v5, :cond_a5

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DIRTY "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    goto :goto_6f

    :catchall_a3
    move-exception p0

    goto :goto_10a

    .line 378
    :cond_a5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLEAN "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_3a .. :try_end_c7} :catchall_a3

    goto :goto_6f

    .line 382
    :cond_c8
    :try_start_c8
    invoke-virtual {v3}, Lbytekn/foundation/io/file/KnFileWriter;->close()V

    .line 385
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_df

    .line 386
    sget-object v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    iget-object v5, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->renameTo(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V
    invoke-static {v2, v5, v6, v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->access$renameTo(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V

    .line 389
    :cond_df
    sget-object v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->Companion:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;

    iget-object v5, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalTmpComponent:Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v6, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->renameTo(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V
    invoke-static {v2, v5, v6, v4}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;->access$renameTo(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Companion;Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Z)V

    .line 391
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalBackupComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, v2}, Lbytekn/foundation/io/file/FileManager;->remove(Lbytekn/foundation/io/file/FilePathComponent;)Z

    .line 393
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    new-instance v4, Lbytekn/foundation/io/file/KnFileOutStreamWriter;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, p0, v3}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream(Lbytekn/foundation/io/file/FilePathComponent;Z)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object p0

    if-nez p0, :cond_fc

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_fc
    sget-object v0, Lbytekn/foundation/io/file/ContentEncoding;->Ascii:Lbytekn/foundation/io/file/ContentEncoding;

    invoke-direct {v4, p0, v0}, Lbytekn/foundation/io/file/KnFileOutStreamWriter;-><init>(Lbytekn/foundation/io/file/FileOutputStream;Lbytekn/foundation/io/file/ContentEncoding;)V

    invoke-static {v2, v4}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V

    .line 394
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_106
    .catchall {:try_start_c8 .. :try_end_106} :catchall_15

    .line 8
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    .line 382
    :goto_10a
    :try_start_10a
    invoke-virtual {v3}, Lbytekn/foundation/io/file/KnFileWriter;->close()V

    throw p0
    :try_end_10e
    .catchall {:try_start_10a .. :try_end_10e} :catchall_15

    .line 8
    :cond_10e
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :goto_112
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method private final trimToSize()V
    .registers 7

    .line 431
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->size:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5b

    .line 432
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0}, Lbytekn/foundation/collections/SharedMutableMap;->size()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1}, Lbytekn/foundation/collections/SharedMutableMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 435
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 437
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->iAllowListKeyRule:Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;->isAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_42
    sub-int/2addr v0, v2

    const/16 v1, 0xa

    if-ge v0, v1, :cond_51

    .line 441
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    const/4 v2, 0x2

    int-to-long v4, v2

    mul-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->setMaxSize(J)V

    .line 442
    :cond_51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_5b
    return-void
.end method

.method private final validateKey(Ljava/lang/String;)Z
    .registers 2

    .line 410
    sget-object p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->LEGAL_KEY_PATTERN:Lkotlin/text/Regex;

    invoke-virtual {p0, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addEntryToCache(Ljava/lang/String;)Z
    .registers 13

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 538
    :try_start_a
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 539
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_176

    .line 543
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1, p1}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    .line 545
    new-instance v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;-><init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Ljava/lang/String;)V

    .line 546
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :catchall_29
    move-exception p0

    goto/16 :goto_192

    .line 547
    :cond_2c
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_29

    if-eqz p1, :cond_3a

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return v2

    .line 550
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p1

    .line 551
    sget-object v3, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v3, p1}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_144

    .line 552
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Lbytekn/foundation/collections/SharedMutableList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lbytekn/foundation/collections/SharedMutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 553
    invoke-virtual {v3, p1}, Lbytekn/foundation/io/file/FileManager;->file(Lbytekn/foundation/io/file/FilePathComponent;)Lbytekn/foundation/io/file/FileMeta;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 554
    invoke-virtual {v3}, Lbytekn/foundation/io/file/FileMeta;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_67

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_69

    :cond_67
    const-wide/16 v8, 0x0

    :goto_69
    const/4 v4, 0x0

    if-eqz v3, :cond_82

    .line 555
    invoke-virtual {v3}, Lbytekn/foundation/io/file/FileMeta;->getType()Lbytekn/foundation/io/file/FileType;

    move-result-object v3

    sget-object v10, Lbytekn/foundation/io/file/FileType;->Directory:Lbytekn/foundation/io/file/FileType;

    if-ne v3, v10, :cond_82

    .line 556
    sget-object v3, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    goto :goto_7e

    :cond_7d
    move-object p1, v4

    :goto_7e
    invoke-virtual {v3, p1}, Lcom/ss/ugc/effectplatform/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 558
    :cond_82
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Lbytekn/foundation/collections/SharedMutableList;

    move-result-object p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lbytekn/foundation/collections/SharedMutableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->size:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v6

    add-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 560
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 561
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    invoke-virtual {p1, v4}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 562
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getReadable()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 563
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz p1, :cond_f3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V

    .line 564
    :cond_f3
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->nextSequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getSequenceNumber()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->nextSequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 566
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz p1, :cond_123

    invoke-virtual {p1}, Lbytekn/foundation/io/file/KnFileWriter;->flush()V

    .line 567
    :cond_123
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->size:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->maxSize:J

    cmp-long p1, v1, v4

    if-gtz p1, :cond_13b

    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_142

    .line 568
    :cond_13b
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->executorService:Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->cleanUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_142
    move v2, v3

    goto :goto_172

    .line 572
    :cond_144
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz p0, :cond_172

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/KnFileWriter;->write(Ljava/lang/String;)V
    :try_end_172
    .catchall {:try_start_3a .. :try_end_172} :catchall_29

    .line 8
    :cond_172
    :goto_172
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return v2

    .line 540
    :cond_176
    :try_start_176
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9._-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_192
    .catchall {:try_start_176 .. :try_end_192} :catchall_29

    .line 8
    :goto_192
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method public final close()V
    .registers 6

    .line 415
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 416
    :try_start_5
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_71

    .line 420
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v2}, Lbytekn/foundation/collections/SharedMutableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_32
    :goto_32
    if-ge v3, v2, :cond_4e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    .line 421
    invoke-virtual {v4}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v4

    invoke-virtual {v4}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    if-eqz v4, :cond_32

    invoke-virtual {v4}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->abort()V

    goto :goto_32

    :catchall_4c
    move-exception p0

    goto :goto_7c

    .line 423
    :cond_4e
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->trimToSize()V

    .line 424
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lbytekn/foundation/io/file/KnFileWriter;->close()V

    .line 425
    :cond_5e
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbytekn/foundation/concurrent/SharedRefrenceKt;->setValue(Lbytekn/foundation/concurrent/SharedReference;Ljava/lang/Object;)V

    .line 426
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 427
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_4c

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    .line 417
    :cond_71
    :goto_71
    :try_start_71
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_4c

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :goto_7c
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method public final delete()V
    .registers 3

    .line 403
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->close()V

    .line 404
    sget-object v0, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 405
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lbytekn/foundation/io/file/FileManager;->mkdir(Ljava/lang/String;Z)Z

    :cond_15
    return-void
.end method

.method public final edit(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;
    .registers 4

    if-eqz p1, :cond_9

    const-wide/16 v0, -0x1

    .line 787
    invoke-direct {p0, p1, v0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public final get(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_f7

    .line 734
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 735
    :try_start_8
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialize()V

    .line 736
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 737
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 743
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v2, p1}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    if-eqz v2, :cond_ce

    .line 745
    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getReadable()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v3

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4d

    if-nez v3, :cond_32

    .line 8
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object v0

    .line 752
    :cond_32
    :try_start_32
    iget v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    new-array v10, v3, [Lbytekn/foundation/io/file/FileInputStream;

    .line 753
    new-array v9, v3, [Lbytekn/foundation/io/file/FilePathComponent;
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_4d

    const/4 v4, 0x0

    move v5, v4

    :goto_3a
    if-ge v5, v3, :cond_68

    .line 756
    :try_start_3c
    invoke-virtual {v2, v5}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v6

    aput-object v6, v9, v5

    if-eqz v6, :cond_51

    .line 758
    sget-object v7, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v7, v6}, Lbytekn/foundation/io/file/FileManager;->openFileInputStream(Lbytekn/foundation/io/file/FilePathComponent;)Lbytekn/foundation/io/file/FileInputStream;

    move-result-object v6

    aput-object v6, v10, v5
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4c} :catch_54
    .catchall {:try_start_3c .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f3

    :cond_51
    :goto_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 764
    :catch_54
    :goto_54
    :try_start_54
    iget p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    if-ge v4, p1, :cond_64

    .line 765
    aget-object p1, v10, v4

    if-eqz p1, :cond_64

    .line 766
    sget-object v2, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v2, p1}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_4d

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 8
    :cond_64
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object v0

    .line 772
    :cond_68
    :try_start_68
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz v0, :cond_a0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lbytekn/foundation/io/file/KnFileWriter;->append(Ljava/lang/CharSequence;)V

    .line 774
    :cond_a0
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 775
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->executorService:Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->cleanUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->execute(Ljava/lang/Runnable;)V

    .line 777
    :cond_ad
    new-instance v4, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getSequenceNumber()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Lbytekn/foundation/collections/SharedMutableList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v11

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Ljava/lang/String;J[Lbytekn/foundation/io/file/FilePathComponent;[Lbytekn/foundation/io/file/FileInputStream;[J)V
    :try_end_ca
    .catchall {:try_start_68 .. :try_end_ca} :catchall_4d

    .line 8
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object v4

    :cond_ce
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object v0

    :cond_d2
    move-object v5, p0

    move-object v6, p1

    .line 739
    :try_start_d4
    invoke-virtual {v5, v6}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 740
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keys must match regex [a-z0-9._-]{1,120}: \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 740
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f3
    .catchall {:try_start_d4 .. :try_end_f3} :catchall_4d

    .line 8
    :goto_f3
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    :cond_f7
    return-object v0
.end method

.method public final getLruEntryKeys()Ljava/util/Set;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 188
    :try_start_5
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {p0}, Lbytekn/foundation/collections/SharedMutableMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object p0

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method public final getMaxSize()J
    .registers 4

    .line 454
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 455
    :try_start_5
    iget-wide v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->maxSize:J
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-wide v1

    :catchall_b
    move-exception p0

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method

.method public final isValid()Z
    .registers 3

    .line 236
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalComponent:Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {v0, p0}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final remove(Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_103

    .line 634
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 635
    :try_start_8
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialize()V

    .line 636
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 637
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->validateKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 641
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v2, p1}, Lbytekn/foundation/collections/SharedMutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    if-eqz v2, :cond_df

    .line 642
    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v3

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    goto/16 :goto_df

    .line 646
    :cond_2a
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 647
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz v3, :cond_66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REMOVE "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbytekn/foundation/io/file/KnFileWriter;->append(Ljava/lang/CharSequence;)V

    goto :goto_66

    :catchall_63
    move-exception p0

    goto/16 :goto_ff

    .line 648
    :cond_66
    :goto_66
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalWriter:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbytekn/foundation/io/file/KnFileWriter;

    if-eqz v3, :cond_73

    invoke-virtual {v3}, Lbytekn/foundation/io/file/KnFileWriter;->flush()V

    .line 649
    :cond_73
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->lruEntries:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v3, p1}, Lbytekn/foundation/collections/SharedMutableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I

    :goto_7a
    if-ge v0, p1, :cond_ce

    .line 652
    invoke-virtual {v2, v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v3
    :try_end_80
    .catchall {:try_start_8 .. :try_end_80} :catchall_63

    .line 654
    :try_start_80
    sget-object v4, Lcom/ss/ugc/effectplatform/util/FileUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/FileUtils;

    invoke-virtual {v4, v3}, Lcom/ss/ugc/effectplatform/util/FileUtils;->delete(Lbytekn/foundation/io/file/FilePathComponent;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_b7
    .catchall {:try_start_80 .. :try_end_85} :catchall_63

    .line 658
    :try_start_85
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->size:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Lbytekn/foundation/collections/SharedMutableList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lbytekn/foundation/collections/SharedMutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    .line 659
    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getLengths()Lbytekn/foundation/collections/SharedMutableList;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lbytekn/foundation/collections/SharedMutableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 656
    :catch_b7
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to delete "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 662
    :cond_ce
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_db

    .line 663
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->executorService:Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->cleanUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_db
    .catchall {:try_start_85 .. :try_end_db} :catchall_63

    .line 8
    :cond_db
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return v5

    :cond_df
    :goto_df
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return v0

    .line 638
    :cond_e3
    :try_start_e3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9._-]{1,120}: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ff
    .catchall {:try_start_e3 .. :try_end_ff} :catchall_63

    .line 8
    :goto_ff
    invoke-virtual {v1}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    :cond_103
    return v0
.end method

.method public final setMaxSize(J)V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 465
    :try_start_5
    iput-wide p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->maxSize:J

    .line 466
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 467
    iget-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->executorService:Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->cleanUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_25

    .line 469
    :cond_1f
    :goto_1f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1d

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :goto_25
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method
