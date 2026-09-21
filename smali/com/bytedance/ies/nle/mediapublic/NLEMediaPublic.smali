.class public final Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;

.field private static hasLoadedLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasLoadedLibrary()Z
    .registers 1

    .line 13
    sget-boolean p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->hasLoadedLibrary:Z

    return p0
.end method

.method public final declared-synchronized loadLibrary()V
    .registers 4

    monitor-enter p0

    .line 17
    :try_start_1
    sget-boolean v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->hasLoadedLibrary:Z

    if-nez v0, :cond_23

    .line 18
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    .line 19
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    invoke-virtual {v0}, Lcom/bytedance/ies/nleeditor/NLE;->getLibraryLoader()Lcom/bytedance/ies/nleeditor/INLELibraryLoader;

    move-result-object v0

    const-string v1, "NLEMediaPublicJni"

    const-string v2, "NLEMediaJni"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/ies/nleeditor/INLELibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    const/4 v0, 0x1

    .line 20
    sput-boolean v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->hasLoadedLibrary:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception v0

    goto :goto_25

    .line 22
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_21

    throw v0
.end method

.method public final setHasLoadedLibrary(Z)V
    .registers 2

    .line 13
    sput-boolean p1, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->hasLoadedLibrary:Z

    return-void
.end method
