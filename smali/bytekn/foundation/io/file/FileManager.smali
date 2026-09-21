.class public final Lbytekn/foundation/io/file/FileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lbytekn/foundation/io/file/FileManager;

# The value of this static final field might be set in the static constructor
.field private static final defaultCacheDir:Ljava/lang/String; = ""

.field private static final separator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lbytekn/foundation/io/file/FileManager;

    invoke-direct {v0}, Lbytekn/foundation/io/file/FileManager;-><init>()V

    sput-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    .line 18
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "File.separator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lbytekn/foundation/io/file/FileManager;->separator:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lbytekn/foundation/io/file/FileManager;->defaultCacheDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildStats(Ljava/io/File;)Lbytekn/foundation/io/file/FileMeta;
    .registers 10

    .line 78
    new-instance p0, Lbytekn/foundation/io/file/FileManager$buildStats$fileType$1;

    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/FileManager$buildStats$fileType$1;-><init>(Ljava/io/File;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lbytekn/foundation/io/file/FileType;

    .line 85
    new-instance v0, Lbytekn/foundation/io/file/FileMeta;

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string p0, "file.name"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v2, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v3, Lbytekn/foundation/io/file/FilePathComponent;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lbytekn/foundation/io/file/FilePathComponent;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 85
    invoke-direct/range {v0 .. v7}, Lbytekn/foundation/io/file/FileMeta;-><init>(Ljava/lang/String;Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;Lbytekn/foundation/io/file/FileType;)V

    return-object v0
.end method

.method public static synthetic openFileOutputStream$default(Lbytekn/foundation/io/file/FileManager;Lbytekn/foundation/io/file/FilePathComponent;ZILjava/lang/Object;)Lbytekn/foundation/io/file/FileOutputStream;
    .registers 5

    .line 0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream(Lbytekn/foundation/io/file/FilePathComponent;Z)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic openFileOutputStream$default(Lbytekn/foundation/io/file/FileManager;Ljava/lang/String;ZILjava/lang/Object;)Lbytekn/foundation/io/file/FileOutputStream;
    .registers 5

    .line 0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream(Ljava/lang/String;Z)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method private final writeFile(Ljava/lang/String;Ljava/lang/String;ZLbytekn/foundation/io/file/ContentEncoding;Z)J
    .registers 11

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_17

    if-nez p3, :cond_14

    return-wide v2

    .line 124
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 130
    :cond_17
    sget-object p3, Lbytekn/foundation/io/file/ContentEncoding;->Base64:Lbytekn/foundation/io/file/ContentEncoding;

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    if-ne p4, p3, :cond_55

    if-eqz p5, :cond_39

    .line 131
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p3}, Lbytekn/foundation/io/file/FileManager;->readFile(Ljava/lang/String;Lbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    goto :goto_2f

    .line 132
    :cond_2d
    const-string p0, ""

    :goto_2f
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 134
    :cond_39
    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_4f

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    invoke-static {p0, p5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Base64.encodeToString(so\u2026s.UTF_8), Base64.DEFAULT)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_74

    :cond_4f
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_55
    sget-object p0, Lbytekn/foundation/io/file/FileManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_61

    goto :goto_73

    .line 139
    :cond_61
    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_9d

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_73
    move-object p0, p2

    .line 146
    :goto_74
    :try_start_74
    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7e} :catch_90

    .line 148
    :try_start_7e
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 150
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_92

    const/4 p2, 0x0

    .line 147
    :try_start_87
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_90

    int-to-long p0, p0

    return-wide p0

    :catch_90
    move-exception p0

    goto :goto_99

    :catchall_92
    move-exception p0

    .line 147
    :try_start_93
    throw p0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p2

    :try_start_95
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_99} :catch_90

    .line 153
    :goto_99
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v2

    .line 139
    :cond_9d
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic writeFile$default(Lbytekn/foundation/io/file/FileManager;Ljava/lang/String;Ljava/lang/String;ZLbytekn/foundation/io/file/ContentEncoding;ILjava/lang/Object;)J
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    sget-object p4, Lbytekn/foundation/io/file/ContentEncoding;->Utf8:Lbytekn/foundation/io/file/ContentEncoding;

    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lbytekn/foundation/io/file/FileManager;->writeFile(Ljava/lang/String;Ljava/lang/String;ZLbytekn/foundation/io/file/ContentEncoding;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final closeQuietly(Lbytekn/foundation/io/file/KnCloseable;)V
    .registers 2

    const-string p0, "closeable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    :try_start_5
    invoke-interface {p1}, Lbytekn/foundation/io/file/KnCloseable;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final exists(Lbytekn/foundation/io/file/FilePathComponent;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 200
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 201
    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_e
    return v0
.end method

.method public final exists(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_10

    .line 194
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final file(Lbytekn/foundation/io/file/FilePathComponent;)Lbytekn/foundation/io/file/FileMeta;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 73
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 74
    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->file(Ljava/lang/String;)Lbytekn/foundation/io/file/FileMeta;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v0
.end method

.method public final file(Ljava/lang/String;)Lbytekn/foundation/io/file/FileMeta;
    .registers 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, v0}, Lbytekn/foundation/io/file/FileManager;->buildStats(Ljava/io/File;)Lbytekn/foundation/io/file/FileMeta;

    move-result-object p0

    return-object p0
.end method

.method public final fileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_c

    .line 67
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFileChildrenList(Ljava/lang/String;)Ljava/util/List;
    .registers 11

    const/4 p0, 0x0

    if-eqz p1, :cond_8a

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8a

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_8a

    .line 40
    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_21

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 43
    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_35
    if-ge v4, v2, :cond_89

    aget-object v5, p1, v4

    .line 45
    const-string v6, "it"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 46
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.name"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "__MACOSX"

    const/4 v8, 0x2

    invoke-static {v6, v7, v3, v8, p0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    .line 47
    sget-object v6, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lbytekn/foundation/io/file/FileManager;->getFileChildrenList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6d

    .line 48
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_83

    :cond_6d
    move-object v5, p0

    goto :goto_83

    .line 47
    :cond_6f
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_83

    .line 54
    :cond_72
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "it.absolutePath"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 55
    :goto_83
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    :cond_89
    return-object v0

    :cond_8a
    :goto_8a
    return-object p0
.end method

.method public final getSeparator()Ljava/lang/String;
    .registers 1

    .line 18
    sget-object p0, Lbytekn/foundation/io/file/FileManager;->separator:Ljava/lang/String;

    return-object p0
.end method

.method public final mkdir(Ljava/lang/String;Z)Z
    .registers 3

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    if-eqz p2, :cond_15

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    return p0

    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    return p0
.end method

.method public final moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string p0, "srcPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "destPath"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    .line 219
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final openFileInputStream(Lbytekn/foundation/io/file/FilePathComponent;)Lbytekn/foundation/io/file/FileInputStream;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 273
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 274
    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->openFileInputStream(Ljava/lang/String;)Lbytekn/foundation/io/file/FileInputStream;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v0
.end method

.method public final openFileInputStream(Ljava/lang/String;)Lbytekn/foundation/io/file/FileInputStream;
    .registers 2

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    .line 265
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 266
    new-instance p0, Lbytekn/foundation/io/file/FileInputStream;

    invoke-direct {p0}, Lbytekn/foundation/io/file/FileInputStream;-><init>()V

    .line 267
    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileInputStream;->setInputStream(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public final openFileOutputStream(Lbytekn/foundation/io/file/FilePathComponent;Z)Lbytekn/foundation/io/file/FileOutputStream;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 287
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 288
    invoke-virtual {p0, p1, p2}, Lbytekn/foundation/io/file/FileManager;->openFileOutputStream(Ljava/lang/String;Z)Lbytekn/foundation/io/file/FileOutputStream;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v0
.end method

.method public final openFileOutputStream(Ljava/lang/String;Z)Lbytekn/foundation/io/file/FileOutputStream;
    .registers 3

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    .line 279
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 280
    new-instance p0, Lbytekn/foundation/io/file/FileOutputStream;

    invoke-direct {p0}, Lbytekn/foundation/io/file/FileOutputStream;-><init>()V

    .line 281
    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileOutputStream;->setOutputStream(Ljava/io/FileOutputStream;)V

    return-object p0
.end method

.method public final readDir(Ljava/lang/String;)Ljava/util/List;
    .registers 7

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 382
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_31

    aget-object v2, p0, v1

    .line 25
    sget-object v3, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lbytekn/foundation/io/file/FileManager;->buildStats(Ljava/io/File;)Lbytekn/foundation/io/file/FileMeta;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_31
    return-object p1

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public final readFile(Ljava/lang/String;Lbytekn/foundation/io/file/ContentEncoding;)Ljava/lang/String;
    .registers 12

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "encoding"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    .line 99
    new-instance p1, Lbytekn/foundation/io/file/FileManager$readFile$charset$1;

    invoke-direct {p1, p2}, Lbytekn/foundation/io/file/FileManager$readFile$charset$1;-><init>(Lbytekn/foundation/io/file/ContentEncoding;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    .line 105
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 106
    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, "\n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 108
    sget-object p1, Lbytekn/foundation/io/file/ContentEncoding;->Base64:Lbytekn/foundation/io/file/ContentEncoding;

    if-ne p2, p1, :cond_58

    const/4 p1, 0x0

    .line 109
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string p1, "Base64.decode(content, Base64.DEFAULT)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    :cond_58
    return-object p0
.end method

.method public final remove(Lbytekn/foundation/io/file/FilePathComponent;)Z
    .registers 2

    if-eqz p1, :cond_d

    .line 212
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 213
    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final remove(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    const-string p1, "file.absoluteFile"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public final renameFile(Lbytekn/foundation/io/file/FilePathComponent;Lbytekn/foundation/io/file/FilePathComponent;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    .line 252
    invoke-virtual {p0, p2}, Lbytekn/foundation/io/file/FileManager;->exists(Lbytekn/foundation/io/file/FilePathComponent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 253
    invoke-virtual {p0, p2}, Lbytekn/foundation/io/file/FileManager;->remove(Lbytekn/foundation/io/file/FilePathComponent;)Z

    .line 255
    :cond_e
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_27

    return v0

    .line 260
    :cond_27
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_2c
    return v0
.end method

.method public final touch(Lbytekn/foundation/io/file/FilePathComponent;)Z
    .registers 3

    const-string v0, "pathComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lbytekn/foundation/io/file/FilePathComponent;->getComponent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 176
    invoke-virtual {p0, p1}, Lbytekn/foundation/io/file/FileManager;->touch(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final touch(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    return p0
.end method

.method public final unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "zipFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unzipFileFolderPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "dir.absolutePath"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lbytekn/foundation/io/file/FileManager;->remove(Ljava/lang/String;)Z

    :cond_21
    const/4 p0, 0x0

    .line 322
    :try_start_22
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    .line 324
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_35
    .catch Lbytekn/foundation/io/file/IOException; {:try_start_22 .. :try_end_35} :catch_f4
    .catchall {:try_start_22 .. :try_end_35} :catchall_f0

    .line 325
    :try_start_35
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    :goto_39
    if-eqz p1, :cond_e6

    .line 329
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string v3, "szName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "../"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, p0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 331
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 332
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_39

    :catchall_56
    move-exception p0

    goto/16 :goto_106

    :catch_59
    move-exception p0

    goto/16 :goto_f7

    .line 335
    :cond_5c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 337
    const-string v6, "canonicalDestPath"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "canonicalDirPath"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p2, v5, v4, p0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 340
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 341
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 342
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_39

    .line 345
    :cond_83
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_93

    .line 346
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_93

    .line 347
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_9c

    .line 348
    :cond_93
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 349
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 351
    :cond_9c
    :goto_9c
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 352
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/16 v3, 0x2000

    .line 353
    new-array v3, v3, [B

    .line 354
    :goto_af
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_bc

    .line 355
    invoke-virtual {p1, v3, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_af

    .line 357
    :cond_bc
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 358
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 359
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 360
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto/16 :goto_39

    .line 338
    :cond_cb
    new-instance p0, Lbytekn/foundation/io/file/UnzipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Entry is outside of the target dir: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbytekn/foundation/io/file/UnzipException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_e6
    .catch Lbytekn/foundation/io/file/IOException; {:try_start_35 .. :try_end_e6} :catch_59
    .catchall {:try_start_35 .. :try_end_e6} :catchall_56

    :cond_e6
    const/4 p0, 0x1

    .line 367
    :try_start_e7
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_eb

    return p0

    :catch_eb
    move-exception p1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    :catchall_f0
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_106

    :catch_f4
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 364
    :goto_f7
    :try_start_f7
    new-instance p1, Lbytekn/foundation/io/file/UnzipException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_100

    goto :goto_102

    :cond_100
    const-string p0, ""

    :goto_102
    invoke-direct {p1, p0}, Lbytekn/foundation/io/file/UnzipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_106
    .catchall {:try_start_f7 .. :try_end_106} :catchall_56

    :goto_106
    if-eqz v1, :cond_110

    .line 367
    :try_start_108
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_10c

    goto :goto_110

    :catch_10c
    move-exception p1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 370
    :cond_110
    :goto_110
    throw p0
.end method

.method public final writeFile(Ljava/lang/String;Ljava/lang/String;ZLbytekn/foundation/io/file/ContentEncoding;)J
    .registers 12

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 160
    invoke-direct/range {v1 .. v6}, Lbytekn/foundation/io/file/FileManager;->writeFile(Ljava/lang/String;Ljava/lang/String;ZLbytekn/foundation/io/file/ContentEncoding;Z)J

    move-result-wide p0

    return-wide p0
.end method
