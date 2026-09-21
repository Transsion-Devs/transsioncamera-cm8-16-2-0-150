.class public Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;
.super Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHomeKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

.field private mIsReceiverRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHomeKeyListener(Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;)Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mHomeKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mIsReceiverRegistered:Z

    .line 57
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;-><init>(Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setKeyEventListener(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;)V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setRecentKeyListener"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mHomeKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    return-void
.end method

.method public start()V
    .registers 5

    .line 31
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 38
    iget-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mIsReceiverRegistered:Z

    return-void
.end method

.method public stop()V
    .registers 3

    .line 44
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_15

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mIsReceiverRegistered:Z

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_15
    return-void
.end method
