.class public Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDisplayRotationManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospDisplayRotationManager;

.field private mThubService:Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranDisplayRotationAdapter;
    .registers 3

    .line 15
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 16
    sget-object p1, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDisplayRotationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;->mThubService:Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;->mThubService:Lcom/transsion/hubsdk/core/window/TranThubDisplayRotationManager;

    :cond_18
    return-object p1

    .line 19
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDisplayRotationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;->mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospDisplayRotationManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/window/TranAospDisplayRotationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/window/TranAospDisplayRotationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;->mAospService:Lcom/transsion/hubsdk/aosp/window/TranAospDisplayRotationManager;

    :cond_2b
    return-object p1
.end method

.method public onNotifySaveRotation(I)V
    .registers 3

    .line 30
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33301:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/window/TranDisplayRotationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/window/ITranDisplayRotationAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/window/ITranDisplayRotationAdapter;->onNotifySaveRotation(I)V

    return-void
.end method
