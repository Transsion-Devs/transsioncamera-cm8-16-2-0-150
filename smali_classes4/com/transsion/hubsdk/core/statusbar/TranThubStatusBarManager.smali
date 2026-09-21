.class public Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubStatusBarManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;


# direct methods
.method public static synthetic $r8$lambda$4eWhwGHQmy9giRyZ8blHI-_20Pk(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->lambda$expandNotificationsPanel$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cfZa6zBa9WJsWXPZy-6mf5QriZU(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->lambda$expandSettingsPanel$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "statusbar"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    .line 41
    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$expandNotificationsPanel$1()Ljava/lang/Object;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 126
    invoke-interface {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->expandNotificationsPanel()V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$expandSettingsPanel$0()Ljava/lang/Object;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 115
    invoke-interface {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->expandSettingsPanel()V

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 169
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 170
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 173
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "autoStartFullIntent:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collapsePanels()V
    .registers 4

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez p0, :cond_5

    return-void

    .line 61
    :cond_5
    :try_start_5
    invoke-interface {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->collapsePanels()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 63
    sget-object v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapsePanels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public customGesturesEnable(Ljava/lang/String;Z)V
    .registers 4

    .line 147
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 148
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->customGesturesEnable(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 151
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customGesturesEnable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 180
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 181
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 184
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "customHeadsUp:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public customNotificationStyle(Ljava/lang/String;Z)V
    .registers 4

    .line 202
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 203
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->customNotificationStyle(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 206
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customNotificationStyle:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public customPanelEnable(Ljava/lang/String;Z)V
    .registers 4

    .line 158
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 159
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->customPanelEnable(Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 162
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customPanelEnable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disable(I)V
    .registers 4

    .line 45
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez p0, :cond_5

    return-void

    .line 49
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->disable(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 51
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 225
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 226
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 229
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enableAction:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .line 214
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 215
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 218
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enableActionWithUrl:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public expandNotificationsPanel()V
    .registers 3

    .line 124
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;)V

    const-string p0, "statusbar"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    sget-object p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    const-string v0, "expandNotificationsPanel"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public expandSettingsPanel()V
    .registers 3

    .line 113
    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;)V

    const-string p0, "statusbar"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    sget-object p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    const-string v0, "expandSettingsPanel"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestoryCallback(Ljava/lang/String;)V
    .registers 4

    .line 136
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 137
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->onDestoryCallback(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 140
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestoryCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerTranStatusBar(Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 337
    :try_start_6
    new-instance v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager$TranThubStatusBarCallback;-><init>(Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V

    .line 338
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    invoke-interface {p0, v0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->registerTranStatusBar(Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBar;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    .line 341
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTranStatusBar e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .registers 11

    .line 79
    iget-object v0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez v0, :cond_5

    return-void

    .line 83
    :cond_5
    :try_start_5
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    move-object p0, v0

    .line 85
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setIcon:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 4

    .line 91
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-nez p0, :cond_5

    return-void

    .line 95
    :cond_5
    :try_start_5
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p0

    .line 97
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setIconVisibility:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 4

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    invoke-interface {p0}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->showPinningEscapeToast()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPinningEscapeToast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 191
    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->mService:Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;

    if-eqz p0, :cond_7

    .line 192
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/internal/statusbar/ITranStatusBarService;->updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :cond_7
    return-void

    :catch_8
    move-exception p0

    .line 195
    sget-object p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateCloseHeadsUp:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
