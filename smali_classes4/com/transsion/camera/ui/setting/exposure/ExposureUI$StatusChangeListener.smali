.class Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .registers 2

    .line 933
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/ExposureUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 933
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 937
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 938
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_304

    goto/16 :goto_be

    :sswitch_2f
    const-string v0, "key_human_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto/16 :goto_be

    :cond_39
    const/16 v3, 0xb

    goto/16 :goto_be

    :sswitch_3d
    const-string v0, "key_face_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto/16 :goto_be

    :cond_47
    const/16 v3, 0xa

    goto/16 :goto_be

    :sswitch_4b
    const-string v0, "key_long_exposure_scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto/16 :goto_be

    :cond_55
    const/16 v3, 0x9

    goto/16 :goto_be

    :sswitch_59
    const-string v0, "key_animal_eye_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto/16 :goto_be

    :cond_63
    const/16 v3, 0x8

    goto/16 :goto_be

    :sswitch_67
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_70

    goto :goto_be

    :cond_70
    const/4 v3, 0x7

    goto :goto_be

    :sswitch_72
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7b

    goto :goto_be

    :cond_7b
    const/4 v3, 0x6

    goto :goto_be

    :sswitch_7d
    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    goto :goto_be

    :cond_86
    const/4 v3, 0x5

    goto :goto_be

    :sswitch_88
    const-string v0, "key_eye_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    goto :goto_be

    :cond_91
    const/4 v3, 0x4

    goto :goto_be

    :sswitch_93
    const-string v0, "key_restrict_area"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9c

    goto :goto_be

    :cond_9c
    const/4 v3, 0x3

    goto :goto_be

    :sswitch_9e
    const-string v0, "focus_ui_active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    goto :goto_be

    :cond_a7
    const/4 v3, 0x2

    goto :goto_be

    :sswitch_a9
    const-string v0, "key_video_frame"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b2

    goto :goto_be

    :cond_b2
    move v3, v2

    goto :goto_be

    :sswitch_b4
    const-string v0, "key_ae_af_lock_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bd

    goto :goto_be

    :cond_bd
    move v3, v1

    :goto_be
    const-string p1, "on"

    const-string v0, "off"

    const/16 v4, 0x65

    const/16 v5, 0x64

    const/16 v6, 0x66

    packed-switch v3, :pswitch_data_336

    goto/16 :goto_302

    .line 1014
    :pswitch_cd
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    .line 1015
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mhideExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    .line 1016
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$smpicTraceMode(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mupdateRationalList(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V

    return-void

    .line 1021
    :pswitch_e2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    sget-object p2, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->UNLOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmLockState(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)V

    .line 1022
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mhideExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    .line 1023
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    if-eqz p1, :cond_302

    .line 1024
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    sget-object p1, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 940
    :pswitch_106
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$maeAfLocked(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result p1

    if-nez p1, :cond_302

    .line 941
    const-string p1, "ACTIVE_FOCUSED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_154

    const-string p1, "ACTIVE_UNFOCUSED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11f

    goto :goto_154

    .line 944
    :cond_11f
    const-string p1, "ACTIVE_HIDE_FOCUSE_VIEW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_302

    .line 945
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    if-eqz p1, :cond_302

    .line 946
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 947
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 948
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 949
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 942
    :cond_154
    :goto_154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmHideExposureDelayTime(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)J

    move-result-wide v0

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 943
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    const-wide/16 p1, 0x7d0

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mstartDarkenAnimate(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;J)V

    return-void

    .line 1032
    :pswitch_16b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object p2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge p1, p2, :cond_302

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;

    move-result-object p1

    if-eqz p1, :cond_302

    sget-object p1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;

    move-result-object p2

    .line 1034
    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->supportedLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p2

    if-ne p1, p2, :cond_302

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;

    move-result-object p1

    .line 1035
    invoke-interface {p1}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    if-eqz p1, :cond_302

    .line 1036
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->currentLockState()Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Lcom/transsion/camera/app/common/mode/IAeAfLock;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    .line 1037
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mhideExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V

    .line 1038
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    .line 1039
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "return because support only AE lock for zoom ratio change."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 969
    :pswitch_1c0
    const-string p1, "show_face_view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e0

    const-string p1, "show_eye_view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e0

    const-string p1, "show_human_view"

    .line 970
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e0

    const-string p1, "show_animal_eye_view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_302

    .line 971
    :cond_1e0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    if-eqz p1, :cond_20c

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$maeAfLocked(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Z

    move-result p1

    if-nez p1, :cond_20c

    .line 972
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 973
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 974
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 976
    :cond_20c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    if-eqz p1, :cond_302

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmLockState(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    if-eqz p1, :cond_302

    .line 977
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 979
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 980
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmHasDarken(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V

    .line 981
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mshowLockExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V

    .line 982
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmLockState(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mgetLockHintMsg(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/app/common/mode/IAeAfLock$State;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mshowLockedHint(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Ljava/lang/String;)V

    return-void

    .line 999
    :pswitch_24f
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25f

    .line 1000
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mconvertStringToRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)V

    goto :goto_268

    .line 1002
    :cond_25f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmOriginPreviewRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)V

    .line 1004
    :goto_268
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmStoreAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)V

    .line 1005
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->hideLockedHint()V

    .line 1006
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    .line 1007
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    if-eqz p1, :cond_302

    .line 1008
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1009
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 1029
    :pswitch_29a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2a3

    move v1, v2

    :cond_2a3
    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmDisableUI(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V

    return-void

    .line 989
    :pswitch_2a7
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2bf

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmOriginPreviewRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Landroid/graphics/Rect;)V

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    .line 993
    :cond_2bf
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_302

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmStoreAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_302

    .line 994
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmStoreAERestrictRect(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    return-void

    .line 956
    :pswitch_2d7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_302

    .line 957
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 959
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)Lcom/transsion/camera/ui/setting/exposure/ExposureUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 960
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$fputmHasDarken(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V

    .line 961
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->-$$Nest$mshowLockExposureView(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Z)V

    :cond_302
    :goto_302
    return-void

    nop

    :sswitch_data_304
    .sparse-switch
        -0x7b17f224 -> :sswitch_b4
        -0x6c110137 -> :sswitch_a9
        -0x4d4e3f96 -> :sswitch_9e
        -0x4ac57db0 -> :sswitch_93
        -0x45d154db -> :sswitch_88
        -0x43305133 -> :sswitch_7d
        -0x42841f76 -> :sswitch_72
        -0x341f2c25 -> :sswitch_67
        -0x217cd3f8 -> :sswitch_59
        -0x1e1e8269 -> :sswitch_4b
        -0x184ac447 -> :sswitch_3d
        0x411ae6a9 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_336
    .packed-switch 0x0
        :pswitch_2d7
        :pswitch_2a7
        :pswitch_29a
        :pswitch_24f
        :pswitch_1c0
        :pswitch_16b
        :pswitch_106
        :pswitch_e2
        :pswitch_1c0
        :pswitch_cd
        :pswitch_1c0
        :pswitch_1c0
    .end packed-switch
.end method
