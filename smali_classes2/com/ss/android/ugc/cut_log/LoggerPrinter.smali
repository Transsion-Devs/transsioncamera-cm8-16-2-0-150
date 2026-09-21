.class public Lcom/ss/android/ugc/cut_log/LoggerPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final localTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/cut_log/LogAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private logSwitch:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->logAdapters:Ljava/util/List;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->logSwitch:Z

    return-void
.end method

.method private getTag()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 96
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-object v0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized log(ILjava/lang/Throwable;)V
    .registers 5

    monitor-enter p0

    .line 89
    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 91
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method private declared-synchronized log(ILjava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 83
    :try_start_1
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 86
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method


# virtual methods
.method public addAdapter(Lcom/ss/android/ugc/cut_log/LogAdapter;)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearLogAdapters()V
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x6

    .line 45
    invoke-direct {p0, v0, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x6

    .line 37
    invoke-direct {p0, v0, p1, p2}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    monitor-enter p0

    .line 49
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->logSwitch:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_24

    if-nez v0, :cond_7

    .line 50
    monitor-exit p0

    return-void

    :cond_7
    if-eqz p4, :cond_26

    if-eqz p3, :cond_26

    .line 53
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/ss/android/ugc/cut_log/Utils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_5a

    :cond_26
    :goto_26
    if-eqz p4, :cond_2e

    if-nez p3, :cond_2e

    .line 57
    invoke-static {p4}, Lcom/ss/android/ugc/cut_log/Utils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 60
    :cond_2e
    invoke-static {p3}, Lcom/ss/android/ugc/cut_log/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_36

    .line 61
    const-string p3, "Empty/NULL log message"

    .line 64
    :cond_36
    iget-object p4, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 65
    :cond_3c
    :goto_3c
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 66
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/cut_log/LogAdapter;

    .line 67
    invoke-interface {v0}, Lcom/ss/android/ugc/cut_log/LogAdapter;->getPrintLevel()I

    move-result v1

    if-lt p1, v1, :cond_3c

    .line 68
    invoke-interface {v0}, Lcom/ss/android/ugc/cut_log/LogAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 69
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/ugc/cut_log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_24

    goto :goto_3c

    .line 72
    :cond_58
    monitor-exit p0

    return-void

    :goto_5a
    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_24

    throw p1
.end method

.method public setLogEnable(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->logSwitch:Z

    return-void
.end method

.method public t(Ljava/lang/String;)Lcom/ss/android/ugc/cut_log/LoggerPrinter;
    .registers 3

    if-eqz p1, :cond_7

    .line 18
    iget-object v0, p0, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_7
    return-object p0
.end method

.method public v(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ugc/cut_log/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
