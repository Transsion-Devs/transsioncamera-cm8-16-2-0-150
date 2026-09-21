.class public final Lokio/JvmFileHandle;
.super Lokio/FileHandle;
.source "SourceFile"


# instance fields
.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(ZLjava/io/RandomAccessFile;)V
    .registers 4

    const-string v0, "randomAccessFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lokio/FileHandle;-><init>(Z)V

    .line 22
    iput-object p2, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method protected declared-synchronized protectedClose()V
    .registers 2

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 80
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method protected declared-synchronized protectedFlush()V
    .registers 2

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 75
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected declared-synchronized protectedRead(J[BII)I
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p1, 0x0

    :goto_c
    if-ge p1, p5, :cond_21

    .line 51
    iget-object p2, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    sub-int v0, p5, p1

    invoke-virtual {p2, p3, p4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1d

    if-nez p1, :cond_21

    .line 53
    monitor-exit p0

    return v0

    :cond_1d
    add-int/2addr p1, p2

    goto :goto_c

    :catchall_1f
    move-exception p1

    goto :goto_23

    .line 58
    :cond_21
    monitor-exit p0

    return p1

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1f

    throw p1
.end method

.method protected declared-synchronized protectedResize(J)V
    .registers 10

    monitor-enter p0

    .line 27
    :try_start_1
    invoke-virtual {p0}, Lokio/FileHandle;->size()J

    move-result-wide v2

    sub-long v0, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1c

    long-to-int v6, v0

    .line 30
    new-array v4, v6, [B
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    const/4 v5, 0x0

    move-object v1, p0

    :try_start_12
    invoke-virtual/range {v1 .. v6}, Lokio/JvmFileHandle;->protectedWrite(J[BII)V

    goto :goto_22

    :catchall_16
    move-exception v0

    :goto_17
    move-object p0, v0

    goto :goto_24

    :catchall_19
    move-exception v0

    move-object v1, p0

    goto :goto_17

    :cond_1c
    move-object v1, p0

    .line 32
    iget-object p0, v1, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_16

    .line 34
    :goto_22
    monitor-exit v1

    return-void

    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_16

    throw p0
.end method

.method protected declared-synchronized protectedSize()J
    .registers 3

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected declared-synchronized protectedWrite(J[BII)V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "array"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 69
    iget-object p1, p0, Lokio/JvmFileHandle;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 70
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method
