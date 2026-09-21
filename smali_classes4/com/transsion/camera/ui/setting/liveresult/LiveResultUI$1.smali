.class Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 176
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 179
    invoke-static {}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 181
    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$fgetmHandler(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 184
    :cond_38
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->-$$Nest$fgetmHandler(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_43
    return-void
.end method
