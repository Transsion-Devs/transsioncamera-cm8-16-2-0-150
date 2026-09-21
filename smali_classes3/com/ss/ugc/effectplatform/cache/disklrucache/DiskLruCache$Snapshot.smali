.class public final Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/io/file/KnCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final cleanFiles:[Lbytekn/foundation/io/file/FilePathComponent;

.field private final ins:[Lbytekn/foundation/io/file/FileInputStream;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;Ljava/lang/String;J[Lbytekn/foundation/io/file/FilePathComponent;[Lbytekn/foundation/io/file/FileInputStream;[J)V
    .registers 9

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleanFiles"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ins"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lengths"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 878
    iput-object p5, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->cleanFiles:[Lbytekn/foundation/io/file/FilePathComponent;

    .line 879
    iput-object p6, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->ins:[Lbytekn/foundation/io/file/FileInputStream;

    .line 880
    iput-object p7, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->lengths:[J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 869
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->ins:[Lbytekn/foundation/io/file/FileInputStream;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    if-eqz v2, :cond_f

    .line 871
    sget-object v3, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v3, v2}, Lbytekn/foundation/io/file/FileManager;->closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-void
.end method

.method public final getCleanFile(I)Lbytekn/foundation/io/file/FilePathComponent;
    .registers 2

    .line 849
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Snapshot;->cleanFiles:[Lbytekn/foundation/io/file/FilePathComponent;

    aget-object p0, p0, p1

    return-object p0
.end method
