.class public Lorg/apache/commons/io/input/UnixLineEndingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final ensureLineFeedAtEndOfFile:Z

.field private eofSeen:Z

.field private slashNSeen:Z

.field private slashRSeen:Z

.field private final target:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->target:Ljava/io/InputStream;

    .line 51
    iput-boolean p2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->ensureLineFeedAtEndOfFile:Z

    return-void
.end method

.method private eofGame(Z)I
    .registers 3

    const/4 v0, -0x1

    if-nez p1, :cond_12

    .line 100
    iget-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->ensureLineFeedAtEndOfFile:Z

    if-nez p1, :cond_8

    goto :goto_12

    .line 103
    :cond_8
    iget-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    const/16 p0, 0xa

    return p0

    :cond_12
    :goto_12
    return v0
.end method

.method private readWithUpdate()I
    .registers 5

    .line 60
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_d

    move v1, v3

    goto :goto_e

    :cond_d
    move v1, v2

    .line 61
    :goto_e
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofSeen:Z

    if-eqz v1, :cond_13

    return v0

    :cond_13
    const/16 v1, 0xa

    if-ne v0, v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v2

    .line 65
    :goto_1a
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    const/16 v1, 0xd

    if-ne v0, v1, :cond_21

    move v2, v3

    .line 66
    :cond_21
    iput-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashRSeen:Z

    return v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 116
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 117
    iget-object p0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->target:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    .line 125
    :try_start_1
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public read()I
    .registers 4

    .line 75
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashRSeen:Z

    .line 76
    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofSeen:Z

    if-eqz v1, :cond_b

    .line 77
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofGame(Z)I

    move-result p0

    return p0

    .line 79
    :cond_b
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->readWithUpdate()I

    move-result v1

    .line 80
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofSeen:Z

    if-eqz v2, :cond_18

    .line 81
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->eofGame(Z)I

    move-result p0

    return p0

    .line 83
    :cond_18
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashRSeen:Z

    if-eqz v2, :cond_1f

    const/16 p0, 0xa

    return p0

    :cond_1f
    if-eqz v0, :cond_2a

    .line 87
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->slashNSeen:Z

    if-eqz v0, :cond_2a

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->read()I

    move-result p0

    return p0

    :cond_2a
    return v1
.end method
