.class Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 41
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 44
    const-string v0, "key_record_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "key_quick_video_action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 45
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_7c

    goto :goto_49

    :sswitch_1e
    const-string p1, "key_quick_video_stop"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_49

    :cond_27
    const/4 v2, 0x3

    goto :goto_49

    :sswitch_29
    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_49

    :cond_32
    const/4 v2, 0x2

    goto :goto_49

    :sswitch_34
    const-string p1, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto :goto_49

    :cond_3d
    move v2, v0

    goto :goto_49

    :sswitch_3f
    const-string p1, "key_quick_video_start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_49

    :cond_48
    move v2, v1

    :goto_49
    packed-switch v2, :pswitch_data_8e

    goto :goto_7a

    .line 56
    :pswitch_4d
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->-$$Nest$fputmRecording(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;Z)V

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;->onRecordStop()V

    return-void

    .line 48
    :pswitch_64
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->-$$Nest$fputmRecording(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;Z)V

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->-$$Nest$fgetmCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;->onRecordStart()V

    :cond_7a
    :goto_7a
    return-void

    nop

    :sswitch_data_7c
    .sparse-switch
        -0x6cdcf594 -> :sswitch_3f
        0xddf -> :sswitch_34
        0x1ad6f -> :sswitch_29
        0x67d7d8b8 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_64
        :pswitch_64
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method
