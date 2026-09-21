.class public final synthetic Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    check-cast p1, Lorg/apache/commons/io/output/ThresholdingOutputStream;

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->$r8$lambda$M3WxdGWBG-IYGwQlDMvPcKhcoKs(Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;Lorg/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
