.class public Lcom/transsion/hubsdk/api/app/TranAppGlobals;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAppGlobals"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntCoreSetting(Ljava/lang/String;I)I
    .registers 4

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppGlobals;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranAppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranAppGlobals;
    .registers 3

    .line 40
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 41
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->TAG:Ljava/lang/String;

    const-string v0, "TranThubAppGlobals"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubAppGlobals;

    :cond_18
    return-object p1

    .line 44
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAppGlobals"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranAppGlobals;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospAppGlobals;

    :cond_2b
    return-object p1
.end method
