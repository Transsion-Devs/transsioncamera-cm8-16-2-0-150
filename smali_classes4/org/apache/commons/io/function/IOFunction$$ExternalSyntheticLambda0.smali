.class public final synthetic Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOFunction;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOFunction;

.field public final synthetic f$1:Lorg/apache/commons/io/function/IOFunction;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOFunction;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/io/function/IOFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOFunction;

    iget-object p0, p0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/io/function/IOFunction;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction;->$r8$lambda$2f0qjeyhIxVbvvE6geaOL3IDmoc(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
