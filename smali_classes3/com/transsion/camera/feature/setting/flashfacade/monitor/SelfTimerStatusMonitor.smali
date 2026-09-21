.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# static fields
.field private static final SELF_TIMER_END_DELAY_TIME:J = 0xb4L


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSelfTiming:Z

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$RABCg0N-A8zOisbcCRPuz__yWd0(Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->lambda$onStatusChanged$0()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0()V
    .registers 2

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    return-void
.end method


# virtual methods
.method public init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_c

    .line 41
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 23
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 58
    const-string v0, "key_self_timer_status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3a

    .line 61
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_4e

    goto :goto_37

    :sswitch_17
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_37

    :cond_20
    const/4 v2, 0x2

    goto :goto_37

    :sswitch_22
    const-string p1, "status_self_timer_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_37

    :cond_2b
    move v2, v0

    goto :goto_37

    :sswitch_2d
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    move v2, v1

    :goto_37
    packed-switch v2, :pswitch_data_5c

    :goto_3a
    return-void

    .line 63
    :pswitch_3b
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    return-void

    .line 67
    :pswitch_3e
    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    return-void

    .line 73
    :pswitch_41
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;)V

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :sswitch_data_4e
    .sparse-switch
        -0xaded465 -> :sswitch_2d
        -0x5096c46 -> :sswitch_22
        0x31566b69 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    return-void
.end method

.method public selfTiming()Z
    .registers 1

    .line 79
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    return p0
.end method

.method public unInit()V
    .registers 4

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mSelfTiming:Z

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_14

    .line 50
    const-string v2, "key_self_timer_status"

    invoke-virtual {v0, v2, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 52
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/SelfTimerStatusMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    :cond_14
    return-void
.end method
