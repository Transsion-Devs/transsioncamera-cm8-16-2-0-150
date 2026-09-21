.class Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)V
    .registers 2

    .line 937
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 937
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 940
    const-string v0, "key_floating_shutter"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 941
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fputmShowByAnimation(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;Z)V

    .line 942
    const-string p1, "off"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 943
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v1, "key_floating_shutter_ui_state"

    const-string v2, "floating_shutter_ui_hide"

    invoke-virtual {p1, v1, v2, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 944
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmFloatingShutterUI(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    move-result-object p2

    if-nez p2, :cond_40

    .line 945
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onStatusChanged, mFloatingShutterUI is null, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 948
    :cond_40
    const-string p2, "floating_shutter_ui_show_by_auto"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 949
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v3, "key_floating_shutter_ui_user_interaction"

    const-string v4, "0"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, p2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 950
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, v2, p2, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 951
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    return-void

    .line 954
    :cond_79
    const-string p2, "action_sleep_activity_start"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 955
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmFloatingShutterUI(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 956
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;->this$0:Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->-$$Nest$fgetmFloatingShutterUI(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->exitEditMode()Z

    :cond_92
    return-void
.end method
