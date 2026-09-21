.class public final Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final DEFAULT_TIME_ZONE:Ljava/lang/String; = "Asia/Singapore"

.field private static final HEADER_APP_PACKAGE_NAME:Ljava/lang/String; = "x-app-package-name"

.field private static final HEADER_APP_VERSION:Ljava/lang/String; = "x-app-version"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final HEADER_DEVICE_MODEL:Ljava/lang/String; = "x-device-model"

.field private static final HEADER_DEVICE_TOKEN:Ljava/lang/String; = "x-device-token"

.field private static final HEADER_TIMESTAMP:Ljava/lang/String; = "x-timestamp"

.field private static final HEADER_TIME_ZONE:Ljava/lang/String; = "x-time-zone"

.field public static final INSTANCE:Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;

.field public static final TAG:Ljava/lang/String; = "UltraHdProxyHeaders"

.field private static volatile cachedDeviceToken:Ljava/lang/String;

.field private static final deviceTokenLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;

    invoke-direct {v0}, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;-><init>()V

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;->INSTANCE:Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;->deviceTokenLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getOrCreateDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 75
    sget-object p0, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;->cachedDeviceToken:Ljava/lang/String;

    if-eqz p0, :cond_b

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    .line 76
    :cond_b
    :try_start_b
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/gallery20/sdk/ai_art/network/AdvertisingIdClient;->getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_21

    :catchall_16
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 77
    :goto_21
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    move-object p0, v1

    :cond_29
    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_38

    .line 78
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_35

    :cond_34
    move-object p0, v1

    :goto_35
    if-eqz p0, :cond_38

    goto :goto_5b

    .line 79
    :cond_38
    :try_start_38
    invoke-static {p1}, Lcom/transsion/ga/AthenaAnalytics;->getAppVAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_41

    goto :goto_4c

    :catchall_41
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 80
    :goto_4c
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    goto :goto_54

    :cond_53
    move-object v1, p0

    :goto_54
    move-object p0, v1

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_5b

    .line 81
    const-string p0, ""

    .line 82
    :cond_5b
    :goto_5b
    sget-object p1, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;->deviceTokenLock:Ljava/lang/Object;

    monitor-enter p1

    .line 83
    :try_start_5e
    sget-object v0, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;->cachedDeviceToken:Ljava/lang/String;

    if-eqz v0, :cond_6b

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    goto :goto_6b

    :catchall_69
    move-exception p0

    goto :goto_74

    .line 84
    :cond_6b
    :goto_6b
    sput-object p0, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;->cachedDeviceToken:Ljava/lang/String;

    .line 86
    :cond_6d
    sget-object p0, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;->cachedDeviceToken:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_69

    monitor-exit p1

    return-object p0

    :goto_74
    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final build(Landroid/content/Context;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_16

    goto :goto_21

    :catchall_16
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    :goto_21
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    move-object v0, v2

    :cond_29
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 38
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_35

    :cond_34
    move-object v0, v2

    :goto_35
    if-eqz v0, :cond_39

    :goto_37
    move-object v1, v0

    goto :goto_3c

    .line 39
    :cond_39
    const-string v0, "Asia/Singapore"

    goto :goto_37

    .line 40
    :goto_3c
    :try_start_3c
    const-string v0, "ro.product.device"

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_47

    goto :goto_52

    :catchall_47
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    :goto_52
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    move-object v0, v2

    :cond_59
    check-cast v0, Ljava/lang/String;

    .line 42
    const-string v3, ""

    if-eqz v0, :cond_6b

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_66

    goto :goto_67

    :cond_66
    move-object v0, v2

    :goto_67
    if-eqz v0, :cond_6b

    move-object v4, v0

    goto :goto_6c

    :cond_6b
    move-object v4, v3

    :goto_6c
    if-eqz p1, :cond_b4

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_76

    move-object v5, v3

    goto :goto_77

    :cond_76
    move-object v5, v0

    .line 48
    :goto_77
    :try_start_77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    .line 54
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8c
    .catchall {:try_start_77 .. :try_end_8c} :catchall_8d

    goto :goto_98

    :catchall_8d
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    :goto_98
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    goto :goto_a0

    :cond_9f
    move-object v2, v0

    :goto_a0
    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_a9

    .line 47
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_ab

    :cond_a9
    const-wide/16 v6, 0x0

    .line 56
    :goto_ab
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_b8

    .line 58
    :cond_b4
    invoke-static {v3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 45
    :goto_b8
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_ca

    .line 61
    invoke-direct {p0, p1}, Lcom/gallery20/sdk/ai_art/network/CommonProxyHeaders;->getOrCreateDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 64
    :cond_ca
    const-string p0, "Content-Type"

    const-string p1, "application/json"

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 66
    const-string p0, "x-time-zone"

    invoke-static {p0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 67
    const-string p0, "x-device-token"

    invoke-static {p0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 68
    const-string p0, "x-device-model"

    invoke-static {p0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 69
    const-string p0, "x-app-package-name"

    invoke-static {p0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 70
    const-string p0, "x-app-version"

    invoke-static {p0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    filled-new-array/range {v5 .. v10}, [Lkotlin/Pair;

    move-result-object p0

    .line 63
    invoke-static {p0}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method
