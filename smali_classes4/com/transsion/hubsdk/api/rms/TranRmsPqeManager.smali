.class public Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranRmsPqeManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;

.field private mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;
    .registers 3

    .line 29
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 30
    sget-object p1, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubRmsPqeManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->mThubService:Lcom/transsion/hubsdk/core/rms/TranThubRmsPqeManager;

    :cond_18
    return-object p1

    .line 33
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospRmsPqeManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->mAospService:Lcom/transsion/hubsdk/aosp/rms/TranAospRmsPqeManager;

    :cond_2b
    return-object p1
.end method

.method public getTranPictureList(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTranPictureList mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;->getTranPictureList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTranPictureSupportMode()[I
    .registers 3

    .line 53
    sget-object v0, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->TAG:Ljava/lang/String;

    const-string v1, "getTranPictureSupportMode"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;->getTranPictureSupportMode()[I

    move-result-object p0

    return-object p0
.end method

.method public setTranPictureMode(ILjava/lang/String;)V
    .registers 6

    .line 63
    sget-object v0, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranPictureMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " packageName ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33461:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/rms/TranRmsPqeManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/rms/ITranRmsPqeManagerAdapter;->setTranPictureMode(ILjava/lang/String;)V

    return-void
.end method
