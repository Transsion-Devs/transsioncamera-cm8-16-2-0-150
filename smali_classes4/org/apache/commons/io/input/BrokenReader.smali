.class public Lorg/apache/commons/io/input/BrokenReader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field private final exception:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken reader"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BrokenReader;-><init>(Ljava/io/IOException;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 120
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public mark(I)V
    .registers 2

    .line 100
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public read([CII)I
    .registers 4

    .line 66
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public ready()Z
    .registers 1

    .line 89
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

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

    .line 78
    iget-object p0, p0, Lorg/apache/commons/io/input/BrokenReader;->exception:Ljava/io/IOException;

    throw p0
.end method
