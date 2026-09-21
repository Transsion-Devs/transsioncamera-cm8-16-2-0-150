.class public final Lorg/apache/commons/io/file/PathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
    }
.end annotation


# static fields
.field public static final EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

.field public static final EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

.field public static final EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

.field public static final EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

.field public static final EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

.field public static final EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

.field public static final NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;


# direct methods
.method public static synthetic $r8$lambda$Cbl0wyzAzuvD7vbOe_FQzgEgDTA(Lorg/apache/commons/io/file/PathFilter;ZLjava/nio/file/Path;)Z
    .registers 3

    if-eqz p1, :cond_7

    .line 1045
    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 1044
    :goto_8
    invoke-interface {p0, p2, p1}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$kL69JAh52ACIh8i7n4ongwS1dT0(Lorg/apache/commons/io/file/PathFilter;Ljava/nio/file/Path;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 700
    :try_start_2
    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_10

    if-ne p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :catch_10
    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$rVW44PgNx-0RnFq5lCtzPnzLvsQ(Lorg/apache/commons/io/file/DeleteOption;)Z
    .registers 2

    .line 844
    sget-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 139
    new-array v1, v0, [Ljava/nio/file/CopyOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

    .line 146
    new-array v1, v0, [Lorg/apache/commons/io/file/DeleteOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    .line 151
    new-array v1, v0, [Ljava/nio/file/FileVisitOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    .line 156
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 163
    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v1}, [Ljava/nio/file/LinkOption;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 168
    new-array v1, v0, [Ljava/nio/file/OpenOption;

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    .line 175
    new-array v0, v0, [Ljava/nio/file/Path;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 3

    .line 69
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object p0

    return-object p0
.end method

.method private static accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .registers 4

    .line 188
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->withLongCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    .line 189
    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set;

    move-result-object p2

    .line 188
    invoke-static {v0, p0, p2, p1}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;Ljava/util/Set;I)Ljava/nio/file/FileVisitor;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    return-object p0
.end method

.method public static cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 200
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 5

    .line 214
    new-instance v0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/io/file/CleaningPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 5

    .line 229
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    .line 230
    new-instance v0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    .line 231
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 230
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    .line 232
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 3

    .line 247
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 248
    :try_start_4
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    if-eqz p0, :cond_c

    .line 250
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_c
    return-object p1

    :catchall_d
    move-exception p1

    .line 247
    :try_start_e
    throw p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    :catchall_f
    move-exception p2

    if-eqz p0, :cond_1a

    .line 250
    :try_start_12
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    throw p2
.end method

.method public static varargs copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 4

    .line 280
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 281
    :try_start_4
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {v0, p0, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_15

    if-eqz v0, :cond_14

    .line 283
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_14
    return-object p1

    :catchall_15
    move-exception p0

    .line 280
    :try_start_16
    throw p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception p1

    if-eqz v0, :cond_22

    .line 283
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw p1
.end method

.method public static varargs copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .registers 4

    .line 265
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 3

    .line 294
    new-instance v0, Lorg/apache/commons/io/file/CountingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/CountingPathVisitor;

    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 307
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 311
    :cond_8
    invoke-static {p0, p1}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static current()Ljava/nio/file/Path;
    .registers 2

    const/4 v0, 0x0

    .line 322
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 342
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 4

    .line 391
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0

    .line 392
    :cond_b
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 3

    .line 365
    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    filled-new-array {v0}, [Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0

    .line 366
    :cond_11
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 403
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 6

    .line 434
    new-instance v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/io/file/DeletingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    .line 435
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 6

    .line 417
    new-instance v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    .line 418
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/apache/commons/io/file/DeletingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    .line 417
    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    .line 419
    invoke-virtual {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 2

    .line 447
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 7

    .line 478
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 481
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    .line 482
    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 483
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    goto :goto_1d

    :cond_1b
    const-wide/16 v2, 0x0

    .line 484
    :goto_1d
    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z

    move-result p2

    if-eqz p2, :cond_29

    if-eqz v1, :cond_29

    const/4 p2, 0x0

    .line 485
    invoke-static {p0, p2, p1}, Lorg/apache/commons/io/file/PathUtils;->setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 487
    :cond_29
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 488
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 489
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V

    :cond_3d
    return-object v0

    .line 479
    :cond_3e
    new-instance p1, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .registers 3

    .line 462
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object p0

    return-object p0
.end method

.method public static directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 5

    .line 504
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/file/PathUtils;->directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z

    move-result p0

    return p0
.end method

.method public static directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z
    .registers 15

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_62

    if-nez p1, :cond_c

    goto :goto_62

    .line 530
    :cond_c
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v2}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v0

    .line 533
    :cond_1d
    new-instance v3, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;

    const v6, 0x7fffffff

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V

    .line 536
    iget-boolean p0, v3, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    if-nez p0, :cond_2f

    return v1

    .line 540
    :cond_2f
    iget-object p0, v3, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList1:Ljava/util/List;

    .line 541
    iget-object p1, v3, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList2:Ljava/util/List;

    .line 542
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/file/Path;

    .line 543
    invoke-static {p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p4

    const/4 v2, -0x1

    if-le p4, v2, :cond_59

    .line 547
    invoke-interface {v4, p2}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p4

    invoke-interface {v5, p2}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p4, p2, v7, p3}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    move-result p2

    if-nez p2, :cond_37

    return v1

    .line 545
    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected mismatch."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    return v0

    :cond_62
    :goto_62
    return v1
.end method

.method public static directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 5

    .line 564
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    const v2, 0x7fffffff

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z

    move-result p0

    return p0
.end method

.method public static directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z
    .registers 12

    .line 582
    new-instance v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V

    iget-boolean p0, v0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    return p0
.end method

.method public static fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 4

    .line 599
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    move-result p0

    return p0
.end method

.method public static fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z
    .registers 12

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_a4

    if-nez p1, :cond_d

    goto/16 :goto_a4

    .line 625
    :cond_d
    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v2

    .line 626
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v3

    .line 627
    invoke-static {v2, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    .line 628
    invoke-static {v3, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eq v4, v5, :cond_20

    return v1

    :cond_20
    if-nez v4, :cond_23

    return v0

    .line 636
    :cond_23
    invoke-static {v2, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    const-string v5, "Can\'t compare directories, only files: "

    if-nez v4, :cond_8f

    .line 640
    invoke-static {v3, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-nez p2, :cond_7a

    .line 644
    invoke-static {v2}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v4

    invoke-static {v3}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v6

    cmp-long p2, v4, v6

    if-eqz p2, :cond_3e

    return v1

    .line 648
    :cond_3e
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    return v0

    .line 652
    :cond_45
    invoke-static {v2, p3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    .line 653
    :try_start_49
    invoke-static {v3, p3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_57

    .line 654
    :try_start_4d
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_5f

    if-eqz p1, :cond_59

    .line 655
    :try_start_53
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_59

    :catchall_57
    move-exception p1

    goto :goto_6d

    :cond_59
    :goto_59
    if-eqz p0, :cond_5e

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5e
    return p2

    :catchall_5f
    move-exception p2

    .line 652
    :try_start_60
    throw p2
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p3

    if-eqz p1, :cond_6c

    .line 655
    :try_start_64
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception p1

    :try_start_69
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6c
    :goto_6c
    throw p3
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_57

    .line 652
    :goto_6d
    :try_start_6d
    throw p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p2

    if-eqz p0, :cond_79

    .line 655
    :try_start_71
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_79
    :goto_79
    throw p2

    .line 642
    :cond_7a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 638
    :cond_8f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a4
    :goto_a4
    return v1
.end method

.method public static varargs filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;
    .registers 3

    .line 684
    const-string v0, "filter"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_a

    .line 686
    sget-object p0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    return-object p0

    .line 688
    :cond_a
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/file/PathUtils;->filterPaths(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    sget-object p1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/nio/file/Path;

    return-object p0
.end method

.method private static filterPaths(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/util/stream/Collector<",
            "-",
            "Ljava/nio/file/Path;",
            "TA;TR;>;)TR;"
        }
    .end annotation

    .line 693
    const-string v0, "filter"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 694
    const-string v0, "collector"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_15

    .line 696
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 698
    :cond_15
    new-instance v0, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/file/PathFilter;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 704
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/attribute/AclEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 716
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    const-class v1, Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-static {p0, v1, v0}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/AclFileAttributeView;

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 718
    :cond_f
    invoke-interface {p0}, Ljava/nio/file/attribute/AclFileAttributeView;->getAcl()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 736
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmpty(Ljava/nio/file/Path;)Z
    .registers 2

    const/4 v0, 0x0

    .line 747
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->isEmptyDirectory(Ljava/nio/file/Path;)Z

    move-result p0

    return p0

    :cond_e
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->isEmptyFile(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static isEmptyDirectory(Ljava/nio/file/Path;)Z
    .registers 3

    .line 763
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    .line 764
    :try_start_4
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    xor-int/lit8 v0, v0, 0x1

    .line 765
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return v0

    :catchall_12
    move-exception v0

    .line 763
    :try_start_13
    throw v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v1

    if-eqz p0, :cond_1f

    .line 765
    :try_start_17
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
.end method

.method public static isEmptyFile(Ljava/nio/file/Path;)Z
    .registers 5

    .line 779
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z
    .registers 7

    .line 796
    const-string v0, "file"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 797
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    .line 800
    :cond_f
    invoke-static {p0, p3}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-lez p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v0
.end method

.method public static varargs isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 2

    if-eqz p0, :cond_a

    .line 818
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/apache/commons/io/file/PathFilter;",
            ")",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 831
    new-instance v0, Lorg/apache/commons/io/file/DirectoryStreamFilter;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/file/DirectoryStreamFilter;-><init>(Lorg/apache/commons/io/file/PathFilter;)V

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    return-object p0
.end method

.method private static varargs overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 844
    :cond_4
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 3

    const/4 v0, 0x0

    .line 856
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v1, v0}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2

    .line 870
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 872
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method static relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;",
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

    .line 887
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda1;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    if-eqz p2, :cond_1d

    if-nez p3, :cond_19

    .line 889
    invoke-interface {p0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p0

    goto :goto_1d

    :cond_19
    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 891
    :cond_1d
    :goto_1d
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static varargs setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .registers 5

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 910
    const-class v1, Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {p0, v1, p2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/DosFileAttributeView;

    if-eqz v1, :cond_18

    .line 914
    :try_start_10
    invoke-interface {v1, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p1

    .line 918
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    :cond_18
    const-class p1, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p1

    check-cast p1, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eqz p1, :cond_42

    .line 927
    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object p1

    .line 928
    invoke-interface {p1}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object p1

    .line 929
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 930
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 931
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 933
    :try_start_39
    invoke-static {p0, p1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    move-result-object p0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p1

    .line 935
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_52

    .line 939
    new-instance p1, Lorg/apache/commons/io/IOExceptionList;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lorg/apache/commons/io/IOExceptionList;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1

    .line 941
    :cond_52
    new-instance p1, Ljava/io/IOException;

    .line 943
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    .line 942
    const-string p2, "No DosFileAttributeView or PosixFileAttributeView for \'%s\' (linkOptions=%s)"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static varargs toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_9

    .line 953
    const-class p0, Ljava/nio/file/FileVisitOption;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 954
    :cond_9
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static varargs visitFileTree(Ljava/nio/file/FileVisitor;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/FileVisitor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1010
    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    return-object p0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/net/URI;)Ljava/nio/file/FileVisitor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .line 1027
    invoke-static {p1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object p0

    return-object p0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .line 971
    invoke-static {p1, p0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-object p0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;Ljava/util/Set;I)Ljava/nio/file/FileVisitor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I)TT;"
        }
    .end annotation

    .line 991
    invoke-static {p1, p2, p3, p0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-object p0
.end method

.method public static varargs walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "IZ[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1044
    invoke-static {p0, p2, p4}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, p3}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/file/PathFilter;Z)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
