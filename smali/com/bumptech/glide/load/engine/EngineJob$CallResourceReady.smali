.class Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallResourceReady"
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/request/ResourceCallback;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/EngineJob;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/request/ResourceCallback;)V
    .registers 3

    .line 411
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-interface {v0}, Lcom/bumptech/glide/request/ResourceCallback;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 420
    :try_start_7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_36

    .line 421
    :try_start_a
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob$ResourceCallbacksAndExecutors;->contains(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 423
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 424
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->callCallbackOnResourceReady(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 425
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->cb:Lcom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_38

    .line 427
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineJob$CallResourceReady;->this$0:Lcom/bumptech/glide/load/engine/EngineJob;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->decrementPendingCallbacks()V

    .line 428
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_2c

    .line 429
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception p0

    goto :goto_3a

    .line 428
    :goto_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_2c

    :try_start_39
    throw p0

    .line 429
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_36

    throw p0
.end method
