.class final Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $collectJob:Lkotlinx/coroutines/CompletableJob;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableJob;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$1;->$collectJob:Lkotlinx/coroutines/CompletableJob;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 103
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 3

    .line 105
    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$1;->$collectJob:Lkotlinx/coroutines/CompletableJob;

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$1;->$collectJob:Lkotlinx/coroutines/CompletableJob;

    new-instance v0, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$1;->$collectJob:Lkotlinx/coroutines/CompletableJob;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_14
    return-void
.end method
