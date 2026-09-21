.class public abstract Lcom/ss/ugc/effectplatform/task/SyncTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private syncTaskListener:Lbytekn/foundation/concurrent/SharedReference;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lbytekn/foundation/concurrent/SharedReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/task/SyncTask;->syncTaskListener:Lbytekn/foundation/concurrent/SharedReference;

    return-void
.end method


# virtual methods
.method public final setListener(Lcom/ss/ugc/effectplatform/task/SyncTaskListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/SyncTask;->syncTaskListener:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {p0, p1}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    return-void
.end method
