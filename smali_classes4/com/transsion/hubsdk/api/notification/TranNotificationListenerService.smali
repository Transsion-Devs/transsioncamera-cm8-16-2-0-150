.class public Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNotificationListenerService"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/notification/TranAospNotificationListenerService;

.field private mListenerService:Landroid/service/notification/NotificationListenerService;

.field private mThubService:Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/service/notification/NotificationListenerService;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->mListenerService:Landroid/service/notification/NotificationListenerService;

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/notification/ITranNotificationListenerServiceAdapter;
    .registers 3

    .line 54
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 55
    iget-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->mThubService:Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;

    if-nez p1, :cond_13

    new-instance p1, Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->mListenerService:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->mThubService:Lcom/transsion/hubsdk/core/notification/TranThubNotificationListenerService;

    :cond_13
    return-object p1

    .line 57
    :cond_14
    iget-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->mAospService:Lcom/transsion/hubsdk/aosp/notification/TranAospNotificationListenerService;

    if-nez p1, :cond_21

    new-instance p1, Lcom/transsion/hubsdk/aosp/notification/TranAospNotificationListenerService;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->mListenerService:Landroid/service/notification/NotificationListenerService;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/aosp/notification/TranAospNotificationListenerService;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->mAospService:Lcom/transsion/hubsdk/aosp/notification/TranAospNotificationListenerService;

    :cond_21
    return-object p1
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5

    .line 39
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/notification/ITranNotificationListenerServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/notification/ITranNotificationListenerServiceAdapter;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public unregisterAsSystemService()V
    .registers 2

    .line 50
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/notification/TranNotificationListenerService;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/notification/ITranNotificationListenerServiceAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/notification/ITranNotificationListenerServiceAdapter;->unregisterAsSystemService()V

    return-void
.end method
