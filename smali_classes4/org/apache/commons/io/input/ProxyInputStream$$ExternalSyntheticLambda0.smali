.class public final synthetic Lorg/apache/commons/io/input/ProxyInputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/input/ProxyInputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/input/ProxyInputStream;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/ProxyInputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/input/ProxyInputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/apache/commons/io/input/ProxyInputStream$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/input/ProxyInputStream;

    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    return-void
.end method
