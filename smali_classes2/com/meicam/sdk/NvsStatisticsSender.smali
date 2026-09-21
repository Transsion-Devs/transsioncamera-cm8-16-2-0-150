.class public Lcom/meicam/sdk/NvsStatisticsSender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static HTTPS_API_SET_STATISTICS:Ljava/lang/String; = "https://api.meishesdk.com/statistics/index.php"

.field private static final NV_DEBUG:Z = false

.field private static NV_KEY_STATISTICS_APP_START_TIME:Ljava/lang/String; = "NV_KEY_STATISTICS_APP_START_TIME"

.field private static NV_KEY_STATISTICS_INFO_CURRENT_DATE:Ljava/lang/String; = "NV_KEY_STATISTICS_INFO_CURRENT_DATE"

.field private static final NV_STATISTICS_DAILY:I = 0x1

.field private static final NV_STATISTICS_EVERY_START:I = 0x2

.field private static final NV_STATISTICS_NEVER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Meicam"

.field private static m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

.field private static m_statisticsSender:Lcom/meicam/sdk/NvsStatisticsSender;


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_handler:Landroid/os/Handler;

.field private m_isStatisticsPrivateInfo:Z

.field private m_statisticsFrequency:I

.field private m_thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_thread:Landroid/os/HandlerThread;

    .line 31
    iput-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    .line 33
    iput-boolean v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_isStatisticsPrivateInfo:Z

    .line 50
    iput-object p1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    .line 51
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "StatisticsSendThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_thread:Landroid/os/HandlerThread;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 53
    new-instance p1, Lcom/meicam/sdk/NvsStatisticsSender$1;

    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/meicam/sdk/NvsStatisticsSender$1;-><init>(Lcom/meicam/sdk/NvsStatisticsSender;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meicam/sdk/NvsStatisticsSender;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->startSendStatistics()V

    return-void
.end method

.method private getCurrentDateString()Ljava/lang/String;
    .registers 4

    .line 133
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 135
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/meicam/sdk/NvsStatisticsSender;
    .registers 1

    .line 46
    sget-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsSender:Lcom/meicam/sdk/NvsStatisticsSender;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/meicam/sdk/NvsStatisticsSender;
    .registers 2

    .line 36
    sget-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsSender:Lcom/meicam/sdk/NvsStatisticsSender;

    if-eqz v0, :cond_5

    return-object v0

    .line 39
    :cond_5
    new-instance v0, Lcom/meicam/sdk/NvsStatisticsSender;

    invoke-direct {v0, p0}, Lcom/meicam/sdk/NvsStatisticsSender;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsSender:Lcom/meicam/sdk/NvsStatisticsSender;

    .line 40
    new-instance v0, Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-direct {v0, p0}, Lcom/meicam/sdk/NvsStatisticsInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    .line 41
    sget-object p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsSender:Lcom/meicam/sdk/NvsStatisticsSender;

    return-object p0
.end method

.method private startSendStatistics()V
    .registers 10

    .line 68
    iget v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    if-nez v0, :cond_5

    goto :goto_4a

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_APP_START_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meicam/sdk/NvsSystemVariableManager;->getSystemVariableStringSet(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 73
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 77
    :cond_26
    sget-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getStartTime()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_INFO_CURRENT_DATE:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/meicam/sdk/NvsSystemVariableManager;->getSystemVariableString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4b

    iget v2, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    if-ne v2, v3, :cond_4b

    :goto_4a
    return-void

    .line 83
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_66

    .line 84
    iget-object p0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_APP_START_TIME:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/meicam/sdk/NvsSystemVariableManager;->setSystemVariableStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    .line 88
    :cond_66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 89
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 92
    :cond_7f
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_83
    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    :try_start_8f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 96
    const-string v5, "appId"

    sget-object v6, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v6}, Lcom/meicam/sdk/NvsStatisticsInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v5, "startTime"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v5, "deviceId"

    sget-object v6, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v6}, Lcom/meicam/sdk/NvsStatisticsInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v5, "model"

    sget-object v6, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v6}, Lcom/meicam/sdk/NvsStatisticsInfo;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v5, "osType"

    sget-object v6, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v6}, Lcom/meicam/sdk/NvsStatisticsInfo;->getOsType()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v5, "osVersion"

    sget-object v6, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v6}, Lcom/meicam/sdk/NvsStatisticsInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget-boolean v5, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_isStatisticsPrivateInfo:Z

    if-eqz v5, :cond_fb

    .line 103
    const-string v5, "phoneNumber"

    sget-object v6, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v6}, Lcom/meicam/sdk/NvsStatisticsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    sget-object v5, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v5}, Lcom/meicam/sdk/NvsStatisticsInfo;->getLngAndLat()Ljava/util/ArrayList;

    move-result-object v5

    .line 105
    const-string v6, "longitude"

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v6, "latitude"

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_fb

    :catch_f9
    move-exception v2

    goto :goto_128

    .line 109
    :cond_fb
    :goto_fb
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    new-instance v5, Lcom/meicam/sdk/NvsHttpsRequest;

    invoke-direct {v5}, Lcom/meicam/sdk/NvsHttpsRequest;-><init>()V

    .line 112
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 113
    const-string v7, "command"

    const-string v8, "setAppStatistics"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v7, Lcom/meicam/sdk/NvsStatisticsSender;->HTTPS_API_SET_STATISTICS:Ljava/lang/String;

    invoke-virtual {v5, v7, v6, v4}, Lcom/meicam/sdk/NvsHttpsRequest;->postHttpsRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v4, "errNo"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_83

    .line 122
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_126} :catch_f9

    goto/16 :goto_83

    .line 124
    :goto_128
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_83

    .line 128
    :cond_12d
    iget-object v1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_APP_START_TIME:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/meicam/sdk/NvsSystemVariableManager;->setSystemVariableStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 129
    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_INFO_CURRENT_DATE:Ljava/lang/String;

    invoke-direct {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->getCurrentDateString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/meicam/sdk/NvsSystemVariableManager;->setSystemVariableString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 139
    sget-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsSender:Lcom/meicam/sdk/NvsStatisticsSender;

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    .line 141
    sget-object v1, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsStatisticsInfo;->release()V

    .line 142
    sput-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsInfo:Lcom/meicam/sdk/NvsStatisticsInfo;

    .line 143
    sput-object v0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsSender:Lcom/meicam/sdk/NvsStatisticsSender;

    .line 144
    iput-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_handler:Landroid/os/Handler;

    .line 147
    :try_start_12
    iget-object v1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 148
    iput-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_thread:Landroid/os/HandlerThread;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Meicam"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_38
    return-void
.end method

.method public sendStatistics(IZ)V
    .registers 3

    .line 62
    iput p1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    .line 63
    iput-boolean p2, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_isStatisticsPrivateInfo:Z

    .line 64
    iget-object p0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_handler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
