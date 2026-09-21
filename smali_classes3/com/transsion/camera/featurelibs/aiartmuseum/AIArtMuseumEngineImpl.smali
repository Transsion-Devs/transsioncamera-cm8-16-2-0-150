.class public Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/aiartmuseum/IAIArtMuseumEngine;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final KEY_AI_ART_MUSEUM_FINGERPRINT:Ljava/lang/String; = "AIArtMuseum_fingerprint"

.field private static final MODEL_DIRECTORY_PATH:Ljava/lang/String; = "aiartmuseum/model"

.field private static final MODEL_FILE_NAME:Ljava/lang/String; = "Transsion_Segment_Pre.mnn"

.field private static final RESULT_SUCCESS:J

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackCamera:Z

.field private mEffect:Ljava/lang/String;

.field private mEffectValue:Ljava/lang/String;

.field private final mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mModelDirectoryPath:Ljava/lang/String;

.field private final mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSync:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmModelReady(Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseumEngineImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private copyAssets()V
    .registers 9

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_global_scope"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    .line 87
    const-string v1, "AIArtMuseum_fingerprint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 90
    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    const-string v4, "assets"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/FileUtil;->getExternalFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "aiartmuseum/model"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelDirectoryPath:Ljava/lang/String;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelDirectoryPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Transsion_Segment_Pre.mnn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/utils/FileUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    .line 95
    sget-object v5, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modelReady savedFingerprint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", currentFingerprint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", modelFileExist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v4, :cond_9a

    .line 98
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->handleInit()V

    return-void

    .line 102
    :cond_9a
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;

    const-string v4, "PrepareAIArtMuseumModel"

    invoke-direct {v2, p0, v4, v3, v0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;-><init>(Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mmkv/MMKV;)V

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method private handleInit()V
    .registers 8

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelDirectoryPath:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lcom/aiartmuseum/jni/AIArtMuseum;->AIArtMuseum_JNI_CreateEngine(JLjava/lang/String;)J

    move-result-wide v3

    .line 118
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleInit initResult: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aiartmuseum/jni/AIArtMuseum;->AIArtMuseum_JNI_GetVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    cmp-long v0, v1, v3

    if-nez v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private setEffectImpl()V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffect:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mSync:Z

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->getFeature(Ljava/lang/String;Z)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffect:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffectValue:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/featurelibs/aiartmuseum/FeatureContract;->getFeatureValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 147
    sget-object v2, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffectImpl effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffect:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", effectValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffectValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", featureValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mSync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mSync:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ltz v0, :cond_57

    if-gez v1, :cond_51

    goto :goto_57

    .line 155
    :cond_51
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mBackCamera:Z

    invoke-static {v0, v1, p0}, Lcom/aiartmuseum/jni/AIArtMuseum;->AIArtMuseum_JNI_SetFeature(III)J

    return-void

    .line 151
    :cond_57
    :goto_57
    const-string p0, "setEffect invalid param!!!"

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Z)V
    .registers 4

    .line 66
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mBackCamera:Z

    .line 70
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-eqz p1, :cond_36

    .line 75
    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object p1

    const-string v0, "aiartmuseum/model"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelDirectoryPath:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->handleInit()V

    return-void

    .line 81
    :cond_36
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->copyAssets()V

    return-void
.end method

.method public process(I[IIIII)V
    .registers 13

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 182
    sget-object p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "process model not ready!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_36

    .line 187
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->handleInit()V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffect:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffectValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->setEffectImpl()V

    :cond_36
    move v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    goto :goto_45

    .line 194
    :cond_3d
    sget-object p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "process init failed!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 199
    :goto_45
    invoke-static/range {v0 .. v5}, Lcom/aiartmuseum/jni/AIArtMuseum;->AIArtMuseum_JNI_ProcessTexture(I[IIIII)J

    return-void
.end method

.method public setEffect(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 124
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effectValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffect:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffectValue:Ljava/lang/String;

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mSync:Z

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_33

    .line 131
    const-string p0, "setEffect model not ready!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_41

    .line 136
    const-string p0, "setEffect not mInitialized!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_41
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->setEffectImpl()V

    return-void
.end method

.method public setEffect(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 160
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect effect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effectValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffect:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mEffectValue:Ljava/lang/String;

    .line 164
    iput-boolean p3, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mSync:Z

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 167
    const-string p0, "setEffect model not ready!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_3a
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_48

    .line 172
    const-string p0, "setEffect not mInitialized!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_48
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->setEffectImpl()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 204
    sget-object v0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unInit mModelReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mModelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->mInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 207
    invoke-static {}, Lcom/aiartmuseum/jni/AIArtMuseum;->AIArtMuseum_JNI_ReleaseEngine()J

    :cond_35
    return-void
.end method
