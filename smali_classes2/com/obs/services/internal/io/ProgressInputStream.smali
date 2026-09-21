.class public Lcom/obs/services/internal/io/ProgressInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private endFlag:Z

.field private progressManager:Lcom/obs/services/internal/ProgressManager;

.field private readFlag:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;)V
    .registers 4

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/obs/services/internal/io/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/obs/services/internal/ProgressManager;Z)V
    .registers 4

    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    iput-object p2, p0, Lcom/obs/services/internal/io/ProgressInputStream;->progressManager:Lcom/obs/services/internal/ProgressManager;

    .line 40
    iput-boolean p3, p0, Lcom/obs/services/internal/io/ProgressInputStream;->endFlag:Z

    return-void
.end method


# virtual methods
.method protected final abortWhileThreadIsInterrupted()V
    .registers 2

    .line 49
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 50
    :cond_7
    new-instance p0, Lcom/obs/services/exception/ObsException;

    const-string v0, "Abort io due to thread interrupted"

    invoke-direct {p0, v0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public available()I
    .registers 1

    .line 72
    invoke-virtual {p0}, Lcom/obs/services/internal/io/ProgressInputStream;->abortWhileThreadIsInterrupted()V

    .line 73
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 3

    .line 79
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 80
    invoke-virtual {p0}, Lcom/obs/services/internal/io/ProgressInputStream;->abortWhileThreadIsInterrupted()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_10

    .line 82
    iget-boolean v0, p0, Lcom/obs/services/internal/io/ProgressInputStream;->endFlag:Z

    if-eqz v0, :cond_f

    .line 83
    iget-object p0, p0, Lcom/obs/services/internal/io/ProgressInputStream;->progressManager:Lcom/obs/services/internal/ProgressManager;

    invoke-virtual {p0}, Lcom/obs/services/internal/ProgressManager;->progressEnd()V

    :cond_f
    return-void

    :catchall_10
    move-exception v0

    .line 82
    iget-boolean v1, p0, Lcom/obs/services/internal/io/ProgressInputStream;->endFlag:Z

    if-eqz v1, :cond_1a

    .line 83
    iget-object p0, p0, Lcom/obs/services/internal/io/ProgressInputStream;->progressManager:Lcom/obs/services/internal/ProgressManager;

    invoke-virtual {p0}, Lcom/obs/services/internal/ProgressManager;->progressEnd()V

    .line 85
    :cond_1a
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Lcom/obs/services/internal/io/ProgressInputStream;->abortWhileThreadIsInterrupted()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 57
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public final markSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .registers 1

    .line 90
    invoke-virtual {p0}, Lcom/obs/services/internal/io/ProgressInputStream;->abortWhileThreadIsInterrupted()V

    .line 91
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 5

    .line 96
    invoke-virtual {p0}, Lcom/obs/services/internal/io/ProgressInputStream;->abortWhileThreadIsInterrupted()V

    .line 97
    iget-boolean v0, p0, Lcom/obs/services/internal/io/ProgressInputStream;->readFlag:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/obs/services/internal/io/ProgressInputStream;->readFlag:Z

    .line 99
    iget-object v0, p0, Lcom/obs/services/internal/io/ProgressInputStream;->progressManager:Lcom/obs/services/internal/ProgressManager;

    invoke-virtual {v0}, Lcom/obs/services/internal/ProgressManager;->progressStart()V

    .line 101
    :cond_f
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 102
    iget-object p0, p0, Lcom/obs/services/internal/io/ProgressInputStream;->progressManager:Lcom/obs/services/internal/ProgressManager;

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ProgressManager;->progressChanged(I)V

    return p1
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    .line 61
    :try_start_1
    new-instance v0, Lcom/obs/services/internal/io/UnrecoverableIOException;

    const-string v1, "UnRepeatable"

    invoke-direct {v0, v1}, Lcom/obs/services/internal/io/UnrecoverableIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public skip(J)J
    .registers 3

    .line 66
    invoke-virtual {p0}, Lcom/obs/services/internal/io/ProgressInputStream;->abortWhileThreadIsInterrupted()V

    .line 67
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method
