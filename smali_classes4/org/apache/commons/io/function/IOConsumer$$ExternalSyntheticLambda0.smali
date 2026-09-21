.class public final synthetic Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/io/function/IOConsumer;

.field public final synthetic f$1:Lorg/apache/commons/io/function/IOConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOConsumer;

    iput-object p2, p0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/io/function/IOConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/io/function/IOConsumer;

    iget-object p0, p0, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/io/function/IOConsumer;

    invoke-static {v0, p0, p1}, Lorg/apache/commons/io/function/IOConsumer;->$r8$lambda$Ir0O2NzIsjC3O5cgZ7cBHpFu7Jc(Lorg/apache/commons/io/function/IOConsumer;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method
