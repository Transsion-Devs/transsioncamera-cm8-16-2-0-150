.class public Lcom/bytedance/librarian/Librarian;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static sContext:Landroid/content/Context;

.field private static final sLock:Ljava/lang/Object;

.field static sMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

.field static volatile sVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/librarian/Librarian;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrors()[Ljava/lang/UnsatisfiedLinkError;
    .registers 1

    .line 67
    invoke-static {}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;->getErrors()[Ljava/lang/UnsatisfiedLinkError;

    move-result-object v0

    return-object v0
.end method

.method public static getInnerInfo()Ljava/lang/String;
    .registers 3

    .line 71
    sget-object v0, Lcom/bytedance/librarian/LibrarianImpl;->instance:Lcom/bytedance/librarian/LibrarianImpl;

    if-eqz v0, :cond_1a

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/librarian/Librarian;->sVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/librarian/LibrarianImpl;->getLoadedLibsInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1a
    sget-object v0, Lcom/bytedance/librarian/Librarian;->sVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/librarian/LibrarianMonitor;)V
    .registers 5

    .line 19
    sget-object v0, Lcom/bytedance/librarian/Librarian;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_3
    sget-object v1, Lcom/bytedance/librarian/Librarian;->sVersion:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 21
    const-string p0, "librarian"

    const-string p1, "already set init, just skip..."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_26

    .line 24
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    .line 30
    sput-object p0, Lcom/bytedance/librarian/Librarian;->sContext:Landroid/content/Context;

    .line 31
    sput-object p1, Lcom/bytedance/librarian/Librarian;->sVersion:Ljava/lang/String;

    .line 32
    sput-object p2, Lcom/bytedance/librarian/Librarian;->sMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    return-void

    .line 27
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "context or version is null in init"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :goto_26
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_10

    throw p0
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v0, v1}, Lcom/bytedance/librarian/Librarian;->loadLibraryInternal(Ljava/lang/String;ZZLandroid/content/Context;)V

    return-void
.end method

.method public static loadLibraryForModule(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    invoke-static {p0, v0, v1, p1}, Lcom/bytedance/librarian/Librarian;->loadLibraryInternal(Ljava/lang/String;ZZLandroid/content/Context;)V

    return-void
.end method

.method public static loadLibraryForModuleRecursively(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, v0, v0, p1}, Lcom/bytedance/librarian/Librarian;->loadLibraryInternal(Ljava/lang/String;ZZLandroid/content/Context;)V

    return-void
.end method

.method private static loadLibraryInternal(Ljava/lang/String;ZZLandroid/content/Context;)V
    .registers 4

    if-eqz p2, :cond_8

    .line 52
    sget-object p2, Lcom/bytedance/librarian/Librarian;->sContext:Landroid/content/Context;

    if-nez p2, :cond_8

    .line 53
    sput-object p3, Lcom/bytedance/librarian/Librarian;->sContext:Landroid/content/Context;

    .line 56
    :cond_8
    sget-object p2, Lcom/bytedance/librarian/LibrarianImpl;->instance:Lcom/bytedance/librarian/LibrarianImpl;

    if-eqz p2, :cond_10

    .line 58
    invoke-virtual {p2, p0, p1}, Lcom/bytedance/librarian/LibrarianImpl;->loadLibrary(Ljava/lang/String;Z)V

    return-void

    .line 59
    :cond_10
    sget-object p1, Lcom/bytedance/librarian/Librarian;->sMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    if-eqz p1, :cond_18

    .line 60
    invoke-virtual {p1, p0}, Lcom/bytedance/librarian/LibrarianMonitor;->systemLoadLibrary(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_18
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static loadLibraryRecursively(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-static {p0, v2, v0, v1}, Lcom/bytedance/librarian/Librarian;->loadLibraryInternal(Ljava/lang/String;ZZLandroid/content/Context;)V

    return-void
.end method
