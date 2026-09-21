.class public Lorg/apache/commons/io/output/TeeWriter;
.super Lorg/apache/commons/io/output/ProxyCollectionWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/Writer;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyCollectionWriter;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Writer;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyCollectionWriter;-><init>([Ljava/io/Writer;)V

    return-void
.end method
