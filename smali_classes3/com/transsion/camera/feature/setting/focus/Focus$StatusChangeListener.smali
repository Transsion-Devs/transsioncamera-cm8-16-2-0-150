.class Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/focus/Focus;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/focus/Focus;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V
    .registers 2

    .line 639
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/focus/Focus;Lcom/transsion/camera/feature/setting/focus/Focus-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/focus/Focus;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 639
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "exposure_hide"

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_2a0

    goto/16 :goto_91

    :sswitch_11
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_91

    :cond_1b
    const/16 v4, 0xa

    goto/16 :goto_91

    :sswitch_1f
    const-string v0, "screen_form_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_91

    :cond_29
    const/16 v4, 0x9

    goto/16 :goto_91

    :sswitch_2d
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_91

    :cond_35
    const/16 v4, 0x8

    goto/16 :goto_91

    :sswitch_39
    const-string v0, "key_exposure_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_91

    :cond_42
    const/4 v4, 0x7

    goto :goto_91

    :sswitch_44
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_91

    :cond_4d
    const/4 v4, 0x6

    goto :goto_91

    :sswitch_4f
    const-string v0, "key_setting_focus_distance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_91

    :cond_58
    const/4 v4, 0x5

    goto :goto_91

    :sswitch_5a
    const-string v0, "key_manual_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_91

    :cond_63
    const/4 v4, 0x4

    goto :goto_91

    :sswitch_65
    const-string v0, "key_exposure_scroll_start_and_hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_91

    :cond_6e
    const/4 v4, 0x3

    goto :goto_91

    :sswitch_70
    const-string/jumbo v0, "wide_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_91

    :cond_7a
    const/4 v4, 0x2

    goto :goto_91

    :sswitch_7c
    const-string v0, "capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_91

    :cond_85
    move v4, v2

    goto :goto_91

    :sswitch_87
    const-string v0, "key_record_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto :goto_91

    :cond_90
    move v4, v1

    :goto_91
    packed-switch v4, :pswitch_data_2ce

    goto/16 :goto_294

    .line 703
    :pswitch_96
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmSuperAntVideoValue(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V

    return-void

    .line 696
    :pswitch_9c
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_294

    .line 697
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p1

    if-eqz p1, :cond_294

    .line 698
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->resetAutoFocusTriggered()V

    return-void

    .line 645
    :pswitch_b4
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 646
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatusChangeListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmIsEvChanging(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmIsEvChanging(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-eq v0, p1, :cond_151

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$000(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    if-eqz p1, :cond_151

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmIsShowUI(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-eqz p1, :cond_151

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmLastFocusState(Lcom/transsion/camera/feature/setting/focus/Focus;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_151

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/feature/setting/focus/Focus;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.video.TimeLapseVideoModeEntry"

    .line 648
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11c

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/feature/setting/focus/Focus;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    .line 649
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_151

    .line 650
    :cond_11c
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatusChanged KEY_EXPOSURE_VIEW mLastFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmLastFocusState(Lcom/transsion/camera/feature/setting/focus/Focus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->access$100(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmLastFocusState(Lcom/transsion/camera/feature/setting/focus/Focus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    :cond_151
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmIsEvChanging(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    return-void

    .line 687
    :pswitch_15b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener, key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 688
    const-string p1, "form_change_start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_294

    .line 689
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p1

    if-eqz p1, :cond_294

    .line 690
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmFocusListener(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;->resetAutoFocusTriggered()V

    return-void

    .line 680
    :pswitch_197
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManualFocus onStatusChanged, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isInitValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmIsInitValue(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needResetTouchType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmNeedResetTouchType(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$mprocessManualFocus(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V

    return-void

    .line 668
    :pswitch_1d3
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStatusChanged] value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needResetFocusState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmNeedResetFocusState(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needResetTouchType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmNeedResetTouchType(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 670
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmNeedResetFocusState(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-eqz p1, :cond_294

    .line 671
    const-string p1, "scroll_start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_223

    .line 672
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/feature/setting/focus/Focus$MainHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 673
    :cond_223
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_294

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$misTimeLapseAndRecording(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-nez p1, :cond_294

    .line 674
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmNeedResetTouchType(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$msendFocusMessage(Lcom/transsion/camera/feature/setting/focus/Focus;IJ)V

    return-void

    .line 706
    :pswitch_23d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmWideCameraValue(Lcom/transsion/camera/feature/setting/focus/Focus;Ljava/lang/String;)V

    return-void

    .line 656
    :pswitch_243
    const-string p1, "capture_start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_251

    .line 657
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    return-void

    .line 658
    :cond_251
    const-string p1, "capture_end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_294

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmIsCapturing(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    .line 660
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmNeedResetTouchFocus(Lcom/transsion/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-eqz p1, :cond_294

    .line 661
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fputmNeedResetTouchFocus(Lcom/transsion/camera/feature/setting/focus/Focus;Z)V

    .line 662
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmTag(Lcom/transsion/camera/feature/setting/focus/Focus;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "capturing  end  doResetTouchFocus, needResetTouchType:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmNeedResetTouchType(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 663
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$fgetmNeedResetTouchType(Lcom/transsion/camera/feature/setting/focus/Focus;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/focus/Focus;->-$$Nest$mdoResetTouchFocus(Lcom/transsion/camera/feature/setting/focus/Focus;I)V

    :cond_294
    :goto_294
    return-void

    .line 709
    :pswitch_295
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/focus/Focus$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/focus/Focus;

    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/focus/Focus;->mIsRecording:Z

    return-void

    :sswitch_data_2a0
    .sparse-switch
        -0x7dbe4efd -> :sswitch_87
        -0x76a61da8 -> :sswitch_7c
        -0x6115b1ef -> :sswitch_70
        -0x5577d1bf -> :sswitch_65
        -0x3e826f01 -> :sswitch_5a
        -0x3b1728d5 -> :sswitch_4f
        -0x341f2c25 -> :sswitch_44
        0x1965e0fd -> :sswitch_39
        0x19d0257a -> :sswitch_2d
        0x50b5eb09 -> :sswitch_1f
        0x7ddb1282 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2ce
    .packed-switch 0x0
        :pswitch_295
        :pswitch_243
        :pswitch_23d
        :pswitch_1d3
        :pswitch_197
        :pswitch_197
        :pswitch_15b
        :pswitch_b4
        :pswitch_9c
        :pswitch_15b
        :pswitch_96
    .end packed-switch
.end method
