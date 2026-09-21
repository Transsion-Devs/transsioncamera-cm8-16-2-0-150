.class final synthetic Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$doJob$3$hex$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->doJob(Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 1

    const-string p0, "onProgress"

    return-object p0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .registers 1

    const-class p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public final getSignature()Ljava/lang/String;
    .registers 1

    const-string p0, "onProgress(IJ)V"

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 22
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine$doJob$3$hex$1;->invoke(IJ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(IJ)V
    .registers 4

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;

    .line 59
    # invokes: Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->onProgress(IJ)V
    invoke-static {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;->access$onProgress(Lcom/ss/ugc/effectplatform/task/pipline/FileWriterPipeLine;IJ)V

    return-void
.end method
