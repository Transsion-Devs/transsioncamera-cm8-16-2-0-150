.class public Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAppWidgetManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "appwidget"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

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

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 42
    sget-object p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string v0, "getInstalledProviders: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method protected setService(Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    return-void
.end method
