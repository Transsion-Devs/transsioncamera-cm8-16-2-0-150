.class public Lcom/transsion/hubsdk/api/content/TranContextExt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

.field private mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 7

    .line 161
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 6

    if-eqz p2, :cond_1c

    if-ltz p3, :cond_14

    const v0, 0x7fffffff

    if-ge p3, v0, :cond_14

    .line 145
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 143
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input flag wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    :cond_1c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableAssetsOverlay()V
    .registers 2

    .line 208
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->enableAssetsOverlay()V

    return-void
.end method

.method public getDisplayId(Landroid/content/Context;)I
    .registers 3

    .line 124
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->getDisplayId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;
    .registers 2

    .line 43
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 44
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/TranContextExt;->mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/content/TranThubContext;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/TranThubContext;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/TranContextExt;->mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    :cond_11
    return-object p1

    .line 46
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/TranContextExt;->mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/TranAospContext;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/TranAospContext;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/TranContextExt;->mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    :cond_1d
    return-object p1
.end method

.method public getUser(Landroid/content/Context;)Landroid/os/UserHandle;
    .registers 3

    if-eqz p1, :cond_d

    .line 187
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->getUser(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    .line 185
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 8

    .line 114
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public registerReceiverForAllUsers(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 8

    if-eqz p1, :cond_17

    if-eqz p3, :cond_f

    .line 239
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->registerReceiverForAllUsers(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 237
    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "filter should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5

    .line 173
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/RequiresPermission;
        .end annotation
    .end param

    .line 87
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/RequiresPermission;
        .end annotation
    .end param

    .line 65
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 5

    if-eqz p1, :cond_d

    .line 201
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33331:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 199
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
