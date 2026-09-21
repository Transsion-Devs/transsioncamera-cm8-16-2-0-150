.class Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    .line 80
    sget-object v0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_pro_watermark_type"

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_122

    goto :goto_61

    :sswitch_2d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_61

    :cond_34
    const/4 v3, 0x4

    goto :goto_61

    :sswitch_36
    const-string v0, "key_gold_watermark_normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_61

    :cond_3f
    const/4 v3, 0x3

    goto :goto_61

    :sswitch_41
    const-string v0, "key_pro_watermark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_61

    :cond_4a
    const/4 v3, 0x2

    goto :goto_61

    :sswitch_4c
    const-string v0, "key_gold_watermark_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_61

    :cond_55
    const/4 v3, 0x1

    goto :goto_61

    :sswitch_57
    const-string v0, "key_gold_watermark_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_61

    :cond_60
    move v3, v2

    .line 107
    :goto_61
    const-string v0, "0"

    const-string v4, "on"

    const-string v5, "off"

    packed-switch v3, :pswitch_data_138

    return-void

    .line 99
    :pswitch_6b
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fputmGoldWatermarkBgValue(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->access$100(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fgetmGoldWatermarkBgValue(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, p2, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->access$200(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object p1

    const-string p2, "key_gold_watermark"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a7

    goto :goto_ad

    :cond_a7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fgetmGoldWatermarkBgValue(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;

    move-result-object v5

    :goto_ad
    invoke-virtual {p1, v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGoldWatermarkBgValue(Ljava/lang/String;)V

    return-void

    .line 83
    :pswitch_b1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Z

    move-result p1

    if-eqz p1, :cond_ce

    move-object p1, p2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 84
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 85
    :cond_c8
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getSelectWatermark()Ljava/lang/String;

    move-result-object p2

    .line 87
    :cond_ce
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    .line 88
    const-string v1, "2"

    check-cast p2, Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e7

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fgetmGoldWatermarkType(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto :goto_e8

    :cond_e7
    move-object v4, v5

    .line 87
    :goto_e8
    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 93
    :pswitch_ec
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->access$000(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$mupdateGoldWaterMarkType(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    .line 96
    const-string p2, "1"

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->getSelectWatermark()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_11c

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark$1;->this$0:Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->-$$Nest$fgetmGoldWatermarkType(Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;)Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11d

    :cond_11c
    move-object v4, v5

    .line 95
    :cond_11d
    invoke-virtual {p1, v4}, Lcom/transsion/camera/feature/setting/goldwatermark/GoldWaterMark;->onValueChanged(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_122
    .sparse-switch
        -0x7f1b0671 -> :sswitch_57
        -0x60195659 -> :sswitch_4c
        -0x1050408e -> :sswitch_41
        0x36fcc541 -> :sswitch_36
        0x3b495fe7 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_ec
        :pswitch_ec
        :pswitch_b1
        :pswitch_ec
        :pswitch_6b
    .end packed-switch
.end method
