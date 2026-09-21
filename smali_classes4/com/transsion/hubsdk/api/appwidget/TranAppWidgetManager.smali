.class public Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAppWidgetManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;

.field private mThubService:Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstalledProviders(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;->getInstalledProviders(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;
    .registers 3

    .line 30
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 31
    sget-object p1, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAppWidgetManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->mThubService:Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->mThubService:Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;

    :cond_18
    return-object p1

    .line 34
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAppWidgetManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->mAospService:Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/appwidget/TranAppWidgetManager;->mAospService:Lcom/transsion/hubsdk/aosp/appwidget/TranAospAppWidgetManager;

    :cond_2b
    return-object p1
.end method
