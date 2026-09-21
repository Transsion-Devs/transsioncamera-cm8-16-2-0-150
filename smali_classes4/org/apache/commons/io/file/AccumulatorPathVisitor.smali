.class public Lorg/apache/commons/io/file/AccumulatorPathVisitor;
.super Lorg/apache/commons/io/file/CountingPathVisitor;
.source "SourceFile"


# instance fields
.field private final dirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 114
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V
    .registers 2

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V
    .registers 4

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-void
.end method

.method private add(Ljava/util/List;Ljava/nio/file/Path;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .line 140
    invoke-interface {p2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static withBigIntegerCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 2

    .line 67
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method

.method public static withBigIntegerCounters(Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 4

    .line 80
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    return-object v0
.end method

.method public static withLongCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 2

    .line 89
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method

.method public static withLongCounters(Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 4

    .line 101
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 148
    :cond_4
    invoke-super {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 151
    :cond_c
    instance-of v1, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    if-nez v1, :cond_11

    return v2

    .line 154
    :cond_11
    check-cast p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 155
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    iget-object v3, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object p0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    return v0

    :cond_28
    return v2
.end method

.method public getDirList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object p0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    return-object p0
.end method

.method public getFileList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 179
    invoke-super {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 180
    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .registers 3

    .line 214
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 215
    iget-object p2, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->add(Ljava/util/List;Ljava/nio/file/Path;)V

    return-void
.end method

.method protected updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .registers 3

    .line 220
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 221
    iget-object p2, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->add(Ljava/util/List;Ljava/nio/file/Path;)V

    return-void
.end method
