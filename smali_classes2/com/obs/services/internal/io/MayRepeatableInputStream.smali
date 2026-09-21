.class public Lcom/obs/services/internal/io/MayRepeatableInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;
    }
.end annotation


# instance fields
.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private markPos:J

.field private originInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    invoke-direct {p0, p2}, Lcom/obs/services/internal/io/MayRepeatableInputStream;->init(I)V

    .line 54
    iput-object p1, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->originInputStream:Ljava/io/InputStream;

    return-void
.end method

.method private init(I)V
    .registers 4

    .line 58
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_20

    .line 59
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 61
    :try_start_10
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->markPos:J
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_17

    goto :goto_20

    :catch_17
    move-exception p0

    .line 63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid FileInputStream"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_20
    :goto_20
    if-lez p1, :cond_2b

    .line 67
    new-instance v0, Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1, p1}, Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    :cond_2b
    return-void
.end method


# virtual methods
.method public available()I
    .registers 1

    .line 121
    invoke-virtual {p0}, Lcom/obs/services/internal/io/MayRepeatableInputStream;->throwExceptionWhileInterrupted()V

    .line 122
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 1

    .line 127
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 128
    invoke-virtual {p0}, Lcom/obs/services/internal/io/MayRepeatableInputStream;->throwExceptionWhileInterrupted()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 84
    :try_start_1
    invoke-virtual {p0}, Lcom/obs/services/internal/io/MayRepeatableInputStream;->throwExceptionWhileInterrupted()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    .line 86
    :try_start_4
    iget-object v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_13

    .line 87
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->markPos:J

    goto :goto_1e

    :catchall_f
    move-exception p1

    goto :goto_28

    :catch_11
    move-exception p1

    goto :goto_20

    .line 88
    :cond_13
    iget-object v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->originInputStream:Ljava/io/InputStream;

    instance-of v1, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_1e

    .line 89
    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayInputStream;->mark(I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1e} :catch_11
    .catchall {:try_start_4 .. :try_end_1e} :catchall_f

    .line 94
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 92
    :goto_20
    :try_start_20
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    const-string v1, "Failed to mark the file position"

    invoke-direct {v0, v1, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_f

    throw p1
.end method

.method public final markSupported()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->originInputStream:Ljava/io/InputStream;

    instance-of p0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public read()I
    .registers 1

    .line 133
    invoke-virtual {p0}, Lcom/obs/services/internal/io/MayRepeatableInputStream;->throwExceptionWhileInterrupted()V

    .line 134
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 4

    .line 139
    invoke-virtual {p0}, Lcom/obs/services/internal/io/MayRepeatableInputStream;->throwExceptionWhileInterrupted()V

    .line 140
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public declared-synchronized reset()V
    .registers 4

    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1a

    .line 99
    iget-wide v1, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->markPos:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 100
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;

    if-eqz v0, :cond_34

    .line 101
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;

    invoke-virtual {v0}, Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;->tearDown()V

    goto :goto_34

    :catchall_18
    move-exception v0

    goto :goto_3e

    .line 103
    :cond_1a
    iget-object v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->originInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_36

    .line 104
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;

    if-eqz v0, :cond_2d

    .line 105
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;

    invoke-virtual {v0}, Lcom/obs/services/internal/io/MayRepeatableInputStream$SdkBufferedInputStream;->tearDown()V

    .line 107
    :cond_2d
    iget-object v0, p0, Lcom/obs/services/internal/io/MayRepeatableInputStream;->originInputStream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_18

    .line 111
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    .line 109
    :cond_36
    :try_start_36
    new-instance v0, Lcom/obs/services/internal/io/UnrecoverableIOException;

    const-string v1, "UnRepeatable"

    invoke-direct {v0, v1}, Lcom/obs/services/internal/io/UnrecoverableIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_18

    throw v0
.end method

.method public skip(J)J
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/obs/services/internal/io/MayRepeatableInputStream;->throwExceptionWhileInterrupted()V

    .line 116
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected final throwExceptionWhileInterrupted()V
    .registers 2

    .line 77
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 78
    :cond_7
    new-instance p0, Lcom/obs/services/exception/ObsException;

    const-string v0, "Abort io due to thread interrupted"

    invoke-direct {p0, v0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
