.class public Lcom/transsion/hubsdk/api/app/TranNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranNotificationManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .registers 3

    .line 113
    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/notification/TranAospZenModeConfigExt;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 211
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canPlaySound(Ljava/lang/String;I)Z
    .registers 4

    .line 282
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->canPlaySound(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canPlayVibration(Ljava/lang/String;I)Z
    .registers 4

    .line 310
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->canPlayVibration(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 225
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public createNotificationChannelsForPackage(Ljava/lang/String;ILjava/util/List;)V
    .registers 5

    if-eqz p1, :cond_e

    if-eqz p3, :cond_e

    .line 385
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->createNotificationChannelsForPackage(Ljava/lang/String;ILjava/util/List;)V

    return-void

    .line 383
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 134
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 152
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 372
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    move-result-object p0

    return-object p0

    .line 370
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNotificationImportanceForPackage(Ljava/lang/String;I)I
    .registers 4

    .line 355
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 358
    :cond_8
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNotificationImportanceForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 254
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;
    .registers 3

    .line 95
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 96
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubNotificationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    :cond_18
    return-object p1

    .line 99
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospNotificationManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospNotificationManager;

    :cond_2b
    return-object p1
.end method

.method public getTranNotificationAppGroupForPackage(Ljava/lang/String;I)I
    .registers 4

    .line 418
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 421
    :cond_8
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getTranNotificationAppGroupForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getZenMode()I
    .registers 2

    .line 63
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->getZenMode()I

    move-result p0

    return p0
.end method

.method public isImportanceLocked(Ljava/lang/String;I)Z
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 268
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public notifyTranAppGroupIgnoreForPackage(Ljava/lang/String;I)V
    .registers 4

    .line 406
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 409
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->notifyTranAppGroupIgnoreForPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyTranAppGroupTipShowForPackage(Ljava/lang/String;I)V
    .registers 4

    .line 394
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 397
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->notifyTranAppGroupTipShowForPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 4

    .line 166
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public registerTranNotificationStatsCallback(Lcom/transsion/hubsdk/api/app/ITranNotificationStatsCallback;)V
    .registers 3

    .line 442
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 445
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->registerTranNotificationStatsCallback(Lcom/transsion/hubsdk/api/app/ITranNotificationStatsCallback;)V

    return-void
.end method

.method public setNotificationImportanceForPackage(Ljava/lang/String;II)V
    .registers 5

    .line 338
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 341
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setNotificationImportanceForPackage(Ljava/lang/String;II)V

    return-void
.end method

.method public setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4

    .line 90
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 181
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setPlaySound(Ljava/lang/String;IZ)V
    .registers 5

    .line 296
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setPlaySound(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setPlayVibration(Ljava/lang/String;IZ)V
    .registers 5

    .line 324
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setPlayVibration(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    .line 196
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setShowBadge(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setTranNotificationAppGroupForPackage(Ljava/lang/String;II)V
    .registers 5

    .line 431
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 434
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setTranNotificationAppGroupForPackage(Ljava/lang/String;II)V

    return-void
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    .line 51
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public shouldShowTranAppGroupTipForPackage(Ljava/lang/String;I)I
    .registers 4

    .line 463
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 466
    :cond_8
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->shouldShowTranAppGroupTipForPackage(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public unRegisterTranNotificationStatsCallback()V
    .registers 2

    .line 452
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 455
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->unRegisterTranNotificationStatsCallback()V

    return-void
.end method

.method public updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 5

    .line 78
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranNotificationManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return-void
.end method
