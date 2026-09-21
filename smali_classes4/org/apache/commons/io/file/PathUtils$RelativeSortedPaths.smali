.class Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/file/PathUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelativeSortedPaths"
.end annotation


# instance fields
.field final equals:Z

.field final relativeFileList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final relativeFileList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V
    .registers 12

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 100
    iput-boolean v0, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto/16 :goto_87

    :cond_d
    const/4 v2, 0x0

    if-nez p1, :cond_12

    move v3, v0

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    if-nez p2, :cond_17

    move v4, v0

    goto :goto_18

    :cond_17
    move v4, v2

    :goto_18
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1f

    .line 102
    iput-boolean v2, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto/16 :goto_87

    .line 104
    :cond_1f
    invoke-static {p1, p4}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    .line 105
    invoke-static {p2, p4}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p4

    if-nez v3, :cond_7f

    if-eqz p4, :cond_2c

    goto :goto_7f

    .line 109
    :cond_2c
    # invokes: Lorg/apache/commons/io/file/PathUtils;->accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    invoke-static {p1, p3, p5}, Lorg/apache/commons/io/file/PathUtils;->access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object p4

    .line 110
    # invokes: Lorg/apache/commons/io/file/PathUtils;->accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    invoke-static {p2, p3, p5}, Lorg/apache/commons/io/file/PathUtils;->access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object p3

    .line 111
    invoke-virtual {p4}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    invoke-virtual {p3}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne p5, v3, :cond_7c

    .line 112
    invoke-virtual {p4}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    invoke-virtual {p3}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq p5, v3, :cond_59

    goto :goto_7c

    .line 115
    :cond_59
    invoke-virtual {p4, p1, v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p5

    .line 116
    invoke-virtual {p3, p2, v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    .line 117
    invoke-interface {p5, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6a

    .line 118
    iput-boolean v2, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto :goto_87

    .line 120
    :cond_6a
    invoke-virtual {p4, p1, v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-virtual {p3, p2, v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 122
    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto :goto_88

    .line 113
    :cond_7c
    :goto_7c
    iput-boolean v2, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    goto :goto_87

    :cond_7f
    :goto_7f
    if-eqz v3, :cond_84

    if-eqz p4, :cond_84

    goto :goto_85

    :cond_84
    move v0, v2

    .line 107
    :goto_85
    iput-boolean v0, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    :goto_87
    move-object p1, v1

    .line 129
    :goto_88
    iput-object v1, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList1:Ljava/util/List;

    .line 130
    iput-object p1, p0, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList2:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V
    .registers 7

    .line 75
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)V

    return-void
.end method
