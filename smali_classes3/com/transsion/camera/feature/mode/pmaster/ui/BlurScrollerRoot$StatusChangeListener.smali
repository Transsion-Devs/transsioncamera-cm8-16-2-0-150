.class Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;
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
.field currentValue:Ljava/lang/String;

.field restore_settings_begin:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V
    .registers 2

    .line 857
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 858
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->restore_settings_begin:Z

    const/4 p1, 0x0

    .line 859
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->currentValue:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 857
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 862
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->restore_settings_begin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetCameraFacingScope(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "key_mu_face_beauty"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_36c

    goto/16 :goto_aa

    :sswitch_55
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_aa

    :cond_5c
    const/4 v5, 0x7

    goto :goto_aa

    :sswitch_5e
    const-string v1, "key_restore_settings_notify_ui"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    goto :goto_aa

    :cond_67
    const/4 v5, 0x6

    goto :goto_aa

    :sswitch_69
    const-string v1, "key_makeup_feature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    goto :goto_aa

    :cond_72
    const/4 v5, 0x5

    goto :goto_aa

    :sswitch_74
    const-string v1, "key_portrait_flare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    goto :goto_aa

    :cond_7d
    const/4 v5, 0x4

    goto :goto_aa

    :sswitch_7f
    const-string v1, "key_mu_slimbody"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    goto :goto_aa

    :cond_88
    const/4 v5, 0x3

    goto :goto_aa

    :sswitch_8a
    const-string v1, "key_camera_zoom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    goto :goto_aa

    :cond_93
    const/4 v5, 0x2

    goto :goto_aa

    :sswitch_95
    const-string v1, "key_flash"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    goto :goto_aa

    :cond_9e
    move v5, v4

    goto :goto_aa

    :sswitch_a0
    const-string v1, "key_flash_facade"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    goto :goto_aa

    :cond_a9
    move v5, v3

    :goto_aa
    const-string v1, "off"

    const-string v6, "closed_reason_default_value"

    packed-switch v5, :pswitch_data_38e

    goto/16 :goto_2f6

    .line 957
    :pswitch_b3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fputmFaceBeautyValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V

    .line 958
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$misAllConflictFeatureClosed(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p2

    if-eqz p2, :cond_2f6

    .line 959
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    const-string v1, "key_mu_face_beauty_closed_reason"

    invoke-virtual {p2, v1, v6, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 961
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mrestoreBlurForConflictOff(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 866
    :pswitch_d2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmCustomizedFocalLengthSupport(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p1

    if-eqz p1, :cond_e0

    .line 867
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfputsChangeZoomCount(I)V

    .line 868
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfputsBlurHasChanged(Z)V

    .line 870
    :cond_e0
    const-string p1, "begin"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 871
    iput-boolean v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->restore_settings_begin:Z

    return-void

    .line 873
    :cond_eb
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->restore_settings_begin:Z

    return-void

    .line 949
    :pswitch_ee
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fputmMakeupValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V

    .line 950
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$misAllConflictFeatureClosed(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p2

    if-eqz p2, :cond_2f6

    .line 951
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    .line 952
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetCameraFacingScope(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object v0

    .line 951
    const-string v1, "key_mu_makeup_closed_reason"

    invoke-virtual {p2, v1, v6, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 953
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mrestoreBlurForConflictOff(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 898
    :pswitch_113
    const-string v0, "on"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "key_flare_closed_feature"

    if-eqz p2, :cond_16f

    .line 899
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmIsBlurOn(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p2

    if-nez p2, :cond_127

    goto/16 :goto_2f6

    .line 902
    :cond_127
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 903
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$misMainThread(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p2

    if-eqz p2, :cond_163

    .line 904
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->closeBlurByConflict(Ljava/lang/String;)V

    .line 905
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmHideBottomPanelListener(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    move-result-object p1

    if-eqz p1, :cond_2f6

    .line 906
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmHideBottomPanelListener(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;->hideBottomPanelByConflict()V

    return-void

    .line 909
    :cond_163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 912
    :cond_16f
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmIsBlurOn(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p2

    if-eqz p2, :cond_179

    goto/16 :goto_2f6

    .line 915
    :cond_179
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_flare_closed_reason"

    invoke-virtual {p2, v2, v6, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 916
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetClosedReason(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object v1

    .line 917
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    const-string v2, "closed_reason_user"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2f6

    .line 919
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f6

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    .line 920
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f6

    .line 921
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->onBlurButtonSwitch(Z)V

    return-void

    .line 926
    :pswitch_1ce
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v3, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fputmSlimBodyValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V

    .line 927
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmFaceBeautyValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_20f

    .line 928
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result p2

    .line 929
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p2

    .line 931
    const-string v3, "aiv2"

    if-eqz p2, :cond_1f7

    :goto_1f5
    move-object v1, v3

    goto :goto_202

    .line 934
    :cond_1f7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mPlatformConfigType:I

    const/16 v4, 0x1e

    if-ne p2, v4, :cond_202

    goto :goto_1f5

    .line 940
    :cond_202
    :goto_202
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fputmFaceBeautyValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V

    .line 942
    :cond_20f
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$misAllConflictFeatureClosed(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p2

    if-eqz p2, :cond_2f6

    .line 943
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmDataStore(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    .line 944
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetCameraFacingScope(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object v0

    .line 943
    const-string v1, "key_mu_slimbody_closed_reason"

    invoke-virtual {p2, v1, v6, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 945
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mrestoreBlurForConflictOff(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 965
    :pswitch_22f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmIsModeSwitching(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p1

    if-eqz p1, :cond_239

    goto/16 :goto_2f6

    .line 968
    :cond_239
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$misCameraFacingBack(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f6

    .line 970
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetFocalLength(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;I)I

    move-result p2

    invoke-static {p1, p2, v4}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mqueryDefaultValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;IZ)Ljava/lang/String;

    move-result-object p1

    .line 971
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fputmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V

    .line 972
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultBlurValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentBlurValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBlurHasChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetsBlurHasChanged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 973
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "f0.0"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2bc

    .line 974
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetsBlurHasChanged()Z

    move-result p2

    if-nez p2, :cond_2b4

    .line 975
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fputmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V

    goto :goto_2bc

    .line 977
    :cond_2b4
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetsChangeZoomCount()I

    move-result p2

    add-int/2addr p2, v4

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfputsChangeZoomCount(I)V

    .line 980
    :cond_2bc
    :goto_2bc
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p2, :cond_2d8

    .line 981
    new-instance p2, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    invoke-direct {p2, p1, v3, v4, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 983
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetDurationDataList(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    .line 985
    :cond_2d8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 986
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    :cond_2f6
    :goto_2f6
    return-void

    .line 878
    :pswitch_2f7
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->restore_settings_begin:Z

    const/16 v2, 0x65

    if-nez v0, :cond_341

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->currentValue:Ljava/lang/String;

    if-eqz v0, :cond_307

    .line 879
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_341

    .line 880
    :cond_307
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_341

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmSingleBlurForBackCamera(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result v0

    if-eqz v0, :cond_31d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmMumonomerSupportFlash(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result v0

    if-nez v0, :cond_341

    .line 881
    :cond_31d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$misMainThread(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result v0

    if-eqz v0, :cond_32b

    .line 882
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->closeBlurByConflict(Ljava/lang/String;)V

    goto :goto_369

    .line 884
    :cond_32b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 885
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_369

    .line 888
    :cond_341
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_360

    .line 889
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "The message that update view has not been consumed,it can be removed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 890
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_369

    .line 892
    :cond_360
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "The message that update view has been consumed."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 895
    :goto_369
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$StatusChangeListener;->currentValue:Ljava/lang/String;

    return-void

    :sswitch_data_36c
    .sparse-switch
        -0x6bb0b257 -> :sswitch_a0
        -0x62d091f0 -> :sswitch_95
        -0x43305133 -> :sswitch_8a
        0x709a336 -> :sswitch_7f
        0x452e140a -> :sswitch_74
        0x489ebfa0 -> :sswitch_69
        0x60ee855f -> :sswitch_5e
        0x7e425a67 -> :sswitch_55
    .end sparse-switch

    :pswitch_data_38e
    .packed-switch 0x0
        :pswitch_2f7
        :pswitch_2f7
        :pswitch_22f
        :pswitch_1ce
        :pswitch_113
        :pswitch_ee
        :pswitch_d2
        :pswitch_b3
    .end packed-switch
.end method
