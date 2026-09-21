.class Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 47
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 50
    const-string v0, "key_shutter_guide_layout_action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4b

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "shutter_guide_layout_hide"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "shutter_guide_layout_show"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_4b

    .line 53
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$fputmShutterGuideLayoutShow(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;Z)V

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;->onShutterGuideShow()V

    goto :goto_4b

    .line 59
    :cond_35
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$fputmShutterGuideLayoutShow(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;Z)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$IShutterStateCallback;->onShutterGuideHide()V

    .line 67
    :cond_4b
    :goto_4b
    const-string v0, "key_shutter_ui_state"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 68
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ShutterStateMonitor] KEY_SHUTTER_UI_STATE:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x5af7f281

    if-eq p1, v0, :cond_89

    const v0, 0x6e74ece4

    if-eq p1, v0, :cond_7a

    goto :goto_90

    :cond_7a
    const-string/jumbo p1, "value_shutter_ui_process"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$fputmShutterProcessing(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;Z)V

    return-void

    .line 69
    :cond_89
    const-string/jumbo p1, "value_shutter_ui_idle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 75
    :cond_90
    :goto_90
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;->-$$Nest$fputmShutterProcessing(Lcom/transsion/camera/feature/setting/flashfacade/monitor/ShutterUIStateMonitor;Z)V

    :cond_95
    return-void
.end method
