.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private committed:Lbytekn/foundation/concurrent/SharedReference;

.field private final entry:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

.field private hasErrors:Lbytekn/foundation/concurrent/SharedReference;

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

.field private final written:Lbytekn/foundation/concurrent/SharedReference;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;)V
    .registers 4

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->entry:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    .line 960
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getValueCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    invoke-direct {p2, p1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->written:Lbytekn/foundation/concurrent/SharedReference;

    .line 961
    new-instance p1, Lbytekn/foundation/concurrent/SharedReference;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->hasErrors:Lbytekn/foundation/concurrent/SharedReference;

    .line 962
    new-instance p1, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {p1, p2}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->committed:Lbytekn/foundation/concurrent/SharedReference;

    return-void
.end method

.method public static final synthetic access$getHasErrors$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;)Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 959
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->hasErrors:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method


# virtual methods
.method public final abort()V
    .registers 3

    .line 1068
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public final commit()V
    .registers 3

    .line 1054
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->hasErrors:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1055
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V

    .line 1056
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->entry:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_26

    .line 1058
    :cond_20
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    const/4 v1, 0x1

    # invokes: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$completeEdit(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;Z)V

    .line 1060
    :goto_26
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->committed:Lbytekn/foundation/concurrent/SharedReference;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final getEntry()Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;
    .registers 1

    .line 959
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->entry:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    return-object p0
.end method

.method public final getWritten()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 960
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->written:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public final newOutputStream(I)Lbytekn/foundation/io/file/FileOutputStream;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_e

    .line 999
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getValueCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)I

    move-result v2

    if-ge p1, v2, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    move v2, v0

    :goto_f
    if-eqz v2, :cond_96

    .line 1004
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->classLock:Lbytekn/foundation/concurrent/lock/Lock;
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getClassLock$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Lbytekn/foundation/concurrent/lock/Lock;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lbytekn/foundation/concurrent/lock/Lock;->acquire()V

    .line 1005
    :try_start_1a
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->entry:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v3

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 1006
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->entry:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getReadable()Lbytekn/foundation/concurrent/SharedReference;

    move-result-object v3

    invoke-virtual {v3}, Lbytekn/foundation/concurrent/SharedReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_50

    .line 1007
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I
    invoke-static {v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getValueCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)I

    move-result v3

    new-array v3, v3, [Z

    .line 1008
    aput-boolean v1, v3, p1

    .line 1009
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->written:Lbytekn/foundation/concurrent/SharedReference;

    invoke-virtual {v4, v3}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    goto :goto_50

    :catchall_4e
    move-exception p0

    goto :goto_92

    .line 1014
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->entry:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->getDirtyFile(I)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object v3
    :try_end_56
    .catchall {:try_start_1a .. :try_end_56} :catchall_4e

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 1017
    :try_start_58
    sget-object v6, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-static {v6, v3, v0, v5, v4}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream$default(Lbytekn/foundation/io/file/FileManager;Lbytekn/foundation/io/file/FilePathComponent;ZILjava/lang/Object;)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object v0
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_5f
    .catchall {:try_start_58 .. :try_end_5e} :catchall_4e

    goto :goto_6e

    .line 1020
    :catch_5f
    :try_start_5f
    sget-object v6, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iget-object v7, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;
    invoke-static {v7}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getDirectory$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lbytekn/foundation/io/file/FileManager;->mkdir(Ljava/lang/String;Z)Z
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_4e

    .line 1022
    :try_start_6a
    invoke-static {v6, v3, v0, v5, v4}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream$default(Lbytekn/foundation/io/file/FileManager;Lbytekn/foundation/io/file/FilePathComponent;ZILjava/lang/Object;)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object v0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6e} :catch_81
    .catchall {:try_start_6a .. :try_end_6e} :catchall_4e

    .line 1030
    :goto_6e
    :try_start_6e
    new-instance v1, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;

    if-nez v0, :cond_75

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_75
    new-instance v3, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor$newOutputStream$$inlined$synchronized$lambda$1;

    invoke-direct {v3, p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor$newOutputStream$$inlined$synchronized$lambda$1;-><init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;I)V

    invoke-direct {v1, v0, v3}, Lcom/ss/ugc/effectplatform/cache/disklrucache/FaultHidingOutputStream;-><init>(Lbytekn/foundation/io/file/FileOutputStream;Lkotlin/jvm/functions/Function0;)V
    :try_end_7d
    .catchall {:try_start_6e .. :try_end_7d} :catchall_4e

    .line 8
    invoke-virtual {v2}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object v1

    .line 1025
    :catch_81
    :try_start_81
    new-instance p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/EmptyFileOutputStream;

    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/EmptyFileOutputStream;-><init>()V
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_4e

    .line 8
    invoke-virtual {v2}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    return-object p0

    .line 1005
    :cond_8a
    :try_start_8a
    const-string p0, "Check failed."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_4e

    .line 8
    :goto_92
    invoke-virtual {v2}, Lbytekn/foundation/concurrent/lock/Lock;->release()V

    throw p0

    .line 1000
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "be greater than 0 and less than the maximum value count "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getValueCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 999
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
