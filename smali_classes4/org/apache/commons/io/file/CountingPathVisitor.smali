.class public Lorg/apache/commons/io/file/CountingPathVisitor;
.super Lorg/apache/commons/io/file/SimplePathVisitor;
.source "SourceFile"


# static fields
.field static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final dirFilter:Lorg/apache/commons/io/file/PathFilter;

.field private final fileFilter:Lorg/apache/commons/io/file/PathFilter;

.field private final pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/io/file/CountingPathVisitor;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V
    .registers 3

    .line 67
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V
    .registers 5

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/io/file/SimplePathVisitor;-><init>()V

    .line 79
    const-string v0, "pathCounter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/apache/commons/io/file/Counters$PathCounters;

    iput-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 80
    const-string p1, "fileFilter"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lorg/apache/commons/io/file/PathFilter;

    iput-object p2, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    .line 81
    const-string p1, "dirFilter"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lorg/apache/commons/io/file/PathFilter;

    iput-object p3, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->dirFilter:Lorg/apache/commons/io/file/PathFilter;

    return-void
.end method

.method public static withBigIntegerCounters()Lorg/apache/commons/io/file/CountingPathVisitor;
    .registers 2

    .line 45
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method

.method public static withLongCounters()Lorg/apache/commons/io/file/CountingPathVisitor;
    .registers 2

    .line 54
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 89
    :cond_4
    instance-of v0, p1, Lorg/apache/commons/io/file/CountingPathVisitor;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 92
    :cond_a
    check-cast p1, Lorg/apache/commons/io/file/CountingPathVisitor;

    .line 93
    iget-object p0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    iget-object p1, p1, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 1

    .line 102
    iget-object p0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 107
    iget-object p0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 35
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 112
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 113
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 35
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 118
    iget-object p0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->dirFilter:Lorg/apache/commons/io/file/PathFilter;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    .line 119
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq p0, p1, :cond_d

    sget-object p0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p0

    :cond_d
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 124
    iget-object p0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .registers 3

    .line 135
    iget-object p0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getDirectoryCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    return-void
.end method

.method protected updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .registers 3

    .line 145
    iget-object p1, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 146
    iget-object p0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->pathCounters:Lorg/apache/commons/io/file/Counters$PathCounters;

    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object p0

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V

    return-void
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 3

    .line 35
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 5

    const/4 v0, 0x0

    .line 151
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/apache/commons/io/file/CountingPathVisitor;->fileFilter:Lorg/apache/commons/io/file/PathFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    sget-object v1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne v0, v1, :cond_16

    .line 152
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 154
    :cond_16
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method
