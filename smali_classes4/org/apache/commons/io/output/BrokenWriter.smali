.class public Lorg/apache/commons/io/output/BrokenWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private final exception:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 52
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Broken writer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/BrokenWriter;-><init>(Ljava/io/IOException;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/io/output/BrokenWriter;->exception:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 85
    iget-object p0, p0, Lorg/apache/commons/io/output/BrokenWriter;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public flush()V
    .registers 1

    .line 75
    iget-object p0, p0, Lorg/apache/commons/io/output/BrokenWriter;->exception:Ljava/io/IOException;

    throw p0
.end method

.method public write([CII)V
    .registers 4

    .line 65
    iget-object p0, p0, Lorg/apache/commons/io/output/BrokenWriter;->exception:Ljava/io/IOException;

    throw p0
.end method
