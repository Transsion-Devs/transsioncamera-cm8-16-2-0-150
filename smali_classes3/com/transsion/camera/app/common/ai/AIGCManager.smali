.class public Lcom/transsion/camera/app/common/ai/AIGCManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/IAIManager;


# static fields
.field private static final AIGC_MANAGER_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.mode.aigc.AIGCManagerImpl"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sInstance:Lcom/transsion/camera/app/common/ai/AIGCManager;


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 36
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIGCManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ai/AIGCManager;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/ai/AIGCManager;->sInstance:Lcom/transsion/camera/app/common/ai/AIGCManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->res:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$bool;->aigc_mode_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.feature.mode.aigc.AIGCManagerImpl"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ai/IAIManager;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    return-void

    :cond_1b
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;
    .registers 1

    .line 47
    sget-object v0, Lcom/transsion/camera/app/common/ai/AIGCManager;->sInstance:Lcom/transsion/camera/app/common/ai/AIGCManager;

    return-object v0
.end method


# virtual methods
.method public captureLimited()Z
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_d

    .line 80
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->captureLimited()Z

    move-result p0

    return p0
.end method

.method public captureSuccess(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 89
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->captureSuccess(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public captureWait()Z
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_d

    .line 125
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->captureWait()Z

    move-result p0

    return p0
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_d

    .line 62
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_d
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_10

    .line 187
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIFeatureStub;->instance()Lcom/transsion/camera/app/common/ai/IAIFeature;

    move-result-object p0

    return-object p0

    .line 190
    :cond_10
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;

    move-result-object p0

    return-object p0
.end method

.method public getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;
    .registers 2

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_11

    .line 196
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    new-instance p0, Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;-><init>()V

    return-object p0

    .line 199
    :cond_11
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 53
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public limitedCount()I
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_d

    .line 71
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_d
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->limitedCount()I

    move-result p0

    return p0
.end method

.method public refresh()V
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 143
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_c
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->refresh()V

    return-void
.end method

.method public reload()V
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 134
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_c
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->reload()V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 169
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public removedTemplate()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_e

    .line 98
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDelegate is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 101
    :cond_e
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ai/IAIManager;->removedTemplate()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 152
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->request(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 178
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 107
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_c

    .line 116
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_c
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method

.method public terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->mDelegate:Lcom/transsion/camera/app/common/ai/IAIManager;

    if-nez p0, :cond_d

    .line 160
    sget-object p0, Lcom/transsion/camera/app/common/ai/AIGCManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDelegate is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 163
    :cond_d
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ai/IAIManager;->terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p0

    return p0
.end method
