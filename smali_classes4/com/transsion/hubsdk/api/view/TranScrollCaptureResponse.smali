.class public Lcom/transsion/hubsdk/api/view/TranScrollCaptureResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranScrollCaptureResponse"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospScrollCaptureResponse;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubScrollCaptureResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnection(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranScrollCaptureResponse;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranScrollCaptureResponseAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranScrollCaptureResponseAdapter;->getConnection(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranScrollCaptureResponseAdapter;
    .registers 3

    .line 35
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 36
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranScrollCaptureResponse;->TAG:Ljava/lang/String;

    const-string v0, "TranThubScrollCaptureResponse"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranScrollCaptureResponse;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubScrollCaptureResponse;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubScrollCaptureResponse;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubScrollCaptureResponse;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranScrollCaptureResponse;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubScrollCaptureResponse;

    :cond_18
    return-object p1

    .line 39
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranScrollCaptureResponse;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPhysical"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranScrollCaptureResponse;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospScrollCaptureResponse;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospScrollCaptureResponse;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospScrollCaptureResponse;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranScrollCaptureResponse;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospScrollCaptureResponse;

    :cond_2b
    return-object p1
.end method
