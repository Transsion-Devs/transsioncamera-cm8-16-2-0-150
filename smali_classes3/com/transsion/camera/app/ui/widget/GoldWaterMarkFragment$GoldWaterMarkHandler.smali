.class public Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoldWaterMarkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Landroid/os/Looper;)V
    .registers 3

    .line 498
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    .line 499
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 504
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_69

    if-eq p1, v1, :cond_9

    goto :goto_71

    .line 520
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmToastInfo(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->water_mark_gps_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmToastInfo(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 522
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fputmLocationButtonCheck(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;Z)V

    .line 523
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmLocationPreference(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Landroid/preference/SwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 524
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_gold_watermark_location"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 525
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    if-eqz p1, :cond_71

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 506
    :cond_69
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmLocationButtonCheck(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Z

    move-result p1

    if-nez p1, :cond_72

    :cond_71
    :goto_71
    return-void

    .line 509
    :cond_72
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$fgetmHandler(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    :try_start_7b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment$GoldWaterMarkHandler;->this$0:Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$mupdateLocationPreviewText(Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_80} :catch_81

    return-void

    :catch_81
    move-exception p0

    .line 513
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/GoldWaterMarkFragment;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
