.class public Lcom/transsion/hubsdk/api/os/TranNvramManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNvramManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;

.field private mThubService:Lcom/transsion/hubsdk/core/os/TranThubNvramManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupToBinRegion_All()Z
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 104
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_8
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranNvramManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;->backupToBinRegion_All()Z

    move-result p0

    return p0
.end method

.method public deleteFileByName(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 88
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_8
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranNvramManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;
    .registers 3

    .line 29
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 30
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranNvramManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubNvramManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubNvramManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubNvramManager;

    :cond_18
    return-object p1

    .line 33
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranNvramManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospNvramManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;

    :cond_2b
    return-object p1
.end method

.method public readFileByName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    if-eqz p1, :cond_d

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranNvramManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;->readFileByName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fileName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 74
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranNvramManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;->writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B

    move-result p0

    return p0
.end method
