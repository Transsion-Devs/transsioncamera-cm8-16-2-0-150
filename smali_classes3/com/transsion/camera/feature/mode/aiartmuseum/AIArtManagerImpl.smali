.class public Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/IAIManager;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final AI_ART_DB_NAME:Ljava/lang/String; = "camera_aiart.db"

.field private static final CONFIG_PREFERENCE_NAME:Ljava/lang/String; = "ai_art_museum_config"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIArtConfig:Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

.field private final mAIFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

.field private final mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtManagerImpl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl$1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

    .line 84
    new-instance v0, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

    const-string v1, "ai_art_museum_config"

    invoke-static {v1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIArtConfig:Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

    .line 85
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/service/AIArtService;-><init>()V

    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;

    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    const-string v4, "camera_aiart.db"

    invoke-direct {v2, v3, v4}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;-><init>(Lcom/transsion/camera/app/common/ai/IAIManager;Lcom/transsion/camera/featurelibs/aicommon/service/IAIService;Lcom/transsion/camera/featurelibs/aicommon/db/IAIDbManager;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    return-void
.end method


# virtual methods
.method public captureLimited()Z
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIArtConfig:Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->getReachLimit()Z

    move-result p0

    return p0
.end method

.method public captureSuccess(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIArtConfig:Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->addCount()V

    .line 137
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getEffectValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIArtValue(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->captureDone()V

    .line 139
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAIArtValue(Ljava/lang/String;)V

    return-void
.end method

.method public captureWait()Z
    .registers 4

    .line 165
    const-string v0, "persist.gallery.debug_ai_art_limit_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    .line 166
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->processingAndQueuingSizeToday()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIArtConfig:Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

    invoke-virtual {v2}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->getCountToday()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->limitedCount()I

    move-result p0

    if-lt v0, p0, :cond_1d

    return v1

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public featureSupport(Ljava/lang/String;)Z
    .registers 10

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIArtConfig:Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->getEnableConfig()Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "key_ai_art_museum_partial"

    const-string v3, "key_ai_art_museum_travel"

    const-string v4, "key_ai_art_museum_style"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_98

    goto :goto_3f

    :sswitch_1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_3f

    :cond_21
    const/4 v7, 0x3

    goto :goto_3f

    :sswitch_23
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_3f

    :cond_2a
    const/4 v7, 0x2

    goto :goto_3f

    :sswitch_2c
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_3f

    :cond_33
    move v7, v5

    goto :goto_3f

    :sswitch_35
    const-string v1, "key_ai_art_museum"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v7, v6

    :goto_3f
    packed-switch v7, :pswitch_data_aa

    .line 122
    sget-object p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v6

    .line 117
    :pswitch_59
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->getPartialAIEnable()Z

    move-result p0

    if-eqz p0, :cond_6a

    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo;->valueList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6a

    return v5

    :cond_6a
    :pswitch_6a
    return v6

    .line 108
    :pswitch_6b
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->getStyleAIEnable()Z

    move-result p0

    if-eqz p0, :cond_7c

    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->valueList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7c

    return v5

    :cond_7c
    return v6

    .line 101
    :pswitch_7d
    invoke-virtual {v0}, Lcom/gallery20/sdk/ai_art/config/EnableTPMSConfig;->getEnable()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 102
    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->featureSupport(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_95

    .line 103
    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->featureSupport(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_95

    .line 104
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->featureSupport(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_96

    :cond_95
    return v5

    :cond_96
    return v6

    nop

    :sswitch_data_98
    .sparse-switch
        -0x2da399fb -> :sswitch_35
        0xa1e8ef7 -> :sswitch_2c
        0x3b413694 -> :sswitch_23
        0x3d390147 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_6b
        :pswitch_6a
        :pswitch_59
    .end packed-switch
.end method

.method public getFeature()Lcom/transsion/camera/app/common/ai/IAIFeature;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIFeature:Lcom/transsion/camera/app/common/ai/IAIFeature;

    return-object p0
.end method

.method public getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->getRequestHolder()Lcom/transsion/camera/app/common/ai/AIRequestHolder;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 91
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/AICommon;->init(Landroid/content/Context;)V

    return-void
.end method

.method public limitedCount()I
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIArtConfig:Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->getLimitConfig()Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/LimitTPMSConfig;->getLimit()I

    move-result p0

    return p0
.end method

.method public refresh()V
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->refresh()V

    return-void
.end method

.method public reload()V
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->reload()V

    return-void
.end method

.method public remove(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

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

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mAIArtConfig:Lcom/gallery20/sdk/ai_art/config/AIArtConfig;

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfig;->getRemovedTemplate()Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public request(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->request(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->retry(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method

.method public terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z
    .registers 2

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;->mRequestManager:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager;->terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p0

    return p0
.end method
