.class public Lcom/transsion/hubsdk/core/os/TranThubUserHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll()Landroid/os/UserHandle;
    .registers 1

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/os/TranUserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static getAppId(I)I
    .registers 2

    .line 42
    new-instance v0, Lcom/transsion/hubsdk/os/TranUserHandle;

    invoke-direct {v0}, Lcom/transsion/hubsdk/os/TranUserHandle;-><init>()V

    .line 43
    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/os/TranUserHandle;->getAppId(I)I

    move-result p0

    return p0
.end method

.method public static getCurrent()Landroid/os/UserHandle;
    .registers 1

    .line 24
    sget-object v0, Lcom/transsion/hubsdk/os/TranUserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static getUserId(I)I
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/transsion/hubsdk/os/TranUserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public static isSystem()Z
    .registers 1

    .line 32
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->isSystem()Z

    move-result v0

    return v0
.end method

.method public static myUserId()I
    .registers 1

    .line 16
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public static of(I)Landroid/os/UserHandle;
    .registers 1

    .line 28
    invoke-static {p0}, Lcom/transsion/hubsdk/os/TranUserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
