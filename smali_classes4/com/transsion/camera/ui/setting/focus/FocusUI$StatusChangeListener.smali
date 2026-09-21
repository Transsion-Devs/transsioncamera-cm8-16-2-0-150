.class Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focus/FocusUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;


# direct methods
.method public static synthetic $r8$lambda$ONVLza-lDMQUoke8TW-ibYyCQjg(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V
    .registers 2

    .line 1079
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;Lcom/transsion/camera/ui/setting/focus/FocusUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1079
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1082
    invoke-static {}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusChangeListener : key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_236

    goto/16 :goto_b0

    :sswitch_2f
    const-string v0, "key_human_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto/16 :goto_b0

    :cond_39
    const/16 v3, 0xa

    goto/16 :goto_b0

    :sswitch_3d
    const-string v0, "key_adjust_ui_show_and_hide_ae_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto/16 :goto_b0

    :cond_47
    const/16 v3, 0x9

    goto/16 :goto_b0

    :sswitch_4b
    const-string v0, "key_face_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    goto/16 :goto_b0

    :cond_55
    const/16 v3, 0x8

    goto/16 :goto_b0

    :sswitch_59
    const-string v0, "key_long_exposure_scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_b0

    :cond_62
    const/4 v3, 0x7

    goto :goto_b0

    :sswitch_64
    const-string v0, "key_animal_eye_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_b0

    :cond_6d
    const/4 v3, 0x6

    goto :goto_b0

    :sswitch_6f
    const-string v0, "key_dual_cam_split_style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    goto :goto_b0

    :cond_78
    const/4 v3, 0x5

    goto :goto_b0

    :sswitch_7a
    const-string v0, "key_fold_switch_preview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_83

    goto :goto_b0

    :cond_83
    const/4 v3, 0x4

    goto :goto_b0

    :sswitch_85
    const-string v0, "key_eye_view_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    goto :goto_b0

    :cond_8e
    const/4 v3, 0x3

    goto :goto_b0

    :sswitch_90
    const-string v0, "key_restrict_area"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    goto :goto_b0

    :cond_99
    const/4 v3, 0x2

    goto :goto_b0

    :sswitch_9b
    const-string v0, "key_video_frame"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    goto :goto_b0

    :cond_a4
    move v3, v2

    goto :goto_b0

    :sswitch_a6
    const-string v0, "key_long_exposure_capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_af

    goto :goto_b0

    :cond_af
    move v3, v1

    :goto_b0
    const-string p1, "on"

    const-string v0, "off"

    packed-switch v3, :pswitch_data_264

    goto/16 :goto_228

    .line 1118
    :pswitch_b9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmCancelLock(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    .line 1119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmLongPressing(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    .line 1121
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1122
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideLaserFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$munLockAeAf(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void

    .line 1085
    :pswitch_d3
    const-string p1, "show_face_view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 1086
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1087
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideLaserFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1088
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmIsFaceViewShowing(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    return-void

    .line 1089
    :cond_eb
    const-string p1, "hide_face_view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_228

    .line 1090
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmIsFaceViewShowing(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    return-void

    .line 1159
    :pswitch_f9
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v2

    .line 1160
    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 1159
    const-string v3, "key_enter_long_exposure_mode"

    invoke-virtual {v1, v3, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_228

    const-string p1, "star"

    .line 1162
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12d

    const-string p1, "stellartrack"

    .line 1163
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_228

    :cond_12d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/app/ui/widget/DrawBackgroundView;

    move-result-object p1

    .line 1164
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_228

    .line 1165
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    return-void

    .line 1111
    :pswitch_13f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmSplitScreen(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    .line 1112
    const-string p1, "up_down"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_228

    .line 1113
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmSplitScreen(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    return-void

    .line 1152
    :pswitch_152
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1153
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideLaserFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmIsPassiveFocusViewNeedShow(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    .line 1155
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$munLockAeAf(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1156
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 1097
    :pswitch_171
    const-string p1, "show_eye_view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a8

    const-string p1, "show_human_view"

    .line 1098
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a8

    const-string p1, "show_animal_eye_view"

    .line 1099
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18a

    goto :goto_1a8

    .line 1103
    :cond_18a
    const-string p1, "hide_eye_view"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a2

    const-string p1, "hide_human_view"

    .line 1104
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a2

    const-string p1, "hide_animal_eye_view"

    .line 1105
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_228

    .line 1106
    :cond_1a2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmIsSmartFocusShowing(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    return-void

    .line 1100
    :cond_1a8
    :goto_1a8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1101
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mhideLaserFocusView(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1102
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmIsSmartFocusShowing(Lcom/transsion/camera/ui/setting/focus/FocusUI;Z)V

    return-void

    .line 1137
    :pswitch_1b8
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c8

    .line 1138
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$mconvertStringToRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)V

    goto :goto_1d1

    .line 1140
    :cond_1c8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmOriginPreviewRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)V

    .line 1142
    :goto_1d1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmStoreAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)V

    .line 1143
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$munLockAeAf(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    .line 1144
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    .line 1145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Lcom/transsion/camera/ui/setting/focus/FocusUI$UIHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    new-instance p2, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/focus/FocusUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1128
    :pswitch_1f9
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 1129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmOriginPreviewRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fputmAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;Landroid/graphics/Rect;)V

    .line 1130
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    .line 1132
    :cond_211
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_228

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmStoreAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_228

    .line 1133
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->-$$Nest$fgetmStoreAFRestrictRect(Lcom/transsion/camera/ui/setting/focus/FocusUI;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->updateRestrictRect(Landroid/graphics/Rect;)V

    :cond_228
    :goto_228
    return-void

    .line 1148
    :pswitch_229
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/FocusUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/focus/FocusUI;

    const-string p1, "idle"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/focus/FocusUI;->setEnable(Z)V

    return-void

    nop

    :sswitch_data_236
    .sparse-switch
        -0x7a8bf39d -> :sswitch_a6
        -0x6c110137 -> :sswitch_9b
        -0x4ac57db0 -> :sswitch_90
        -0x45d154db -> :sswitch_85
        -0x341f2c25 -> :sswitch_7a
        -0x27fb6c07 -> :sswitch_6f
        -0x217cd3f8 -> :sswitch_64
        -0x1e1e8269 -> :sswitch_59
        -0x184ac447 -> :sswitch_4b
        0x1afcda38 -> :sswitch_3d
        0x411ae6a9 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_229
        :pswitch_1f9
        :pswitch_1b8
        :pswitch_171
        :pswitch_152
        :pswitch_13f
        :pswitch_171
        :pswitch_f9
        :pswitch_d3
        :pswitch_b9
        :pswitch_171
    .end packed-switch
.end method
