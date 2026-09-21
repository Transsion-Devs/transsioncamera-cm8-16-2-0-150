.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lbytekn/foundation/concurrent/SharedReference;

.field private final key:Ljava/lang/String;

.field private final lengths:Lbytekn/foundation/collections/SharedMutableList;

.field private readable:Lbytekn/foundation/concurrent/SharedReference;

.field private sequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Ljava/lang/String;)V
    .registers 6

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 889
    new-instance p2, Lbytekn/foundation/collections/SharedMutableList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lbytekn/foundation/collections/SharedMutableList;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->lengths:Lbytekn/foundation/collections/SharedMutableList;

    .line 894
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p2, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->readable:Lbytekn/foundation/concurrent/SharedReference;

    .line 899
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    invoke-direct {p2, v2}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->currentEditor:Lbytekn/foundation/concurrent/SharedReference;

    .line 904
    new-instance p2, Lbytekn/foundation/concurrent/SharedReference;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p2, v1}, Lbytekn/foundation/concurrent/SharedReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->sequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

    .line 907
    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getValueCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)I

    move-result p1

    :goto_37
    if-ge v0, p1, :cond_41

    .line 908
    iget-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->lengths:Lbytekn/foundation/collections/SharedMutableList;

    invoke-virtual {p2, v1}, Lbytekn/foundation/collections/SharedMutableList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_41
    return-void
.end method

.method private final invalidLengths([Ljava/lang/String;)Lbytekn/foundation/io/file/IOException;
    .registers 4

    .line 939
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unexpected journal line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;
    .registers 4

    if-nez p1, :cond_14

    .line 944
    new-instance p1, Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;
    invoke-static {v0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getDirectory$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p0

    return-object p0

    .line 945
    :cond_14
    new-instance v0, Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getDirectory$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentEditor()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 899
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->currentEditor:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public final getDirtyFile(I)Lbytekn/foundation/io/file/FilePathComponent;
    .registers 5

    .line 949
    const-string v0, ".tmp"

    if-nez p1, :cond_25

    .line 950
    new-instance p1, Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getDirectory$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p0

    return-object p0

    .line 951
    :cond_25
    new-instance v1, Lbytekn/foundation/io/file/FilePathComponent;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->directory:Ljava/lang/String;
    invoke-static {v2}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getDirectory$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lbytekn/foundation/io/file/FilePathComponent;->byAppending(Ljava/lang/String;)Lbytekn/foundation/io/file/FilePathComponent;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .registers 1

    .line 884
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getLengths()Lbytekn/foundation/collections/SharedMutableList;
    .registers 1

    .line 889
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->lengths:Lbytekn/foundation/collections/SharedMutableList;

    return-object p0
.end method

.method public final getLengths()Ljava/lang/String;
    .registers 5

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 914
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->lengths:Lbytekn/foundation/collections/SharedMutableList;

    invoke-virtual {p0}, Lbytekn/foundation/collections/SharedMutableList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    .line 915
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 917
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "result.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getReadable()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 894
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->readable:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public final getSequenceNumber()Lbytekn/foundation/concurrent/SharedReference;
    .registers 1

    .line 904
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->sequenceNumber:Lbytekn/foundation/concurrent/SharedReference;

    return-object p0
.end method

.method public final setLengths([Ljava/lang/String;)V
    .registers 7

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 924
    array-length v0, p1

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;->access$getValueCount$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 929
    :try_start_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_24

    .line 930
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->lengths:Lbytekn/foundation/collections/SharedMutableList;

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lbytekn/foundation/collections/SharedMutableList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_21} :catch_25

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_24
    return-void

    .line 933
    :catch_25
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Lbytekn/foundation/io/file/IOException;

    move-result-object p0

    throw p0

    .line 925
    :cond_2a
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Lbytekn/foundation/io/file/IOException;

    move-result-object p0

    throw p0
.end method
