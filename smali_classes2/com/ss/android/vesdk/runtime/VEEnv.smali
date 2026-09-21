.class public Lcom/ss/android/vesdk/runtime/VEEnv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDetectModelsDir:Ljava/lang/String;

.field private mWorkspace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetectModelsDir()Ljava/lang/String;
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 72
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v0

    const-string v1, "vesdk_models_dir_sp_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    .line 74
    :cond_18
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    return-object p0
.end method

.method public getWorkspace()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mWorkspace:Ljava/lang/String;

    return-object p0
.end method

.method public prepareModels(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mWorkspace:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 103
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mWorkspace:Ljava/lang/String;

    const-string v2, "models"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 107
    :cond_17
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    .line 108
    invoke-static {p1, v0}, Lcom/bef/effectsdk/EffectSDKUtils;->flushAlgorithmModelFiles(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setDetectModelsDir(Ljava/lang/String;)V
    .registers 4

    .line 85
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p1

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mDetectModelsDir:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v1, "vesdk_models_dir_sp_key"

    invoke-virtual {p1, v1, p0, v0}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setWorkspace(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEnv;->mWorkspace:Ljava/lang/String;

    return-void
.end method
