.class public final synthetic Lcom/transsion/hubsdk/thubutils/IAppProperties$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$get(Lcom/transsion/hubsdk/thubutils/IAppProperties;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public static $default$get(Lcom/transsion/hubsdk/thubutils/IAppProperties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method public static $default$getBoolean(Lcom/transsion/hubsdk/thubutils/IAppProperties;Ljava/lang/String;Z)Z
    .registers 3

    return p2
.end method

.method public static $default$initialize(Lcom/transsion/hubsdk/thubutils/IAppProperties;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/transsion/hubsdk/thubutils/IAppProperties;->CLASS_PATH:Ljava/lang/String;

    return-void
.end method

.method public static Instance()Lcom/transsion/hubsdk/thubutils/IAppProperties;
    .registers 2

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/thubutils/IAppProperties;->CLASS_INFO:Lthubutils/a;

    const-string v1, "/system/framework/thubutils.jar"

    invoke-virtual {v0, v1}, Lthubutils/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/thubutils/IAppProperties;

    return-object v0
.end method

.method public static synthetic a()Lcom/transsion/hubsdk/thubutils/IAppProperties;
    .registers 1

    .line 1
    new-instance v0, Lcom/transsion/hubsdk/thubutils/IAppProperties$a;

    invoke-direct {v0}, Lcom/transsion/hubsdk/thubutils/IAppProperties$a;-><init>()V

    return-object v0
.end method
