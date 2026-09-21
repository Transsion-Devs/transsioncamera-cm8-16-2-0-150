.class public Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIB_DIR:Ljava/lang/String; = "libso"

.field private static final TAG:Ljava/lang/String; = "VESafelyLibsLoader"

.field private static sLoadedLibs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;->sLoadedLibs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLibraryFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 119
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;->getLibraryFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLibraryFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    if-eqz p0, :cond_22

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 111
    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libso"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_21

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/vesdk/VEFileUtils;->mkdir(Ljava/lang/String;)Z

    :cond_21
    return-object v0

    :cond_22
    :goto_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 41
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 42
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized loadLibrary(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9

    const-class v0, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;->sLoadedLibs:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3a

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 54
    monitor-exit v0

    return v2

    :cond_e
    const/4 v1, 0x0

    .line 72
    :try_start_f
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 73
    sget-object v3, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;->sLoadedLibs:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_f .. :try_end_17} :catch_1b
    .catchall {:try_start_f .. :try_end_17} :catchall_19

    goto/16 :goto_e0

    :catchall_19
    move-exception p1

    goto :goto_1d

    :catch_1b
    move-exception v3

    goto :goto_3d

    .line 101
    :goto_1d
    :try_start_1d
    const-string v2, "VESafelyLibsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLibrary "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " error"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_3a

    .line 102
    monitor-exit v0

    return v1

    :catchall_3a
    move-exception p0

    goto/16 :goto_e4

    .line 75
    :goto_3d
    :try_start_3d
    const-string v4, "VESafelyLibsLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadLibrary "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadLibrary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/ss/android/ttve/log/TELog2Client;->logToLocal(ILjava/lang/String;)V

    .line 78
    invoke-static {p1, p0}, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;->getLibraryFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4
    :try_end_7d
    .catchall {:try_start_3d .. :try_end_7d} :catchall_3a

    if-nez v4, :cond_81

    .line 80
    monitor-exit v0

    return v1

    .line 82
    :cond_81
    :try_start_81
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 84
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 86
    :cond_8a
    invoke-static {p1, p0, v4}, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;->unpackLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d4

    .line 88
    const-string p0, "loadLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/ss/android/ttve/log/TELog2Client;->logToLocal(ILjava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_81 .. :try_end_d2} :catchall_3a

    .line 90
    monitor-exit v0

    return v1

    .line 93
    :cond_d4
    :try_start_d4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 94
    sget-object p1, Lcom/ss/android/vesdk/runtime/VESafelyLibsLoader;->sLoadedLibs:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e0
    .catchall {:try_start_d4 .. :try_end_e0} :catchall_e2

    .line 104
    :goto_e0
    monitor-exit v0

    return v2

    .line 96
    :catchall_e2
    monitor-exit v0

    return v1

    :goto_e4
    :try_start_e4
    monitor-exit v0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_3a

    throw p0
.end method

.method private static unpackLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 11

    .line 130
    const-string v0, "/"

    const-string v1, "lib/"

    const/4 v2, 0x0

    .line 134
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 135
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/io/File;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v3, v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_be

    .line 136
    :try_start_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    const/4 v5, 0x0

    if-nez p0, :cond_87

    const/16 p0, 0x2d

    .line 139
    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p0, :cond_49

    goto :goto_4d

    .line 141
    :cond_49
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    .line 140
    :goto_4d
    invoke-virtual {v4, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_86

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Library entry not found:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_79
    .catchall {:try_start_16 .. :try_end_79} :catchall_83

    .line 163
    invoke-static {v2}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v2}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/io/Closeable;)V

    .line 165
    :goto_7f
    invoke-static {v3}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/util/zip/ZipFile;)V

    return-object p0

    :catchall_83
    move-exception p0

    move-object p1, v2

    goto :goto_c1

    :cond_86
    move-object p0, p1

    .line 149
    :cond_87
    :try_start_87
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 150
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_83

    .line 151
    :try_start_8e
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_b9

    const/16 v0, 0x4000

    .line 153
    :try_start_95
    new-array v0, v0, [B

    .line 154
    :goto_97
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_a6

    .line 155
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_97

    :catchall_a1
    move-exception p2

    move-object v2, p1

    move-object p1, p0

    move-object p0, p2

    goto :goto_c1

    .line 157
    :cond_a6
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x1ed

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VEFileUtils;->setPermissions(Ljava/lang/String;I)V
    :try_end_af
    .catchall {:try_start_95 .. :try_end_af} :catchall_a1

    .line 163
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/io/Closeable;)V

    .line 164
    invoke-static {p0}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/io/Closeable;)V

    .line 165
    invoke-static {v3}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/util/zip/ZipFile;)V

    return-object v2

    :catchall_b9
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_c1

    :catchall_be
    move-exception p0

    move-object p1, v2

    move-object v3, p1

    .line 161
    :goto_c1
    :try_start_c1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_c5
    .catchall {:try_start_c1 .. :try_end_c5} :catchall_cc

    .line 163
    invoke-static {v2}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/io/Closeable;)V

    .line 164
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/io/Closeable;)V

    goto :goto_7f

    :catchall_cc
    move-exception p0

    .line 163
    invoke-static {v2}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/io/Closeable;)V

    .line 164
    invoke-static {p1}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/io/Closeable;)V

    .line 165
    invoke-static {v3}, Lcom/ss/android/vesdk/VEFileUtils;->close(Ljava/util/zip/ZipFile;)V

    .line 166
    throw p0
.end method
