.class public final Lcom/bytedance/ies/nleeditor/NLE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

.field private static libraryHasLoaded:Z

.field private static libraryLoader:Lcom/bytedance/ies/nleeditor/INLELibraryLoader;

.field private static logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

.field private static logger:Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

.field private static monitor:Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nleeditor/NLE;

    invoke-direct {v0}, Lcom/bytedance/ies/nleeditor/NLE;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    .line 16
    sget-object v0, Lcom/bytedance/ies/nle/editor_jni/LogLevel;->LEVEL_INFO:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLE;->logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 24
    sget-object v0, Lcom/bytedance/ies/nleeditor/DefaultNLELibraryLoader;->INSTANCE:Lcom/bytedance/ies/nleeditor/DefaultNLELibraryLoader;

    sput-object v0, Lcom/bytedance/ies/nleeditor/NLE;->libraryLoader:Lcom/bytedance/ies/nleeditor/INLELibraryLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic loadNLELibrary$default(Lcom/bytedance/ies/nleeditor/NLE;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 36
    :cond_5
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nleeditor/NLE;->loadNLELibrary(Z)V

    return-void
.end method


# virtual methods
.method public final getLibraryLoader()Lcom/bytedance/ies/nleeditor/INLELibraryLoader;
    .registers 1

    .line 24
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLE;->libraryLoader:Lcom/bytedance/ies/nleeditor/INLELibraryLoader;

    return-object p0
.end method

.method public final getLogLevel()Lcom/bytedance/ies/nle/editor_jni/LogLevel;
    .registers 1

    .line 16
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLE;->logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    return-object p0
.end method

.method public final getLogger()Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;
    .registers 1

    .line 8
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLE;->logger:Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    return-object p0
.end method

.method public final getMonitor()Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;
    .registers 1

    .line 28
    sget-object p0, Lcom/bytedance/ies/nleeditor/NLE;->monitor:Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;

    return-object p0
.end method

.method public final loadNLELibrary()V
    .registers 4

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/bytedance/ies/nleeditor/NLE;->loadNLELibrary$default(Lcom/bytedance/ies/nleeditor/NLE;ZILjava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized loadNLELibrary(Z)V
    .registers 5

    monitor-enter p0

    .line 37
    :try_start_1
    const-string v0, "NLE"

    const-string v1, "load libNLEEditorJni.so"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_20

    .line 39
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->libraryLoader:Lcom/bytedance/ies/nleeditor/INLELibraryLoader;

    const-string v0, "NLEEditorJni"

    const-string v1, "NLEMediaJni"

    const-string v2, "NLETemplateModelJni"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/ies/nleeditor/INLELibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    goto :goto_31

    :catchall_1e
    move-exception p1

    goto :goto_4c

    .line 41
    :cond_20
    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->libraryLoader:Lcom/bytedance/ies/nleeditor/INLELibraryLoader;

    const-string v0, "NLEEditorJni"

    const-string v1, "NLEMediaJni"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/ies/nleeditor/INLELibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    .line 43
    :goto_31
    sget-boolean p1, Lcom/bytedance/ies/nleeditor/NLE;->libraryHasLoaded:Z

    if-nez p1, :cond_47

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->obtain()Lcom/bytedance/ies/nle/editor_jni/NLELogger;

    move-result-object p1

    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->logger:Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->setDelegate(Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;)V

    .line 45
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->obtain()Lcom/bytedance/ies/nle/editor_jni/NLELogger;

    move-result-object p1

    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    invoke-virtual {p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->setLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V

    :cond_47
    const/4 p1, 0x1

    .line 47
    sput-boolean p1, Lcom/bytedance/ies/nleeditor/NLE;->libraryHasLoaded:Z
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_1e

    .line 48
    monitor-exit p0

    return-void

    :goto_4c
    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_1e

    throw p1
.end method

.method public final setLibraryLoader(Lcom/bytedance/ies/nleeditor/INLELibraryLoader;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sput-object p1, Lcom/bytedance/ies/nleeditor/NLE;->libraryLoader:Lcom/bytedance/ies/nleeditor/INLELibraryLoader;

    return-void
.end method

.method public final setLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V
    .registers 2

    const-string p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sput-object p1, Lcom/bytedance/ies/nleeditor/NLE;->logLevel:Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    .line 19
    sget-boolean p0, Lcom/bytedance/ies/nleeditor/NLE;->libraryHasLoaded:Z

    if-eqz p0, :cond_12

    .line 20
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->obtain()Lcom/bytedance/ies/nle/editor_jni/NLELogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->setLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V

    :cond_12
    return-void
.end method

.method public final setLogger(Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;)V
    .registers 2

    .line 10
    sput-object p1, Lcom/bytedance/ies/nleeditor/NLE;->logger:Lcom/bytedance/ies/nle/editor_jni/NLELoggerListener;

    .line 11
    sget-boolean p0, Lcom/bytedance/ies/nleeditor/NLE;->libraryHasLoaded:Z

    if-eqz p0, :cond_d

    .line 12
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->obtain()Lcom/bytedance/ies/nle/editor_jni/NLELogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLELogger;->setDelegate(Lcom/bytedance/ies/nle/editor_jni/NLELoggerFunc;)V

    :cond_d
    return-void
.end method

.method public final setMonitor(Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;)V
    .registers 2

    .line 30
    sput-object p1, Lcom/bytedance/ies/nleeditor/NLE;->monitor:Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;

    .line 31
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->obtain()Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;

    move-result-object p0

    sget-object p1, Lcom/bytedance/ies/nleeditor/NLE;->monitor:Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMonitor;->setListener(Lcom/bytedance/ies/nle/editor_jni/INLEMonitor;)V

    return-void
.end method
