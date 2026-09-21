.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;-><init>(Ljava/lang/String;IIJLcom/ss/ugc/effectplatform/cache/disklrucache/IAllowListKeyRule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getClassLock$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/lock/Lock;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 173
    :try_start_9
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->initialized:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getInitialized$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v1

    invoke-virtual {v1}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->closed:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getClosed$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v2

    invoke-virtual {v2}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_53

    or-int/2addr v1, v2

    if-eqz v1, :cond_32

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    .line 176
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->trimToSize()V
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$trimToSize(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V

    .line 177
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$journalRebuildRequired(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 178
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->rebuildJournal()V
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$rebuildJournal(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)V

    .line 179
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$cleanUpRunnable$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->redundantOpCount:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getRedundantOpCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    goto :goto_55

    :catchall_53
    move-exception p0

    goto :goto_5b

    .line 181
    :cond_55
    :goto_55
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_53

    .line 8
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-void

    :goto_5b
    invoke-virtual {v0}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0
.end method
