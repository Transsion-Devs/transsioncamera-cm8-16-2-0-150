.class public Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAppWidgetManager"


# instance fields
.field private mAppWidgettListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/app/ITranAppWidget;",
            "Lcom/transsion/hubsdk/appwidget/ITranAppWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    .line 36
    const-string v0, "appwidget"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 29
    sget-object v0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    return-object v0
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

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 46
    sget-object p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string v0, "getInstalledProviders: "

    invoke-static {p1, v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public registerAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 74
    sget-object p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string p1, "registerAppWidgetListener failed,has registered "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_13
    :try_start_13
    sget-object v0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start registerAppWidgetListener: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager$AppWidgetListener;-><init>(Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;Lcom/transsion/hubsdk/api/app/ITranAppWidget;)V

    .line 80
    iget-object v1, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    invoke-interface {p0, v0, p2}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;->registerAppWidgetListener(Lcom/transsion/hubsdk/appwidget/ITranAppWidget;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_40} :catch_41

    return-void

    :catch_41
    move-exception p0

    .line 83
    sget-object p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string p2, "registerAppWidgetListener: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    return-void
.end method

.method public unregisterAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 92
    sget-object p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string p1, "unregisterAppWidgetListener failed,not registered "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_13
    :try_start_13
    sget-object v0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start unregisterAppWidgetListener: callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mAppWidgettListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/hubsdk/appwidget/ITranAppWidget;

    .line 98
    iget-object p0, p0, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->mService:Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/appwidget/ITranAppWidgetManager;->unregisterAppWidgetListener(Lcom/transsion/hubsdk/appwidget/ITranAppWidget;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    .line 100
    sget-object p1, Lcom/transsion/hubsdk/core/appwidget/TranThubAppWidgetManager;->TAG:Ljava/lang/String;

    const-string p2, "unregisterAppWidgetListener: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
