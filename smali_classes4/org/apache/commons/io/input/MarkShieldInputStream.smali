.class public Lorg/apache/commons/io/input/MarkShieldInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public mark(I)V
    .registers 2

    return-void
.end method

.method public markSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 1

    .line 62
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->reset()Ljava/lang/UnsupportedOperationException;

    move-result-object p0

    throw p0
.end method
