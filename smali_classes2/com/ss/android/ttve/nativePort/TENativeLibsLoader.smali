.class public Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;,
        Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;,
        Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryHooker;,
        Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryLoader;,
        Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;,
        Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isLibraryLoadedOpt:Z

.field private static mLibraryHooker:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;

.field private static mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

.field private static sContext:Landroid/content/Context;

.field private static sDefaultLibraryHooker:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;

.field private static sDefaultLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

.field private static sEffectLibs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSegmentalLoad:Z

.field private static volatile sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

.field private static sLibraryReferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoadOptLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->NOT_LOAD:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sIsSegmentalLoad:Z

    .line 35
    const-class v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    .line 37
    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryHooker:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;

    .line 38
    new-instance v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryLoader;

    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryLoader;-><init>()V

    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sDefaultLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    .line 39
    new-instance v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryHooker;

    invoke-direct {v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$DefaultLibraryHooker;-><init>()V

    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sDefaultLibraryHooker:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryReferenceList:Ljava/util/ArrayList;

    .line 42
    invoke-static {}, Lcom/bef/effectsdk/EffectSDKBuildConfig;->getEffectLibs()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sEffectLibs:Ljava/util/List;

    .line 48
    sput-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->isLibraryLoadedOpt:Z

    .line 50
    sput-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLoadOptLibrary:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 26
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 26
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static enableLoadOptLibrary(Z)V
    .registers 1

    .line 52
    sput-boolean p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLoadOptLibrary:Z

    return-void
.end method

.method public static enableSegmentalLoading(Z)V
    .registers 1

    .line 56
    sput-boolean p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sIsSegmentalLoad:Z

    return-void
.end method

.method public static getAllLibsList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    const-string v1, "c++_shared"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v1, "bytevc0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v1, "ByteVC1_dec"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-static {}, Lcom/ss/ttffmpeg/FFmpegLibLoaderWrapper;->getFFmpegLibs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    const-string v1, "ttyuv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v1, "bytenn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-string v2, "bdaudioeffect"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sEffectLibs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 230
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 236
    :cond_46
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 248
    :cond_4f
    const-string v1, "ttvesdk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getLibraryLoadStatus()Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;
    .registers 1

    .line 77
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    return-object v0
.end method

.method public static getLibraryLoadedVersion()I
    .registers 2

    .line 64
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sget-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->LOADED:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    if-eq v0, v1, :cond_8

    const/4 v0, -0x1

    return v0

    .line 66
    :cond_8
    sget-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->isLibraryLoadedOpt:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method protected static initLibReferenceList()V
    .registers 4

    .line 326
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->getAllLibsList()Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryReferenceList:Ljava/util/ArrayList;

    new-instance v3, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;

    invoke-direct {v3, v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    return-void
.end method

.method public static isSegmentalLoadEnable()Z
    .registers 1

    .line 60
    sget-boolean v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sIsSegmentalLoad:Z

    return v0
.end method

.method protected static loadAllLibs()V
    .registers 5

    .line 140
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sget-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->LOADED:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    if-ne v0, v1, :cond_8

    goto/16 :goto_90

    .line 143
    :cond_8
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->getAllLibsList()Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 146
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "c++_shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 148
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ttboringssl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ttcrypto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_62

    .line 152
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 155
    :cond_65
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->LOADING:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    .line 156
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    if-eqz v2, :cond_78

    .line 157
    invoke-interface {v2, v0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 158
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->NOT_LOAD:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    return-void

    .line 162
    :cond_78
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sDefaultLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    invoke-interface {v2, v0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 163
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->NOT_LOAD:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    return-void

    .line 167
    :cond_85
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->LOADED:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    .line 171
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryHooker:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;

    if-eqz v0, :cond_90

    .line 172
    invoke-interface {v0, v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;->onMemHookNativeLibs([Ljava/lang/String;)V

    :cond_90
    :goto_90
    return-void
.end method

.method public static declared-synchronized loadBase()V
    .registers 2

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 95
    :try_start_3
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 96
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static declared-synchronized loadByteBench()V
    .registers 2

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 99
    :try_start_3
    sget-boolean v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sIsSegmentalLoad:Z

    if-nez v1, :cond_d

    .line 100
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadAllLibs()V

    goto :goto_12

    :catchall_b
    move-exception v1

    goto :goto_14

    .line 102
    :cond_d
    const-string v1, "bytebench"

    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->segmentalLoad(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    .line 104
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_b

    throw v1
.end method

.method public static declared-synchronized loadEditor()V
    .registers 2

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 136
    :try_start_3
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 137
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static declared-synchronized loadEffectSDK()V
    .registers 5

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 115
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const-string v2, "bytenn"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->TAG:Ljava/lang/String;

    const-string v3, "loadLibrary add EffectSDK to list"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sEffectLibs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 124
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :catchall_30
    move-exception v1

    goto :goto_43

    .line 129
    :cond_32
    sget-object v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sDefaultLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    invoke-interface {v2, v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 131
    sget-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary EffectSDK failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_30

    .line 133
    :cond_41
    monitor-exit v0

    return-void

    :goto_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_30

    throw v1
.end method

.method public static declared-synchronized loadImage()V
    .registers 2

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 91
    :try_start_3
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 92
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static declared-synchronized loadLibrary()V
    .registers 2

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-boolean v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sIsSegmentalLoad:Z

    if-nez v1, :cond_d

    .line 82
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadAllLibs()V

    goto :goto_12

    :catchall_b
    move-exception v1

    goto :goto_14

    .line 84
    :cond_d
    const-string v1, "ttvesdk"

    invoke-static {v1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->segmentalLoad(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b

    .line 88
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_b

    throw v1
.end method

.method public static declared-synchronized loadOldEditor()V
    .registers 2

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 111
    :try_start_3
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 112
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static declared-synchronized loadRecorder()V
    .registers 2

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 107
    :try_start_3
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 108
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static segmentalLoad(Ljava/lang/String;)V
    .registers 6

    .line 262
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryReferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 263
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->initLibReferenceList()V

    .line 266
    :cond_b
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 267
    sget-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryReferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4b

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;

    .line 271
    iget-object v4, v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->strLibName:Ljava/lang/String;

    if-ne p0, v4, :cond_16

    .line 272
    iget-boolean p0, v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->isLoaded:Z

    if-eqz p0, :cond_44

    .line 273
    sget-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->strLibName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is loaded."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 276
    :cond_44
    iput-boolean v3, v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->isLoaded:Z

    .line 277
    iget-object p0, v2, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->strLibName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_4b
    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_64

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;

    .line 286
    iget-boolean v2, p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->isLoaded:Z

    if-eqz v2, :cond_5c

    goto :goto_64

    .line 289
    :cond_5c
    iput-boolean v3, p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->isLoaded:Z

    .line 290
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LibraryReferenceNode;->strLibName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 295
    :cond_64
    :goto_64
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 298
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 299
    :goto_6e
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_95

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 303
    :cond_95
    sget-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->LOADING:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    .line 304
    sget-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    if-eqz v1, :cond_a8

    .line 305
    invoke-interface {v1, v0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 306
    sget-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->NOT_LOAD:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    return-void

    .line 310
    :cond_a8
    sget-object v1, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sDefaultLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    invoke-interface {v1, v0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;->onLoadNativeLibs(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 311
    sget-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->NOT_LOAD:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    return-void

    .line 315
    :cond_b5
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;->LOADED:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    sput-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sLibraryLoadStatus:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$LoadStatus;

    .line 319
    sget-object v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryHooker:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;

    if-eqz v0, :cond_c0

    .line 320
    invoke-interface {v0, p0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;->onMemHookNativeLibs([Ljava/lang/String;)V

    :cond_c0
    return-void
.end method

.method public static declared-synchronized setContext(Landroid/content/Context;)V
    .registers 2

    const-class v0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;

    monitor-enter v0

    .line 45
    :try_start_3
    sput-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->sContext:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 46
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setLibraryHooker(Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;)V
    .registers 1

    .line 339
    sput-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryHooker:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryHooker;

    return-void
.end method

.method public static setLibraryLoad(Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;)V
    .registers 1

    .line 335
    sput-object p0, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->mLibraryLoader:Lcom/ss/android/ttve/nativePort/TENativeLibsLoader$ILibraryLoader;

    return-void
.end method
