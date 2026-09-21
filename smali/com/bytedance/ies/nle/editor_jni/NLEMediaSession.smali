.class public Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNLEAlgorithmController:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

.field private mNLEBrushRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

.field private mNLEEffectRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

.field private mNLEExporterController:Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

.field private mNLEFilterRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

.field private mNLEMVInfoController:Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

.field private mNLEMattingRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

.field private mNLEMediaRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

.field private mNLEMediaSettingsController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

.field private mNLEPlayer:Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

.field private mNLEStickerController:Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEPlayer:Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    .line 15
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    .line 16
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaSettingsController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    .line 17
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMattingRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    .line 18
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEFilterRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    .line 19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMVInfoController:Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    .line 20
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEExporterController:Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    .line 21
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEAlgorithmController:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    .line 22
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEBrushRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    .line 23
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEStickerController:Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    .line 24
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEEffectRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    .line 27
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCMemOwn:Z

    .line 28
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)V
    .registers 4

    .line 62
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->new_NLEMediaSession(JLcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 32
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 41
    :try_start_2
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEPlayer:Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    .line 42
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    .line 43
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaSettingsController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    .line 44
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMattingRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    .line 45
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEFilterRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    .line 46
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMVInfoController:Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    .line 47
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEExporterController:Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    .line 48
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEAlgorithmController:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    .line 49
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEBrushRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    .line 50
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEStickerController:Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    .line 51
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEEffectRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2f

    .line 53
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCMemOwn:Z

    if-eqz v4, :cond_2d

    const/4 v4, 0x0

    .line 54
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCMemOwn:Z

    .line 55
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->delete_NLEMediaSession(J)V

    goto :goto_2d

    :catchall_2b
    move-exception v0

    goto :goto_31

    .line 57
    :cond_2d
    :goto_2d
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_2b

    .line 59
    :cond_2f
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2b

    throw v0
.end method

.method public getAlgorithmApi()Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEAlgorithmController:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    if-nez v0, :cond_1b

    .line 136
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getAlgorithmApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 137
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEAlgorithmController:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    .line 139
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEAlgorithmController:Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmController;

    return-object p0
.end method

.method public getBrushApi()Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;
    .registers 5

    .line 143
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEBrushRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    if-nez v0, :cond_1b

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getBrushApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 145
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEBrushRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    .line 147
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEBrushRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEBrushRuntimeController;

    return-object p0
.end method

.method public getDataSource()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 5

    .line 66
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getDataSource(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_e
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;-><init>(JZ)V

    return-object p0
.end method

.method public getEffectApi()Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEEffectRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    if-nez v0, :cond_1b

    .line 160
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getEffectApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 161
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEEffectRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    .line 163
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEEffectRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEEffectRuntimeController;

    return-object p0
.end method

.method public getExporterApi()Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEExporterController:Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    if-nez v0, :cond_1b

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getExporterApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 129
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEExporterController:Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    .line 131
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEExporterController:Lcom/bytedance/ies/nle/editor_jni/NLEExporterController;

    return-object p0
.end method

.method public getFilterApi()Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEFilterRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    if-nez v0, :cond_1b

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getFilterApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 113
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEFilterRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    .line 115
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEFilterRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEFilterRuntimeController;

    return-object p0
.end method

.method public getMVApi()Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMVInfoController:Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    if-nez v0, :cond_1b

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getMVApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 121
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMVInfoController:Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    .line 123
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMVInfoController:Lcom/bytedance/ies/nle/editor_jni/NLEMVInfoController;

    return-object p0
.end method

.method public getMattingApi()Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMattingRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    if-nez v0, :cond_1b

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getMattingApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 105
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMattingRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    .line 107
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMattingRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMattingRuntimeController;

    return-object p0
.end method

.method public getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    if-nez v0, :cond_1b

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getMediaRuntimeApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 89
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    .line 91
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaRuntimeController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaRuntimeController;

    return-object p0
.end method

.method public getMediaSettingApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;
    .registers 5

    .line 95
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaSettingsController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    if-nez v0, :cond_1b

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getMediaSettingApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 97
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaSettingsController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    .line 99
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEMediaSettingsController:Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    return-object p0
.end method

.method public getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEPlayer:Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    if-nez v0, :cond_1b

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getPlayerApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 81
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEPlayer:Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    .line 83
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEPlayer:Lcom/bytedance/ies/nle/editor_jni/NLEPlayer;

    return-object p0
.end method

.method public getStickerApi()Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEStickerController:Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    if-nez v0, :cond_1b

    .line 152
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_getStickerApi(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const/4 v0, 0x0

    goto :goto_19

    .line 153
    :cond_12
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;-><init>(JZ)V

    move-object v0, v2

    :goto_19
    iput-object v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEStickerController:Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    .line 155
    :cond_1b
    iget-object p0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->mNLEStickerController:Lcom/bytedance/ies/nle/editor_jni/NLEStickerController;

    return-object p0
.end method

.method public initVeBufferAuth(Ljava/lang/Object;Ljava/lang/String;[B)V
    .registers 10

    .line 75
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_initVeBufferAuth(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;Ljava/lang/Object;Ljava/lang/String;[B)V

    return-void
.end method

.method public setDataSource(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 8

    .line 71
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaPublicJniJNI;->NLEMediaSession_setDataSource(JLcom/bytedance/ies/nle/editor_jni/NLEMediaSession;JLcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method
