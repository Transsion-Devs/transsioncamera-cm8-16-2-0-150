.class public Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FINGERPRINTSTARTAPPENABLE:Ljava/lang/String; = "fingerprintStartAppEnable"

.field public static final GESTURESPENABLE:Ljava/lang/String; = "gestureSpEnable"

.field public static final HIDENOTIFICATIONINMODE:Ljava/lang/String; = "hideNotificationInMode"

.field public static final MAGAZINEENABLE:Ljava/lang/String; = "magazineEnable"

.field public static final MULTIUSERENABLE:Ljava/lang/String; = "multiUserEnable"

.field public static final NOTIFICATIONEVENTENABLE:Ljava/lang/String; = "notificationEventEnable"

.field public static final NOTIFICATIONSUMMARYENABLE:Ljava/lang/String; = "notificationSummaryEnable"

.field public static final SHOWULTRAPOWER:Ljava/lang/String; = "showUltraPower"

.field private static final TAG:Ljava/lang/String; = "TranStatusBarManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

.field private mThubService:Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .line 179
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 182
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->autoStartFullIntent(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public collapsePanels()V
    .registers 2

    .line 82
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->collapsePanels()V

    return-void
.end method

.method public customGesturesEnable(Ljava/lang/String;Z)V
    .registers 4

    .line 203
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 206
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->customGesturesEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .line 166
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 169
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->customHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public customNotificationStyle(Ljava/lang/String;Z)V
    .registers 4

    .line 140
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 143
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->customNotificationStyle(Ljava/lang/String;Z)V

    return-void
.end method

.method public customPanelEnable(Ljava/lang/String;Z)V
    .registers 4

    .line 191
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 194
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->customPanelEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public disable(I)V
    .registers 3

    .line 73
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->disable(I)V

    return-void
.end method

.method public enableAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 237
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 240
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->enableAction(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6

    .line 225
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 228
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->enableActionWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public expandNotificationsPanel()V
    .registers 2

    .line 131
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33221:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->expandNotificationsPanel()V

    return-void
.end method

.method public expandSettingsPanel()V
    .registers 2

    .line 123
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33221:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->expandSettingsPanel()V

    return-void
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;
    .registers 3

    .line 56
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 57
    iget-object p1, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mThubService:Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mThubService:Lcom/transsion/hubsdk/core/statusbar/TranThubStatusBarManager;

    :cond_11
    return-object p1

    .line 59
    :cond_12
    sget-object p1, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospStatusBarManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mAospService:Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

    if-nez p1, :cond_24

    new-instance p1, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->mAospService:Lcom/transsion/hubsdk/aosp/statusbar/TranAospStatusBarManager;

    :cond_24
    return-object p1
.end method

.method public onDestoryCallback(Ljava/lang/String;)V
    .registers 3

    .line 214
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 217
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->onDestoryCallback(Ljava/lang/String;)V

    return-void
.end method

.method public registerTranStatusBar(Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V
    .registers 3

    .line 246
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 249
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33421:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->registerTranStatusBar(Lcom/transsion/hubsdk/api/app/ITranStatusBar;)V

    return-void
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 95
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 4

    .line 106
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public showPinningEscapeToast()V
    .registers 2

    .line 115
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->showPinningEscapeToast()V

    return-void
.end method

.method public updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .line 153
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 156
    :cond_7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/statusbar/TranStatusBarManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/statusbar/ITranStatusBarManagerAdapter;->updateCloseHeadsUp(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
