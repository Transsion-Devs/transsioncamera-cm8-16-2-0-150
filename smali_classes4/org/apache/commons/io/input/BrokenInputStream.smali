.class public Lorg/apache/commons/io/input/BrokenInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final exception:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken input stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenInputStream;-><init>(Ljava/io/IOException;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 1

    .line 74
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public close()V
    .registers 1

    .line 106
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public read()I
    .registers 1

    .line 63
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 96
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4

    throw v0
.end method

.method public skip(J)J
    .registers 3

    .line 86
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenInputStream;->exception:Ljava/io/IOException;

    throw p0
.end method
