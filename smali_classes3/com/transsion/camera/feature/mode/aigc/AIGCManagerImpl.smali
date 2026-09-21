.class public Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/IAIManager;
.implements Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;


# static fields
.field private static final AIGC_DB_NAME:Ljava/lang/String; = "camera_aigc.db"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIGCConfig:Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;

.field private final mAIGCService:Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;

.field private final mFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

.field private final mProcessingAndQueuingSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCManagerImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mProcessingAndQueuingSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 163
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

    .line 56
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mAIGCConfig:Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;

    .line 57
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mAIGCService:Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;

    .line 58
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;

    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    const-string v4, "camera_aigc.db"

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;-><init>(Lcom/transsion/camera/app/common/ai/IAIManager;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    return-void
.end method


# virtual methods
.method public captureLimited()Z
    .registers 2

    .line 91
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aigcLimitEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mAIGCConfig:Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->requestLimited()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public captureSuccess(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mAIGCConfig:Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->requestSuccess()V

    .line 97
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffectValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIGCEffectValue(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 99
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIGCEffectValue(Ljava/lang/String;)V

    return-void
.end method

.method public captureWait()Z
    .registers 3

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->aigcLimitEnable()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    .line 120
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->processingAndQueuingSizeToday()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mAIGCConfig:Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->requestedCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->limitedCount()I

    move-result p0

    if-lt v0, p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

    return-object p0
.end method

.method public getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 64
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/AICommon;->init(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ai/AIRequestHolder;->registerStatusListener(Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;)V

    return-void
.end method

.method public limitedCount()I
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mAIGCConfig:Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->limitedCount()I

    move-result p0

    return p0
.end method

.method public onRequestStatusChanged(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 5

    .line 70
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->processingSize()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;->queuingSize()I

    move-result p1

    add-int/2addr v0, p1

    .line 71
    sget-object p1, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestStatusChanged processingAndQueuingSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mProcessingAndQueuingSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mProcessingAndQueuingSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mProcessingAndQueuingSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_3c

    if-nez v0, :cond_3c

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mAIGCService:Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCService;->freeService()V

    .line 76
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mProcessingAndQueuingSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public refresh()V
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->refresh()V

    return-void
.end method

.method public reload()V
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->reload()V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public removedTemplate()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mAIGCConfig:Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/AIGCConfig;->removedTemplate()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->request(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method

.method public terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p0

    return p0
.end method
