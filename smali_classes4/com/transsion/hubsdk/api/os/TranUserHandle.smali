.class public Lcom/transsion/hubsdk/api/os/TranUserHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ALL:Landroid/os/UserHandle; = null

.field public static CURRENT:Landroid/os/UserHandle; = null

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I

.field public static final USER_SYSTEM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    invoke-static {}, Lcom/transsion/hubsdk/core/os/TranThubUserHandle;->getCurrent()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_15

    .line 36
    :cond_f
    invoke-static {}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->getCurrent()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 39
    :goto_15
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 40
    invoke-static {}, Lcom/transsion/hubsdk/core/os/TranThubUserHandle;->getAll()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserHandle;->ALL:Landroid/os/UserHandle;

    return-void

    .line 42
    :cond_24
    invoke-static {}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->getAll()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserHandle;->ALL:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(I)I
    .registers 2

    .line 109
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 110
    invoke-static {p0}, Lcom/transsion/hubsdk/core/os/TranThubUserHandle;->getAppId(I)I

    move-result p0

    return p0

    .line 112
    :cond_d
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->getAppId(I)I

    move-result p0

    return p0
.end method

.method public static getUserId(I)I
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 69
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    invoke-static {p0}, Lcom/transsion/hubsdk/core/os/TranThubUserHandle;->getUserId(I)I

    move-result p0

    return p0

    .line 72
    :cond_d
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public static isSystem()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 97
    invoke-static {}, Lcom/transsion/hubsdk/core/os/TranThubUserHandle;->isSystem()Z

    move-result v0

    return v0

    .line 99
    :cond_d
    invoke-static {}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->isSystem()Z

    move-result v0

    return v0
.end method

.method public static myUserId()I
    .registers 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 55
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    invoke-static {}, Lcom/transsion/hubsdk/core/os/TranThubUserHandle;->myUserId()I

    move-result v0

    return v0

    .line 58
    :cond_d
    invoke-static {}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public static of(I)Landroid/os/UserHandle;
    .registers 2

    .line 83
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 84
    invoke-static {p0}, Lcom/transsion/hubsdk/core/os/TranThubUserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    .line 86
    :cond_d
    invoke-static {p0}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
