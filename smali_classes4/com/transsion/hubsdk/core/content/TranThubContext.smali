.class public Lcom/transsion/hubsdk/core/content/TranThubContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 57
    invoke-static {p1}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/TranContext;->createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public enableAssetsOverlay()V
    .registers 1

    .line 82
    invoke-static {}, Lcom/transsion/hubsdk/TranContext;->enableAssetsOverlay()V

    return-void
.end method

.method public getDisplayId(Landroid/content/Context;)I
    .registers 2

    .line 52
    invoke-static {p1}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/TranContext;->getDisplayId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getUser(Landroid/content/Context;)Landroid/os/UserHandle;
    .registers 2

    .line 72
    invoke-static {p1}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/TranContext;->getUser(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 7

    .line 47
    invoke-static {p1}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/hubsdk/TranContext;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public registerReceiverForAllUsers(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 7

    .line 90
    invoke-static {p1}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    invoke-virtual/range {p0 .. p6}, Lcom/transsion/hubsdk/TranContext;->registerReceiverForAllUsers(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    return-void
.end method

.method public startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/RequiresPermission;
        .end annotation
    .end param

    .line 42
    invoke-static {p1}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/TranContext;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/RequiresPermission;
        .end annotation
    .end param

    .line 35
    invoke-static {p1}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/TranContext;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4

    .line 77
    invoke-static {p1}, Lcom/transsion/hubsdk/TranContext;->get(Landroid/content/Context;)Lcom/transsion/hubsdk/TranContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/TranContext;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method
