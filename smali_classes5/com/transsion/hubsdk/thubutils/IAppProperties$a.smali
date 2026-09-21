.class public Lcom/transsion/hubsdk/thubutils/IAppProperties$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/thubutils/IAppProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/thubutils/IAppProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/thubutils/IAppProperties$-CC;->$default$get(Lcom/transsion/hubsdk/thubutils/IAppProperties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/thubutils/IAppProperties$-CC;->$default$get(Lcom/transsion/hubsdk/thubutils/IAppProperties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getBoolean(Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/thubutils/IAppProperties$-CC;->$default$getBoolean(Lcom/transsion/hubsdk/thubutils/IAppProperties;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic initialize(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/thubutils/IAppProperties$-CC;->$default$initialize(Lcom/transsion/hubsdk/thubutils/IAppProperties;Ljava/lang/String;)V

    return-void
.end method
