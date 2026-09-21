.class Lorg/apache/commons/io/StreamIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final stream:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/stream/Stream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TE;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "stream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/stream/Stream;

    iput-object v0, p0, Lorg/apache/commons/io/StreamIterator;->stream:Ljava/util/stream/Stream;

    .line 54
    invoke-interface {p1}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/StreamIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public static iterator(Ljava/util/stream/Stream;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/apache/commons/io/StreamIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/StreamIterator;-><init>(Ljava/util/stream/Stream;)V

    iget-object p0, v0, Lorg/apache/commons/io/StreamIterator;->iterator:Ljava/util/Iterator;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 83
    iget-object p0, p0, Lorg/apache/commons/io/StreamIterator;->stream:Ljava/util/stream/Stream;

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/apache/commons/io/StreamIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/io/StreamIterator;->close()V

    :cond_b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/commons/io/StreamIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/io/StreamIterator;->close()V

    :cond_b
    return-object v0
.end method
