.class Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 60
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    const-string v0, "homekey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_64

    .line 64
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string/jumbo p1, "timestamp"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, p1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->isInvalidBroadcast(Ljava/lang/String;JJ)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_64

    .line 70
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;

    iget-object p1, p1, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cost: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->-$$Nest$fgetmHomeKeyListener(Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;)Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;

    iget-object p1, p1, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "gesture navigate notifyHomeEvent"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor$1;->this$0:Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;->-$$Nest$fgetmHomeKeyListener(Lcom/transsion/camera/app/common/physicalkey/HomeKeyMonitor;)Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;->notifyKeyEvent()V

    :cond_64
    :goto_64
    return-void
.end method
