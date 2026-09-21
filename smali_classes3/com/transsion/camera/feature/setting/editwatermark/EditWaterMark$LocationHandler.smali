.class Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Landroid/os/Looper;)V
    .registers 3

    .line 747
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    .line 748
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 753
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 754
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_b

    goto/16 :goto_87

    .line 756
    :cond_b
    sget-object p1, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "update getCityInfo start"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->getCityInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update mCityInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmCityInfo(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " new\u3000cityInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_87

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmCityInfo(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_87

    .line 760
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fputmCityInfo(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Ljava/lang/String;)V

    .line 761
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$700(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->access$600(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_city_watermark_info"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 762
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmPause(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Z

    move-result p1

    if-nez p1, :cond_87

    .line 764
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$LocationHandler;->this$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_87
    :goto_87
    return-void
.end method
