.class public Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/notification/ITranNotificationListenerServiceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubNotificationListenerService"


# instance fields
.field private mListenerService:Lcom/transsion/hubsdk/notification/TranNotificationListenerService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;->mListenerService:Lcom/transsion/hubsdk/notification/TranNotificationListenerService;

    .line 24
    new-instance v0, Lcom/transsion/hubsdk/notification/TranNotificationListenerService;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/notification/TranNotificationListenerService;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;->mListenerService:Lcom/transsion/hubsdk/notification/TranNotificationListenerService;

    return-void
.end method


# virtual methods
.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 4

    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;->mListenerService:Lcom/transsion/hubsdk/notification/TranNotificationListenerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/notification/TranNotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 31
    sget-object p1, Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "registerAsSystemService fail"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterAsSystemService()V
    .registers 4

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;->mListenerService:Lcom/transsion/hubsdk/notification/TranNotificationListenerService;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/notification/TranNotificationListenerService;->unregisterAsSystemService()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterAsSystemService fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
