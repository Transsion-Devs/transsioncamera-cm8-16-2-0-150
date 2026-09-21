.class Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditWaterMarkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Landroid/os/Looper;)V
    .registers 3

    .line 684
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    .line 685
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .registers 10

    .line 698
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_7

    return-void

    .line 700
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmModeType(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    if-ne v0, v2, :cond_1b

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 704
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v0

    const-string v1, "off"

    if-nez v0, :cond_2c

    .line 705
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    goto/16 :goto_f4

    .line 707
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$misEditWaterMarkClose(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 711
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$000(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_edit_watermark_state"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "VALUE_edit_watermark_state_writing"

    .line 712
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_54

    goto :goto_6d

    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result p1

    if-lez p1, :cond_63

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result p1

    goto :goto_6d

    :cond_63
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mgetPictureSize(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    .line 714
    :goto_6d
    sget-object v0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPictureHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPictureHeight(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getHeight() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mgetPictureSize(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetSize height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_f4

    .line 718
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v2, p1, 0x69

    .line 719
    div-int/lit16 v2, v2, 0xd80

    .line 720
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v3}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$200(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v5}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$100(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_city_watermark_info"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmCityInfo(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v3, p1, v0, v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$mwriteWaterMarkGuard(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;III)V

    .line 722
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    const-string/jumbo v0, "value_edit_watermark_on"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->onValueChanged(Ljava/lang/String;)V

    .line 723
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$300(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v0, "VALUE_edit_watermark_state_done"

    .line 724
    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->sendMessageIfNeed()V

    .line 728
    :cond_f4
    :goto_f4
    sget-object p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "MSG_EDIT_WATERMARK_HANDLE"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private sendMessageIfNeed()V
    .registers 5

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$500(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$400(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_time_watermark"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPause(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getTimeInSecond()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p0

    rsub-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 691
    sget-object v2, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processMessage] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " START"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 692
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$EditWaterMarkHandler;->processMessage(Landroid/os/Message;)V

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 694
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " END process time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
