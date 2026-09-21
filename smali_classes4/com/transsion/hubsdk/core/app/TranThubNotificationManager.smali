.class public Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranNotificationManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubNotificationStatsCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubNotificationManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;


# direct methods
.method public static synthetic $r8$lambda$t3rxyGqjsu--rCEPBcNtrKHwenw(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Ljava/lang/String;IZ)Ljava/lang/Object;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->lambda$getNotificationChannelsForPackage$0(Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "notification"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/transsion/hubsdk/app/ITranNotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/app/ITranNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$getNotificationChannelsForPackage$0(Ljava/lang/String;IZ)Ljava/lang/Object;
    .registers 4

    .line 252
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-eqz p0, :cond_12

    .line 253
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    .line 254
    new-instance p1, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 5

    .line 277
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 281
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 283
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "areNotificationsEnabledForPackage e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public canPlaySound(Ljava/lang/String;I)Z
    .registers 5

    .line 176
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 180
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->canPlaySound(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 182
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canPlaySound e = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public canPlayVibration(Ljava/lang/String;I)Z
    .registers 5

    .line 201
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 205
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->canPlayVibration(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 207
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canPlayVibration e = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 5

    .line 290
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 294
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 296
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canShowBadge e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public createNotificationChannelsForPackage(Ljava/lang/String;ILjava/util/List;)V
    .registers 5

    .line 264
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-eqz p0, :cond_14

    .line 266
    :try_start_4
    new-instance v0, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    invoke-direct {v0, p3}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILcom/transsion/hubsdk/content/pm/TranParceledListSlice;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-void

    .line 268
    :catch_d
    sget-object p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    const-string p1, "createNotificationChannelsForPackage fail"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 8

    .line 104
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 108
    :cond_6
    :try_start_6
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    move-object p0, v0

    .line 110
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getNotificationChannelForPackage e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .registers 5

    .line 303
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    .line 308
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    .line 310
    new-instance p1, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    .line 311
    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p0

    .line 315
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getNotificationChannelGroupsForPackage e:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .registers 4

    .line 117
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;

    move-result-object p0

    .line 124
    new-instance p1, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    .line 125
    invoke-virtual {p0}, Lcom/transsion/hubsdk/content/pm/TranParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p0

    .line 129
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getNotificationChannels e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;->emptyList()Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;IZ)Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .registers 6
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

    .line 251
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Ljava/lang/String;IZ)V

    const-string p0, "notification"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    return-object p0
.end method

.method public getNotificationImportanceForPackage(Ljava/lang/String;I)I
    .registers 5

    .line 238
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 242
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->getNotificationImportanceForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 244
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotificationImportanceForPackage e = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 5

    .line 322
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 326
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 328
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getNumNotificationChannelsForPackage e:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTranNotificationAppGroupForPackage(Ljava/lang/String;I)I
    .registers 5

    .line 371
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, -0x1

    if-nez p0, :cond_6

    return v0

    .line 375
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->getTranNotificationAppGroupForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 377
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTranNotificationAppGroupForPackage e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getZenMode()I
    .registers 5

    .line 60
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 64
    :cond_6
    :try_start_6
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->getZenMode()I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 66
    sget-object v1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZenMode: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isImportanceLocked(Ljava/lang/String;I)Z
    .registers 5

    .line 335
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 339
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 341
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isImportanceLocked e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public notifyTranAppGroupIgnoreForPackage(Ljava/lang/String;I)V
    .registers 4

    .line 361
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-eqz p0, :cond_1f

    .line 363
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->notifyTranAppGroupIgnoreForPackage(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 365
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyTranAppGroupIgnoreForPackage e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public notifyTranAppGroupTipShowForPackage(Ljava/lang/String;I)V
    .registers 4

    .line 350
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-eqz p0, :cond_1f

    .line 352
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->notifyTranAppGroupTipShowForPackage(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 354
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyTranAppGroupTipShowForPackage e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 5

    .line 136
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 140
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 142
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onlyHasDefaultChannel e = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public registerTranNotificationStatsCallback(Lcom/transsion/hubsdk/api/app/ITranNotificationStatsCallback;)V
    .registers 4

    .line 418
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 421
    :try_start_6
    new-instance v0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubNotificationStatsCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$TranThubNotificationStatsCallback;-><init>(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Lcom/transsion/hubsdk/api/app/ITranNotificationStatsCallback;)V

    .line 422
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->registerTranNotificationStatsCallback(Lcom/transsion/hubsdk/app/ITranNotificationStatsCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 425
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTranNotificationStatsCallback e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public setNotificationImportanceForPackage(Ljava/lang/String;II)V
    .registers 4

    .line 226
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_5

    return-void

    .line 230
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->setNotificationImportanceForPackage(Ljava/lang/String;II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 232
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setNotificationImportanceForPackage e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4

    .line 87
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 91
    :try_start_6
    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 93
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNotificationListenerAccessGranted e:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 4

    .line 150
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_5

    return-void

    .line 154
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 156
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setNotificationsEnabledForPackage e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPlaySound(Ljava/lang/String;IZ)V
    .registers 4

    .line 189
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_5

    return-void

    .line 193
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->setPlaySound(Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 195
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPlaySound e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPlayVibration(Ljava/lang/String;IZ)V
    .registers 4

    .line 214
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_5

    return-void

    .line 218
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->setPlayVibration(Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 220
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPlayVibration e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 4

    .line 162
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_5

    return-void

    .line 166
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->setShowBadge(Ljava/lang/String;IZ)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 168
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setShowBadge e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTranNotificationAppGroupForPackage(Ljava/lang/String;II)V
    .registers 4

    .line 383
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-eqz p0, :cond_1f

    .line 385
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->setTranNotificationAppGroupForPackage(Ljava/lang/String;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 387
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setTranNotificationAppGroupForPackage e:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    .line 48
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_5

    return-void

    .line 52
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 54
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setZenMode: e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldShowTranAppGroupTipForPackage(Ljava/lang/String;I)I
    .registers 5

    .line 441
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    const/4 v0, -0x1

    if-nez p0, :cond_6

    return v0

    .line 445
    :cond_6
    :try_start_6
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->shouldShowTranAppGroupTipForPackage(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 447
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldShowTranAppGroupTipForPackage e:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public unRegisterTranNotificationStatsCallback()V
    .registers 4

    .line 431
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-eqz p0, :cond_1f

    .line 433
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->unRegisterTranNotificationStatsCallback()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 435
    sget-object v0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterTranNotificationStatsCallback e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 4

    .line 75
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->mService:Lcom/transsion/hubsdk/app/ITranNotificationManager;

    if-nez p0, :cond_5

    return-void

    .line 79
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/app/ITranNotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 81
    sget-object p1, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateNotificationChannelForPackage e:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
