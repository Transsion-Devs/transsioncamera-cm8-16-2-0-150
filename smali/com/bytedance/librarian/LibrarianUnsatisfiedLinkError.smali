.class Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;
.super Ljava/lang/UnsatisfiedLinkError;
.source "SourceFile"


# static fields
.field private static final sErrors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;->sErrors:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;->sErrors:Ljava/util/ArrayList;

    monitor-enter p1

    .line 14
    :try_start_6
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 21
    sget-object p1, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;->sErrors:Ljava/util/ArrayList;

    monitor-enter p1

    .line 22
    :try_start_9
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    monitor-exit p1

    return-void

    :catchall_e
    move-exception p0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw p0
.end method

.method static getErrors()[Ljava/lang/UnsatisfiedLinkError;
    .registers 2

    .line 27
    sget-object v0, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;->sErrors:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 28
    :try_start_4
    new-array v1, v1, [Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/UnsatisfiedLinkError;

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method
