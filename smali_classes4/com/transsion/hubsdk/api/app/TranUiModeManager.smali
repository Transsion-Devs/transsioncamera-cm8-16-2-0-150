.class public Lcom/transsion/hubsdk/api/app/TranUiModeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranUiModeManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospUiModeManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranUiModeManagerAdapter;
    .registers 3

    .line 40
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 41
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranUiModeManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubUiModeManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranUiModeManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranUiModeManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubUiModeManager;

    :cond_18
    return-object p1

    .line 44
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranUiModeManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospUiModeManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranUiModeManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospUiModeManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospUiModeManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospUiModeManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranUiModeManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospUiModeManager;

    :cond_2b
    return-object p1
.end method

.method public setNightModeActivated(Z)Z
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranUiModeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranUiModeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranUiModeManagerAdapter;->setNightModeActivated(Z)Z

    move-result p0

    return p0
.end method
