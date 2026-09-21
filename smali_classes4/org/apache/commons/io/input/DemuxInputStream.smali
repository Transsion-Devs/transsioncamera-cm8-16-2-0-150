.class public Lorg/apache/commons/io/input/DemuxInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final inputStreamLocal:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->inputStreamLocal:Ljava/lang/InheritableThreadLocal;

    return-void
.end method


# virtual methods
.method public bindStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    .line 39
    iget-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->inputStreamLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 40
    iget-object p0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->inputStreamLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public close()V
    .registers 1

    .line 52
    iget-object p0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->inputStreamLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public read()I
    .registers 1

    .line 64
    iget-object p0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->inputStreamLocal:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    if-eqz p0, :cond_f

    .line 66
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method
