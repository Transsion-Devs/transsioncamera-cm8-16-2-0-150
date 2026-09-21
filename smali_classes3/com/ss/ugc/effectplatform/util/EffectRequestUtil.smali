.class public final Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic addCommonParams$default(Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;Lcom/ss/ugc/effectplatform/EffectConfig;ZZILjava/lang/Object;)Ljava/util/HashMap;
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_6

    move p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v0

    .line 32
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/ugc/effectplatform/util/EffectRequestUtil;->addCommonParams(Lcom/ss/ugc/effectplatform/EffectConfig;ZZ)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addCommonParams(Lcom/ss/ugc/effectplatform/EffectConfig;ZZ)Ljava/util/HashMap;
    .registers 8

    const-string p0, "configuration"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    sget-object v0, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 36
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f
    const-string v2, "access_key"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_24
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 40
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_37
    const-string v2, "device_id"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_3c
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 44
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4f
    const-string v2, "device_type"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_54
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 48
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getPlatform()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_67

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_67
    const-string v2, "device_platform"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_6c
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_84

    .line 52
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getRegion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7f
    const-string v2, "region"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_84
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 56
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_97

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_97
    const-string v2, "sdk_version"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_9c
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b4

    .line 60
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_af

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_af
    const-string v2, "app_version"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_b4
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 64
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getChannel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c7
    const-string v2, "channel"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_cc
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 68
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_df

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_df
    const-string v2, "aid"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_e4
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 71
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f7
    const-string v1, "app_language"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_fc
    sget-object v0, Lbytekn/foundation/utils/CollectionUtil;->INSTANCE:Lbytekn/foundation/utils/CollectionUtil;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getIopInfo()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbytekn/foundation/utils/CollectionUtil;->isMapEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_152

    if-eqz p2, :cond_10f

    .line 75
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getIopInfo()Ljava/util/HashMap;

    move-result-object p2

    goto :goto_14f

    .line 77
    :cond_10f
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getIopInfo()Ljava/util/HashMap;

    move-result-object p2

    .line 112
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 113
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_120
    :goto_120
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    const-string v3, "lx"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_120

    const-string v3, "ly"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_120

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_120

    :cond_14e
    move-object p2, v0

    .line 74
    :goto_14f
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 81
    :cond_152
    sget-object p2, Lcom/ss/ugc/effectplatform/util/TextUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/TextUtils;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getGpuVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ss/ugc/effectplatform/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_16c

    .line 82
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getGpuVersion()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_167

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_167
    const-string v0, "gpu"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_16c
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCustomSdkVersion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_187

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_179

    goto :goto_187

    .line 85
    :cond_179
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getCustomSdkVersion()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_182

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_182
    const-string v0, "cutsame_sdk_version"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_187
    :goto_187
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getFilterType()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1a0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-lez p2, :cond_1a0

    .line 89
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getFilterType()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "filter_type"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1a0
    new-instance p2, Lcom/ss/ugc/effectplatform/util/DeviceInfoFetcher;

    invoke-direct {p2}, Lcom/ss/ugc/effectplatform/util/DeviceInfoFetcher;-><init>()V

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getAppContext()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/ss/ugc/effectplatform/util/DeviceInfoFetcher;->fetch(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1b4

    .line 94
    const-string p3, "device_info"

    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1b4
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/EffectConfig;->getRequestStrategy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "platform_ab_params"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object p1, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->INSTANCE:Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/util/EffectPlatformAES;->getPlatformVersion()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1ce

    .line 98
    const-string p2, "platform_sdk_version"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ce
    return-object p0
.end method
