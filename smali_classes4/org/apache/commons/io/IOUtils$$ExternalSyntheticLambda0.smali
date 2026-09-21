.class public final synthetic Lorg/apache/commons/io/IOUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lorg/apache/commons/io/output/ThresholdingOutputStream;

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->$r8$lambda$iv4sMQiuLaYpHb1zuXQKG3tXkjI(Lorg/apache/commons/io/output/ThresholdingOutputStream;)V

    return-void
.end method
