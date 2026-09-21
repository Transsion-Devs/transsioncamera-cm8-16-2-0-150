.class public final synthetic Lorg/apache/commons/io/output/ThresholdingOutputStream$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lorg/apache/commons/io/output/ThresholdingOutputStream;

    invoke-static {p1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->$r8$lambda$PUXyu_JUdGU2bWMAK3NNzFiwjQA(Lorg/apache/commons/io/output/ThresholdingOutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
