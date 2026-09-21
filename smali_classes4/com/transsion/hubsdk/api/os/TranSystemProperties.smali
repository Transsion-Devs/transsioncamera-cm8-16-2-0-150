.class public Lcom/transsion/hubsdk/api/os/TranSystemProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSystemProperties"

.field protected static sAospService:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

.field protected static sThubService:Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 51
    const-string v0, ""

    .line 53
    :try_start_2
    sget-object v1, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 55
    sget-object v1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMethod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 74
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 76
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWithDefaultMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 145
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 147
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBooleanMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 96
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 98
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 6
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 116
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide p0

    :catch_b
    move-exception p0

    .line 118
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLongMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method protected static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;
    .registers 2

    .line 27
    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 28
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSystemProperties"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->sThubService:Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;

    if-nez p0, :cond_18

    new-instance p0, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->sThubService:Lcom/transsion/hubsdk/core/os/TranThubSystemProperties;

    :cond_18
    return-object p0

    .line 31
    :cond_19
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSystemProperties"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->sAospService:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    if-nez p0, :cond_2b

    new-instance p0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->sAospService:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    :cond_2b
    return-object p0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 167
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranSystemPropertiesAdapter;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 169
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
