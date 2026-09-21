.class public Lcom/transsion/hubsdk/api/view/TranViewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranViewConfiguration"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;


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
.method public getHoverTapSlop()I
    .registers 2

    .line 30
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;->getHoverTapSlop()I

    move-result p0

    return p0
.end method

.method public getHoverTapTimeout()I
    .registers 2

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;->getHoverTapTimeout()I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;
    .registers 3

    .line 15
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 16
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->TAG:Ljava/lang/String;

    const-string v0, "TranThubViewConfiguration"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;

    :cond_18
    return-object p1

    .line 19
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->TAG:Ljava/lang/String;

    const-string v0, "TranAospViewConfiguration"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;

    :cond_2b
    return-object p1
.end method
