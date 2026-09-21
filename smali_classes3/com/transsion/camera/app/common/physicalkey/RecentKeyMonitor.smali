.class public Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;
.super Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;
.source "SourceFile"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mIsReceiverRegistered:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mObserveHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

.field private final mRecentStartTimestamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecentKeyListener(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;)Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mRecentKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateRecentStartTimestamp(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->updateRecentStartTimestamp(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mRecentStartTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mIsReceiverRegistered:Z

    .line 133
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;-><init>(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mObserveHandler:Landroid/os/Handler;

    return-void
.end method

.method private updateContentObserver(Landroid/content/Context;Z)V
    .registers 6

    if-eqz p2, :cond_2c

    .line 51
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz p2, :cond_f

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateContentObserver: observer already registered"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_f
    new-instance p2, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;

    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mObserveHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0, p1}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;-><init>(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 78
    const-string p2, "camera_privacy_mode_running"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->updateRecentStartTimestamp(Landroid/content/Context;)V

    return-void

    .line 82
    :cond_2c
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz p2, :cond_3c

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContentObserver:Landroid/database/ContentObserver;

    :cond_3c
    return-void
.end method

.method private updateRecentStartTimestamp(Landroid/content/Context;)V
    .registers 5

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "camera_privacy_mode_running"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mRecentStartTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRecentStartTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mRecentStartTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContext:Landroid/content/Context;

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public isInvalidKeyEventFromSetting()Z
    .registers 8

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mRecentStartTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 128
    const-string v2, "camera_privacy_mode_running"

    move-wide v5, v3

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->isInvalidKeyEvent(Ljava/lang/String;JJ)Z

    move-result p0

    .line 129
    iget-object v0, v1, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInvalidKeyEventFromSetting: isInvalid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public setKeyEventListener(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setRecentKeyListener"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mRecentKeyListener:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    return-void
.end method

.method public start()V
    .registers 5

    .line 97
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    const-string v1, "com.transsion.recentstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->updateContentObserver(Landroid/content/Context;Z)V

    .line 106
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mIsReceiverRegistered:Z

    return-void
.end method

.method public stop()V
    .registers 3

    .line 111
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_1a

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mIsReceiverRegistered:Z

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->updateContentObserver(Landroid/content/Context;Z)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1a
    return-void
.end method
