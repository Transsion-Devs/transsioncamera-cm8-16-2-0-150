.class public Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranTpManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/tp/TranAospTpManager;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/tp/ITranTpManagerAdapter;
    .registers 3

    .line 18
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 19
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubTpManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;

    :cond_18
    return-object p1

    .line 22
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospTpManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/tp/TranAospTpManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/tp/TranAospTpManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/tp/TranAospTpManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/tp/TranAospTpManager;

    :cond_2b
    return-object p1
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 3

    .line 33
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-ltz p1, :cond_15

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33351:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/tp/ITranTpManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/tp/ITranTpManagerAdapter;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type should be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    .line 50
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-ltz p1, :cond_17

    if-eqz p2, :cond_17

    .line 56
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33351:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/tp/ITranTpManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/tp/ITranTpManagerAdapter;->setValue(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 54
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type should be greater than 0 and data should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
