.class public final Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/task/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

.field private needShutDown:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/ss/ugc/effectplatform/task/TaskManager;
    .registers 4

    .line 106
    new-instance v0, Lcom/ss/ugc/effectplatform/task/TaskManager;

    iget-boolean v1, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;->needShutDown:Z

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;->executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

    if-eqz p0, :cond_9

    goto :goto_e

    :cond_9
    new-instance p0, Lbytekn/foundation/concurrent/executor/AsyncExecutor;

    invoke-direct {p0}, Lbytekn/foundation/concurrent/executor/AsyncExecutor;-><init>()V

    :goto_e
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/ss/ugc/effectplatform/task/TaskManager;-><init>(ZLbytekn/foundation/concurrent/executor/ExecutorService;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final setExecutor(Lbytekn/foundation/concurrent/executor/ExecutorService;)Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;
    .registers 3

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/TaskManager$Builder;->executor:Lbytekn/foundation/concurrent/executor/ExecutorService;

    return-object p0
.end method
