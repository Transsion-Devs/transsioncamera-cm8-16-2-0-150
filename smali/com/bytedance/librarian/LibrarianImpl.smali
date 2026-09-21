.class Lcom/bytedance/librarian/LibrarianImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/librarian/LibrarianImpl$Locker;,
        Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;,
        Lcom/bytedance/librarian/LibrarianImpl$Constants;
    }
.end annotation


# static fields
.field private static final SYSTEM_LIB_LIST:[Ljava/lang/String;

.field static final instance:Lcom/bytedance/librarian/LibrarianImpl;


# instance fields
.field final SYSTEM_LIB64_DIR_LIST:[Ljava/lang/String;

.field private mAbi:Ljava/lang/String;

.field private mAbiToInstructionSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAbis:[Ljava/lang/String;

.field private mApkZipFiles:[Ljava/util/zip/ZipFile;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private volatile mIsLazyInitialized:Z

.field private final mLoadedLibMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockFile:Ljava/io/File;

.field private final mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

.field private mNativeLibDir:Ljava/io/File;

.field private mVmInstructionSet:Ljava/lang/String;

.field private final mWorkDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 55
    const-string v12, "OpenSLES"

    const-string v13, "OpenMAXAL"

    const-string v0, "log"

    const-string v1, "m"

    const-string v2, "stdc++"

    const-string v3, "dl"

    const-string v4, "c"

    const-string v5, "z"

    const-string v6, "android"

    const-string v7, "jnigraphics"

    const-string v8, "EGL"

    const-string v9, "GLESv1_CM"

    const-string v10, "GLESv2"

    const-string v11, "GLESv3"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/librarian/LibrarianImpl;->SYSTEM_LIB_LIST:[Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/bytedance/librarian/Librarian;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 92
    sput-object v1, Lcom/bytedance/librarian/Librarian;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_be

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 101
    const-string v3, "librarian"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_3d
    sget-object v3, Lcom/bytedance/librarian/Librarian;->sVersion:Ljava/lang/String;

    if-eqz v3, :cond_44

    sget-object v3, Lcom/bytedance/librarian/Librarian;->sVersion:Ljava/lang/String;

    goto :goto_46

    :cond_44
    const-string v3, "default.version"

    .line 108
    :goto_46
    new-instance v5, Ljava/io/File;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const/16 v3, 0x8

    shr-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 114
    array-length v3, v0

    move v6, v4

    :goto_75
    if-ge v6, v3, :cond_a0

    aget-object v7, v0, v6

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    goto :goto_9d

    .line 119
    :cond_88
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_9a

    .line 121
    array-length v9, v8

    move v10, v4

    :goto_90
    if-ge v10, v9, :cond_9a

    aget-object v11, v8, v10

    .line 122
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_90

    .line 126
    :cond_9a
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_9d
    add-int/lit8 v6, v6, 0x1

    goto :goto_75

    .line 130
    :cond_a0
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 132
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 133
    sget-object v0, Lcom/bytedance/librarian/Librarian;->sMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    if-eqz v0, :cond_ae

    goto :goto_b3

    :cond_ae
    new-instance v0, Lcom/bytedance/librarian/LibrarianMonitor;

    invoke-direct {v0}, Lcom/bytedance/librarian/LibrarianMonitor;-><init>()V

    .line 136
    :goto_b3
    new-instance v1, Lcom/bytedance/librarian/LibrarianImpl;

    invoke-direct {v1, v2, v5, v0}, Lcom/bytedance/librarian/LibrarianImpl;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/io/File;Lcom/bytedance/librarian/LibrarianMonitor;)V

    sput-object v1, Lcom/bytedance/librarian/LibrarianImpl;->instance:Lcom/bytedance/librarian/LibrarianImpl;

    return-void

    .line 138
    :cond_bb
    sput-object v1, Lcom/bytedance/librarian/LibrarianImpl;->instance:Lcom/bytedance/librarian/LibrarianImpl;

    return-void

    .line 95
    :cond_be
    new-instance v0, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;

    const-string v1, "you should call init first or use loadLibraryForModule."

    invoke-direct {v0, v1}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/io/File;Lcom/bytedance/librarian/LibrarianMonitor;)V
    .registers 6

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "/system/lib64"

    const-string v1, "/vendor/lib64"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->SYSTEM_LIB64_DIR_LIST:[Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mWorkDir:Ljava/io/File;

    .line 144
    iput-object p3, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    .line 146
    iput-object p1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 148
    new-instance p1, Ljava/io/File;

    const-string p3, "process.lock"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mLockFile:Ljava/io/File;

    .line 150
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mLoadedLibMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/librarian/LibrarianImpl;)Lcom/bytedance/librarian/LibrarianMonitor;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bytedance/librarian/LibrarianImpl;Ljava/io/Closeable;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private checkLazyInitialization()V
    .registers 12

    .line 337
    iget-boolean v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mIsLazyInitialized:Z

    if-eqz v0, :cond_6

    goto/16 :goto_110

    .line 341
    :cond_6
    monitor-enter p0

    .line 342
    :try_start_7
    iget-boolean v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mIsLazyInitialized:Z

    if-eqz v0, :cond_10

    .line 343
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    goto/16 :goto_111

    .line 346
    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    .line 351
    array-length v3, v0

    if-eqz v3, :cond_3c

    .line 352
    array-length v3, v0

    move v4, v2

    :goto_2d
    if-ge v4, v3, :cond_3c

    aget-object v5, v0, v4

    .line 353
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 358
    :cond_3c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/zip/ZipFile;

    .line 360
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_47
    if-ge v4, v3, :cond_93

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/io/File;
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_d

    add-int/lit8 v6, v2, 0x1

    .line 362
    :try_start_53
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v7, v0, v2
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5a} :catch_5b
    .catchall {:try_start_53 .. :try_end_5a} :catchall_d

    goto :goto_91

    :catch_5b
    move-exception v2

    .line 364
    :try_start_5c
    new-instance v7, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to get zip file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", exists "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5, v2}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_91
    move v2, v6

    goto :goto_47

    .line 369
    :cond_93
    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApkZipFiles:[Ljava/util/zip/ZipFile;

    .line 371
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mNativeLibDir:Ljava/io/File;

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbiToInstructionSetMap:Ljava/util/Map;

    .line 374
    const-string v1, "arm64-v8a"

    const-string v2, "arm64"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbiToInstructionSetMap:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    const-string v2, "arm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbiToInstructionSetMap:Ljava/util/Map;

    const-string v1, "armeabi"

    const-string v2, "arm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c0
    .catchall {:try_start_5c .. :try_end_c0} :catchall_d

    const/4 v0, 0x0

    .line 382
    :try_start_c1
    const-string v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 383
    const-string v2, "getRuntime"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 384
    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 385
    const-string v3, "vmInstructionSet"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_dd} :catch_df
    .catchall {:try_start_c1 .. :try_end_dd} :catchall_d

    move-object v0, v1

    goto :goto_ee

    :catch_df
    move-exception v1

    .line 387
    :try_start_e0
    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    const-string v3, "fail to process vm abi previously"

    new-instance v4, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;

    const-string v5, "reflect err"

    invoke-direct {v4, v5, v1}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/librarian/LibrarianMonitor;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    :goto_ee
    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mVmInstructionSet:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mVmInstructionSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    .line 395
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbis:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mIsLazyInitialized:Z

    .line 400
    monitor-exit p0

    :goto_110
    return-void

    :goto_111
    monitor-exit p0
    :try_end_112
    .catchall {:try_start_e0 .. :try_end_112} :catchall_d

    throw v0
.end method

.method private checkLibValid(Ljava/io/File;)Z
    .registers 9

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 268
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file is not exist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/librarian/LibrarianMonitor;->logWarning(Ljava/lang/String;)V

    return v1

    .line 272
    :cond_22
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/librarian/LibrarianImpl;->ensureRuntimeAbi(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApkZipFiles:[Ljava/util/zip/ZipFile;

    array-length v3, v2

    move v4, v1

    :goto_4c
    if-ge v4, v3, :cond_5e

    aget-object v5, v2, v4

    .line 277
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_5b

    .line 279
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    goto :goto_60

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_5e
    const-wide/16 v2, 0x0

    .line 284
    :goto_60
    invoke-direct {p0, p1}, Lcom/bytedance/librarian/LibrarianImpl;->doFileCheckSum(Ljava/io/File;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    .line 285
    const-string v6, ", file is "

    if-nez p1, :cond_8b

    .line 286
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " compare crc ok: entry is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 289
    :cond_8b
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " crc is wrong: entry is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/librarian/LibrarianMonitor;->logWarning(Ljava/lang/String;)V

    return v1
.end method

.method private checkRuntimeAbi(Ljava/lang/String;)Z
    .registers 3

    .line 648
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mVmInstructionSet:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 653
    :cond_6
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbiToInstructionSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mVmInstructionSet:Ljava/lang/String;

    if-eqz v0, :cond_13

    move-object p1, v0

    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 700
    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p1

    .line 702
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    const-string v0, "failed to close resource"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/librarian/LibrarianMonitor;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private doExtractLibFromZip(Ljava/io/File;)Z
    .registers 9

    .line 577
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/librarian/LibrarianImpl;->ensureRuntimeAbi(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApkZipFiles:[Ljava/util/zip/ZipFile;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2b
    if-ge v4, v2, :cond_77

    aget-object v5, v1, v4

    .line 582
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-nez v6, :cond_38

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 587
    :cond_38
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 589
    :try_start_3c
    invoke-direct {p0, v1, p1}, Lcom/bytedance/librarian/LibrarianImpl;->obtainEntryFileFromInputStream(Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;

    .line 590
    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get lib file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-virtual {v2, p1}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_3c .. :try_end_6d} :catchall_72

    .line 594
    invoke-direct {p0, v1}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_72
    move-exception p1

    invoke-direct {p0, v1}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_77
    return v3
.end method

.method private doFileCheckSum(Ljava/io/File;)J
    .registers 7

    const/16 v0, 0x2000

    .line 556
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 558
    :try_start_5
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v2, v3, v4}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_2e
    .catchall {:try_start_5 .. :try_end_14} :catchall_2c

    .line 562
    :cond_14
    :try_start_14
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_14

    .line 567
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_29
    .catchall {:try_start_14 .. :try_end_22} :catchall_26

    .line 572
    invoke-direct {p0, v2}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    return-wide v0

    :catchall_26
    move-exception p1

    move-object v1, v2

    goto :goto_4f

    :catch_29
    move-exception v0

    move-object v1, v2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    goto :goto_4f

    :catch_2e
    move-exception v0

    .line 569
    :goto_2f
    :try_start_2f
    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to check sum for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lcom/bytedance/librarian/LibrarianMonitor;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_2c

    .line 572
    invoke-direct {p0, v1}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :goto_4f
    invoke-direct {p0, v1}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private ensureRuntimeAbi(Ljava/lang/String;)V
    .registers 12

    .line 602
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbi:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    .line 606
    :cond_5
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbis:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_5d

    aget-object v4, v0, v3

    .line 607
    invoke-direct {p0, v4}, Lcom/bytedance/librarian/LibrarianImpl;->checkRuntimeAbi(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_5a

    .line 611
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 612
    iget-object v6, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApkZipFiles:[Ljava/util/zip/ZipFile;

    array-length v7, v6

    move v8, v2

    :goto_32
    if-ge v8, v7, :cond_5a

    aget-object v9, v6, v8

    if-eqz v9, :cond_57

    .line 614
    invoke-virtual {v9, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-eqz v9, :cond_57

    .line 616
    iput-object v4, p0, Lcom/bytedance/librarian/LibrarianImpl;->mAbi:Ljava/lang/String;

    .line 617
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ensure that abi is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    return-void

    :cond_57
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 624
    :cond_5d
    new-instance v0, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not ensure abi for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", check "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mVmInstructionSet:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", apks "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-direct {p0}, Lcom/bytedance/librarian/LibrarianImpl;->getApkZipFileInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private extractLibFromZip(Ljava/io/File;Z)V
    .registers 7

    .line 245
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 247
    monitor-enter p0

    .line 248
    :try_start_5
    new-instance v1, Lcom/bytedance/librarian/LibrarianImpl$Locker;

    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mLockFile:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lcom/bytedance/librarian/LibrarianImpl$Locker;-><init>(Lcom/bytedance/librarian/LibrarianImpl;Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4e

    .line 250
    :try_start_c
    invoke-virtual {v1}, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lock()V

    .line 251
    invoke-direct {p0, p1}, Lcom/bytedance/librarian/LibrarianImpl;->doExtractLibFromZip(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_49

    if-eqz p2, :cond_32

    .line 255
    iget-object p1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "may be system lib, no found "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    goto :goto_49

    :catchall_2e
    move-exception p1

    goto :goto_67

    :catch_30
    move-exception p1

    goto :goto_50

    .line 253
    :cond_32
    new-instance p1, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to extract "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_49} :catch_30
    .catchall {:try_start_c .. :try_end_49} :catchall_2e

    .line 261
    :cond_49
    :goto_49
    :try_start_49
    invoke-virtual {v1}, Lcom/bytedance/librarian/LibrarianImpl$Locker;->close()V

    .line 263
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception p1

    goto :goto_6b

    .line 259
    :goto_50
    :try_start_50
    new-instance p2, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to extract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_67
    .catchall {:try_start_50 .. :try_end_67} :catchall_2e

    .line 261
    :goto_67
    :try_start_67
    invoke-virtual {v1}, Lcom/bytedance/librarian/LibrarianImpl$Locker;->close()V

    throw p1

    .line 263
    :goto_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_4e

    throw p1
.end method

.method private getApkZipFileInfo()Ljava/lang/String;
    .registers 7

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mApkZipFiles:[Ljava/util/zip/ZipFile;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_40

    aget-object v3, p0, v2

    if-eqz v3, :cond_3d

    .line 635
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v4

    .line 636
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 642
    :cond_40
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLibBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 662
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLibFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSystemLib(Ljava/lang/String;)Z
    .registers 6

    .line 533
    sget-object p0, Lcom/bytedance/librarian/LibrarianImpl;->SYSTEM_LIB_LIST:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 534
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method private isSystemLibDir(Ljava/lang/String;)Z
    .registers 6

    .line 523
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->SYSTEM_LIB64_DIR_LIST:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 524
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v1
.end method

.method private loadDependencyLibs(Ljava/io/File;Z)V
    .registers 7

    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/librarian/LibrarianImpl;->obtainDependencies(Ljava/io/File;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    invoke-static {v0}, Lcom/bytedance/librarian/LibrarianImpl;->getLibBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Lcom/bytedance/librarian/LibrarianImpl;->isSystemLib(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 327
    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to load depended lib "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0, v0, p2}, Lcom/bytedance/librarian/LibrarianImpl;->loadLibrary(Ljava/lang/String;Z)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_39

    goto :goto_8

    :cond_38
    return-void

    :catch_39
    move-exception p0

    .line 332
    new-instance p1, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;

    const-string p2, "fail to load depended lib"

    invoke-direct {p1, p2, p0}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private loadExtractedLib(Ljava/io/File;Ljava/lang/String;Z)Z
    .registers 7

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/librarian/LibrarianMonitor;->systemLoad(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loaded the extracted lib "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_1f} :catch_21

    const/4 p0, 0x1

    return p0

    :catch_21
    move-exception p2

    if-nez p3, :cond_45

    .line 315
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to load "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", out lib exists"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/librarian/LibrarianMonitor;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    .line 313
    :cond_45
    new-instance p0, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finally fail to load "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/librarian/LibrarianUnsatisfiedLinkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private loadLibraryLockedRecorder(Ljava/lang/String;Z)V
    .registers 6

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mWorkDir:Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/librarian/LibrarianImpl;->getLibFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    const-string v1, "preload"

    invoke-direct {p0, p1, v1}, Lcom/bytedance/librarian/LibrarianImpl;->loadOriginLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_45

    .line 196
    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/librarian/LibrarianImpl;->loadExtractedLib(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_45

    .line 201
    :cond_22
    invoke-direct {p0}, Lcom/bytedance/librarian/LibrarianImpl;->checkLazyInitialization()V

    .line 203
    invoke-direct {p0, p1}, Lcom/bytedance/librarian/LibrarianImpl;->tryOptimizeNativeLibDirsOnLollipop(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "lollipop"

    invoke-direct {p0, p1, v1}, Lcom/bytedance/librarian/LibrarianImpl;->loadOriginLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_45

    .line 207
    :cond_34
    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/librarian/LibrarianImpl;->obtainValidLibFile(Ljava/lang/String;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v1

    .line 208
    invoke-direct {p0, v1, p2}, Lcom/bytedance/librarian/LibrarianImpl;->loadDependencyLibs(Ljava/io/File;Z)V

    if-eq v1, v0, :cond_49

    .line 211
    const-string v1, "after loading dep libs"

    invoke-direct {p0, p1, v1}, Lcom/bytedance/librarian/LibrarianImpl;->loadOriginLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    :goto_45
    return-void

    .line 214
    :cond_46
    invoke-direct {p0, v0, p2}, Lcom/bytedance/librarian/LibrarianImpl;->extractLibFromZip(Ljava/io/File;Z)V

    :cond_49
    const/4 p2, 0x1

    .line 227
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/librarian/LibrarianImpl;->loadExtractedLib(Ljava/io/File;Ljava/lang/String;Z)Z

    return-void
.end method

.method private loadOriginLib(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 296
    const-string v0, ", tag: "

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    invoke-virtual {v1, p1}, Lcom/bytedance/librarian/LibrarianMonitor;->systemLoadLibrary(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loaded the origin lib "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_23} :catch_25

    const/4 p0, 0x1

    return p0

    :catch_25
    move-exception v1

    .line 300
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/librarian/LibrarianMonitor;->logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private obtainDependencies(Ljava/io/File;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 545
    :try_start_1
    new-instance v1, Lcom/bytedance/librarian/elf/ElfParser;

    invoke-direct {v1, p1}, Lcom/bytedance/librarian/elf/ElfParser;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    .line 546
    :try_start_6
    invoke-virtual {v1}, Lcom/bytedance/librarian/elf/ElfParser;->parseNeededDependencies()Ljava/util/List;

    move-result-object p1

    .line 547
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    .line 550
    invoke-direct {p0, v1}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_11
    move-exception p1

    move-object v0, v1

    goto :goto_15

    :catchall_14
    move-exception p1

    :goto_15
    invoke-direct {p0, v0}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private obtainEntryFileFromInputStream(Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;
    .registers 8

    .line 667
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 667
    const-string v2, "tmp-"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extracting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    .line 670
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    .line 672
    :try_start_2f
    new-array v2, v2, [B

    .line 673
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_35
    const/4 v4, -0x1

    if-eq v3, v4, :cond_44

    const/4 v4, 0x0

    .line 675
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 676
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_35

    :catchall_41
    move-exception p1

    goto/16 :goto_c9

    .line 678
    :cond_44
    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 682
    iget-object p1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renaming to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1
    :try_end_68
    .catchall {:try_start_2f .. :try_end_68} :catchall_41

    if-eqz p1, :cond_71

    .line 689
    invoke-direct {p0, v1}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    .line 690
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p2

    .line 684
    :cond_71
    :try_start_71
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to rename \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 679
    :cond_9d
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to mark readonly \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" (tmp of \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c9
    .catchall {:try_start_71 .. :try_end_c9} :catchall_41

    .line 689
    :goto_c9
    invoke-direct {p0, v1}, Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V

    .line 690
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method private obtainValidLibFile(Ljava/lang/String;Ljava/io/File;Z)Ljava/io/File;
    .registers 6

    .line 232
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mNativeLibDir:Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/librarian/LibrarianImpl;->getLibFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/bytedance/librarian/LibrarianImpl;->checkLibValid(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_12

    return-object v0

    .line 238
    :cond_12
    invoke-direct {p0, p2, p3}, Lcom/bytedance/librarian/LibrarianImpl;->extractLibFromZip(Ljava/io/File;Z)V

    return-object p2
.end method

.method private swapFilesInList([Ljava/io/File;II)V
    .registers 5

    if-ne p2, p3, :cond_3

    return-void

    .line 517
    :cond_3
    aget-object p0, p1, p2

    .line 518
    aget-object v0, p1, p3

    aput-object v0, p1, p2

    .line 519
    aput-object p0, p1, p3

    return-void
.end method

.method private tryOptimizeNativeLibDirsOnLollipop(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method getLoadedLibsInfo()Ljava/lang/String;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mLoadedLibMap:Ljava/util/Map;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mLoadedLibMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 156
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method loadLibrary(Ljava/lang/String;Z)V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mLoadedLibMap:Ljava/util/Map;

    monitor-enter v0

    .line 162
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl;->mLoadedLibMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;

    if-eqz v1, :cond_15

    .line 164
    iget-boolean v2, v1, Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;->loaded:Z

    if-eqz v2, :cond_1f

    .line 165
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    goto :goto_49

    .line 168
    :cond_15
    new-instance v1, Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;

    invoke-direct {v1}, Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;-><init>()V

    .line 169
    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl;->mLoadedLibMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_13

    .line 173
    monitor-enter v1

    .line 174
    :try_start_21
    iget-boolean v0, v1, Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;->loaded:Z

    if-eqz v0, :cond_3f

    .line 175
    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lib was already loaded before: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    .line 176
    monitor-exit v1

    return-void

    :catchall_3d
    move-exception p0

    goto :goto_47

    .line 179
    :cond_3f
    invoke-direct {p0, p1, p2}, Lcom/bytedance/librarian/LibrarianImpl;->loadLibraryLockedRecorder(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    .line 181
    iput-boolean p0, v1, Lcom/bytedance/librarian/LibrarianImpl$LibRecorder;->loaded:Z

    .line 182
    monitor-exit v1

    return-void

    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_21 .. :try_end_48} :catchall_3d

    throw p0

    .line 171
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_13

    throw p0
.end method
