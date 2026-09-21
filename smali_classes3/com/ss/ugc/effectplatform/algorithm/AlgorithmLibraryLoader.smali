.class public final Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;

.field private static volatile hasLoadedLibrary:Z

.field private static libraryLoader:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;

    .line 9
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;->INSTANCE:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader$SoLibraryLoader;

    sput-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->libraryLoader:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLibraryLoader()Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;
    .registers 1

    .line 9
    sget-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->libraryLoader:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;

    return-object p0
.end method

.method public final loadLibrary()V
    .registers 3

    .line 15
    sget-boolean v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->hasLoadedLibrary:Z

    if-eqz v0, :cond_5

    return-void

    .line 18
    :cond_5
    monitor-enter p0

    .line 19
    :try_start_6
    sget-boolean v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->hasLoadedLibrary:Z

    if-nez v0, :cond_17

    .line 20
    sget-object v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->libraryLoader:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;

    const-string v1, "newep"

    invoke-interface {v0, v1}, Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->hasLoadedLibrary:Z

    goto :goto_17

    :catchall_15
    move-exception v0

    goto :goto_1b

    .line 23
    :cond_17
    :goto_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_15

    .line 18
    monitor-exit p0

    return-void

    :goto_1b
    monitor-exit p0

    throw v0
.end method

.method public final setLibraryLoader(Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sput-object p1, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmLibraryLoader;->libraryLoader:Lcom/ss/ugc/effectplatform/algorithm/ILibraryLoader;

    return-void
.end method
