.class Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->updateContentObserver(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$nfjSl15eg-kwoBZB3MbliiCPl1s(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->lambda$onChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    iput-object p3, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    invoke-static {v0}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->-$$Nest$fgetmRecentKeyListener(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;)Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "gesture navigate notifyRecentEvent from setting change"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    sget-object p0, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;->FROM_SETTING:Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;->notifyKeyEvent(Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener$KeyEventType;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 58
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 60
    :try_start_3
    const-string p1, "recent_from_setting"

    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    iget-object p1, p1, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onChange: recent_from_setting"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->-$$Nest$mupdateRecentStartTimestamp(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;Landroid/content/Context;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 65
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2c

    .line 74
    :cond_28
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 75
    throw p0
.end method
