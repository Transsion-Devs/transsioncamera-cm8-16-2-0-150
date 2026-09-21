.class Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Lcom/transsion/camera/feature/setting/antivideo/AntiVideo-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 429
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_bc

    goto :goto_2d

    :sswitch_d
    const-string v0, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "key_anti_video_recover_default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v0, "key_on_anti_video_change_end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    packed-switch v2, :pswitch_data_ca

    goto/16 :goto_aa

    .line 452
    :pswitch_32
    const-string p1, "begin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fputmManualValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Ljava/lang/String;)V

    return-void

    .line 435
    :pswitch_41
    const-string p1, "null"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fgetmAntiVideoMonitor(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;->-$$Nest$msize(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;)I

    move-result p1

    if-nez p1, :cond_aa

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fgetmIsOnValueChanging(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Z

    move-result p1

    if-nez p1, :cond_aa

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fgetmIsValueInitiated(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 437
    sget-object p1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "david AntiVideo recover to default, mManualValue:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fgetmManualValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fgetmManualValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mDefaultValue:Ljava/lang/String;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->access$000(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$mstoreValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_97
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getSupport()Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fgetmManualValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$mcheckValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$mstoreValue(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Ljava/lang/String;)V

    :cond_aa
    :goto_aa
    return-void

    .line 445
    :cond_ab
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fgetmAntiVideoMonitor(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;)Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;->-$$Nest$maddAvoidKey(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$AntiVideoMonitor;Ljava/lang/String;)V

    return-void

    .line 449
    :pswitch_b5
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->-$$Nest$fputmIsOnValueChanging(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Z)V

    return-void

    nop

    :sswitch_data_bc
    .sparse-switch
        -0x6e6b2b33 -> :sswitch_23
        -0x4176e09b -> :sswitch_18
        0x60ee855f -> :sswitch_d
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_41
        :pswitch_32
    .end packed-switch
.end method
