.class public final synthetic Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/output/AbstractByteArrayOutputStream$InputStreamConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct([BII)Ljava/io/InputStream;
    .registers 4

    .line 0
    new-instance p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BII)V

    return-object p0
.end method
