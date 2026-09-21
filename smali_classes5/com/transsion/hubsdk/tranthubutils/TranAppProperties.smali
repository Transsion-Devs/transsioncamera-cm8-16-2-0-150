.class public Lcom/transsion/hubsdk/tranthubutils/TranAppProperties;
.super Ljava/lang/Object;
.source "TranAppProperties.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/IAppProperties;->Instance()Lcom/transsion/hubsdk/thubutils/IAppProperties;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/thubutils/IAppProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 80
    const-string v0, "AppProperties"

    const-string v1, "get default"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/IAppProperties;->Instance()Lcom/transsion/hubsdk/thubutils/IAppProperties;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/thubutils/IAppProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 44
    const-string v0, "AppProperties"

    const-string v1, "getBoolean"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/IAppProperties;->Instance()Lcom/transsion/hubsdk/thubutils/IAppProperties;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/transsion/hubsdk/thubutils/IAppProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static initialize(Ljava/lang/String;)V
    .registers 3
    .param p0, "nameSpace"    # Ljava/lang/String;

    .line 25
    const-string v0, "AppProperties"

    const-string v1, "Instance"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/IAppProperties;->Instance()Lcom/transsion/hubsdk/thubutils/IAppProperties;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/thubutils/IAppProperties;->initialize(Ljava/lang/String;)V

    .line 27
    return-void
.end method
