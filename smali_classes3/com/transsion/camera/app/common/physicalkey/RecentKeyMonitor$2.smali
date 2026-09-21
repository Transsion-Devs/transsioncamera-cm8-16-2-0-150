.class Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string/jumbo p1, "timestamp"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, p1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->isInvalidBroadcast(Ljava/lang/String;JJ)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_63

    .line 142
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    iget-object p1, p1, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    const-string p1, "com.transsion.recentstart"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    const-string p2, "com.transsion.camera"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->-$$Nest$fgetmRecentKeyListener(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;)Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    iget-object p1, p1, Lcom/transsion/camera/app/common/physicalkey/AbstractKeyMonitor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "gesture navigate notifyRecentEvent"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor$2;->this$0:Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;

    invoke-static {p0}, Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;->-$$Nest$fgetmRecentKeyListener(Lcom/transsion/camera/app/common/physicalkey/RecentKeyMonitor;)Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/physicalkey/IKeyEventListener;->notifyKeyEvent()V

    :cond_63
    :goto_63
    return-void
.end method
