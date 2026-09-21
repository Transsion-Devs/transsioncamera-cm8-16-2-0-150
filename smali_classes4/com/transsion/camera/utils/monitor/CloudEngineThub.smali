.class public Lcom/transsion/camera/utils/monitor/CloudEngineThub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/monitor/CloudEngineThub$Holder;,
        Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;

.field public mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

.field private mRemoteConfig:Ljava/lang/String;

.field private mSupportThub:Z


# direct methods
.method public static synthetic $r8$lambda$GnhT_aRK6vALJnN7vfyAC3oz0oo(Lorg/json/JSONObject;Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;)V
    .registers 4

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 93
    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;->setSceneThreshold(I)V

    .line 94
    sget-object p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[monitorTypeEntry] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p0

    .line 96
    sget-object p1, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parseCloudResult] exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemoteConfig(Lcom/transsion/camera/utils/monitor/CloudEngineThub;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mRemoteConfig:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$misFeatureSupported(Lcom/transsion/camera/utils/monitor/CloudEngineThub;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mparseCloudResult(Lcom/transsion/camera/utils/monitor/CloudEngineThub;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->parseCloudResult(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CloudEngineThub"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/monitor/MonitorInfo;

    invoke-direct {v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    .line 42
    const-string v0, "ro.thub.core.support"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mSupportThub:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/monitor/CloudEngineThub-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/monitor/CloudEngineThub;
    .registers 1

    .line 34
    invoke-static {}, Lcom/transsion/camera/utils/monitor/CloudEngineThub$Holder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    move-result-object v0

    return-object v0
.end method

.method private initMonitorInfo()V
    .registers 7

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    new-instance v1, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;

    sget-object v2, Lcom/transsion/camera/utils/monitor/MonitorInfo;->DEFAULT_SCENE_THRESHOLD:Ljava/util/Map;

    const-string v3, "CAM_START"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "0xffffff53"

    invoke-direct {v1, v3, v5, v4}, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/monitor/MonitorInfo;->add(Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    new-instance v1, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;

    const-string v3, "CAM_LOW_FRAME_RATE"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, v3, v5, v4}, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/monitor/MonitorInfo;->add(Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    new-instance v0, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;

    const-string v1, "CAM_CAPTURE"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/monitor/MonitorInfo;->add(Lcom/transsion/camera/utils/monitor/MonitorInfo$MonitorTypeEntry;)V

    return-void
.end method

.method private isFeatureSupported(Ljava/lang/String;)Z
    .registers 5

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 111
    :cond_8
    :try_start_8
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    const-string p1, "e"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 114
    sget-object p1, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[parseCloudResult] exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private parseCloudResult(Ljava/lang/String;)V
    .registers 4

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 87
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/monitor/MonitorInfo;->getMonitorList()Ljava/util/List;

    move-result-object p0

    .line 89
    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/utils/monitor/CloudEngineThub$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/monitor/CloudEngineThub$$ExternalSyntheticLambda0;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    .line 100
    sget-object p1, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parseCloudResult] exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    .line 46
    iget-boolean v0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mSupportThub:Z

    if-eqz v0, :cond_43

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;-><init>(Lcom/transsion/camera/utils/monitor/CloudEngineThub;Lcom/transsion/camera/utils/monitor/CloudEngineThub-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mCallback:Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;

    .line 49
    :try_start_c
    const-string v1, "1009000005"

    const-string v2, "v1.0"

    invoke-static {v1, v2, v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->regCloudEngineCallback(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_2f

    :catch_14
    move-exception v0

    .line 51
    sget-object v1, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudEngineThub.init.exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    :goto_2f
    sget-object v0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Initialized cloud engine."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->initMonitorInfo()V

    .line 56
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->updateMonitorType(Lcom/transsion/camera/utils/monitor/MonitorInfo;)V

    return-void

    .line 58
    :cond_43
    sget-object p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Don\'t have T-Hub permission,not initialize."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isCaptureCamErrorSupported()Z
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mRemoteConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 127
    :cond_a
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mRemoteConfig:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    const-string p0, "DFX"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 129
    const-string v0, "CAM_ERROR_SUPPORT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 131
    sget-object v0, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DFX][ParseJson] exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method
