.class public Lcom/transsion/hubsdk/api/factorymode/TranFactoryModeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranFactoryModeManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/factorymode/TranAospFactoryModeManager;

.field private mThubService:Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/factorymode/ITranFactoryModeAdapter;
    .registers 3

    .line 18
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 19
    sget-object p1, Lcom/transsion/hubsdk/api/factorymode/TranFactoryModeManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubFactoryModeManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/transsion/hubsdk/api/factorymode/TranFactoryModeManager;->mThubService:Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/factorymode/TranFactoryModeManager;->mThubService:Lcom/transsion/hubsdk/core/factorymode/TranThubFactoryModeManager;

    :cond_18
    return-object p1

    .line 22
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/factorymode/TranFactoryModeManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospFactoryModeManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/transsion/hubsdk/api/factorymode/TranFactoryModeManager;->mAospService:Lcom/transsion/hubsdk/aosp/factorymode/TranAospFactoryModeManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/factorymode/TranAospFactoryModeManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/factorymode/TranAospFactoryModeManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/factorymode/TranFactoryModeManager;->mAospService:Lcom/transsion/hubsdk/aosp/factorymode/TranAospFactoryModeManager;

    :cond_2b
    return-object p1
.end method

.method public isFactoryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4

    .line 33
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33301:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/factorymode/TranFactoryModeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/factorymode/ITranFactoryModeAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/factorymode/ITranFactoryModeAdapter;->isFactoryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 37
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
