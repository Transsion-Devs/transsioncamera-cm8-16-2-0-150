.class Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;


# direct methods
.method public static synthetic $r8$lambda$2w2p3mjy52ghqo8kAUadxQcDuSk(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->lambda$onStatusChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$lCEFCSiuJDOo6K7xmZtAPtkksI8(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->lambda$onStatusChanged$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uC61KTJWeiTQRSNf4z955YJf1vE(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->lambda$onStatusChanged$1()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 2

    .line 1114
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0(Ljava/lang/Object;)V
    .registers 2

    .line 1139
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mloadActionSound(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$1()V
    .registers 1

    .line 1142
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mreleaseActionSound(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$2()V
    .registers 2

    .line 1148
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmShutterSoundAssetFileName(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mloadActionSound(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    .line 1117
    const-string v0, "key_update_low_light_state_to_qc"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1118
    sget-object v1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusChanged, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mSuperNightValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmSuperNightValue(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1120
    :cond_34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "key_portrait_flare"

    const/4 v3, 0x2

    const-string v4, "key_live_photo"

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v1, :sswitch_data_254

    :goto_46
    move v0, v5

    goto/16 :goto_b4

    :sswitch_49
    const-string v0, "key_shutter_sound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_46

    :cond_52
    const/16 v0, 0x9

    goto/16 :goto_b4

    :sswitch_56
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_46

    :cond_5d
    const/16 v0, 0x8

    goto/16 :goto_b4

    :sswitch_61
    const-string v0, "key_portrait_flare_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_46

    :cond_6a
    const/4 v0, 0x7

    goto :goto_b4

    :sswitch_6c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_46

    :cond_73
    const/4 v0, 0x6

    goto :goto_b4

    :sswitch_75
    const-string v0, "key_self_timer_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto :goto_46

    :cond_7e
    const/4 v0, 0x5

    goto :goto_b4

    :sswitch_80
    const-string v0, "key_self_timer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto :goto_46

    :cond_89
    const/4 v0, 0x4

    goto :goto_b4

    :sswitch_8b
    const-string v0, "key_shutter_sound_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_46

    :cond_94
    const/4 v0, 0x3

    goto :goto_b4

    :sswitch_96
    const-string v0, "key_live_photo_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_46

    :cond_9f
    move v0, v3

    goto :goto_b4

    :sswitch_a1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto :goto_46

    :cond_a8
    move v0, v6

    goto :goto_b4

    :sswitch_aa
    const-string v0, "key_super_night_lite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_46

    :cond_b3
    move v0, v7

    :goto_b4
    const-string v1, "on"

    packed-switch v0, :pswitch_data_27e

    goto/16 :goto_253

    .line 1131
    :pswitch_bb
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmSoundEnable(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    .line 1219
    :pswitch_c5
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmFlareChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    .line 1151
    :pswitch_cb
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmIsLowLight(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    :pswitch_d7
    if-nez p2, :cond_db

    goto/16 :goto_253

    .line 1157
    :cond_db
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_296

    :goto_e4
    move v3, v5

    goto :goto_104

    :sswitch_e6
    const-string p1, "status_self_timer_begin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_104

    goto :goto_e4

    :sswitch_ef
    const-string p1, "status_self_timer_cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f8

    goto :goto_e4

    :cond_f8
    move v3, v6

    goto :goto_104

    :sswitch_fa
    const-string p1, "status_self_timer_end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_103

    goto :goto_e4

    :cond_103
    move v3, v7

    :cond_104
    :goto_104
    packed-switch v3, :pswitch_data_2a4

    goto/16 :goto_253

    .line 1159
    :pswitch_109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmIsShowSelfTimer(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    .line 1163
    :pswitch_10f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmIsShowSelfTimer(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    .line 1122
    :pswitch_115
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_128

    const-string p1, "off"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_128

    goto :goto_129

    :cond_128
    move v6, v7

    :goto_129
    invoke-static {p0, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmSelfTimerOn(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    .line 1134
    :pswitch_12d
    const-string p1, "shutter_sound_value_change"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_253

    const-string p1, "shutter_sound_value_ready"

    .line 1135
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13f

    goto/16 :goto_253

    .line 1138
    :cond_13f
    const-string p1, "sound_effect_default"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_156

    .line 1139
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1142
    :cond_156
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1144
    :try_start_164
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmShutterSoundAssetFileName(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/lang/NumberFormatException; {:try_start_164 .. :try_end_16b} :catch_16c

    goto :goto_173

    .line 1146
    :catch_16c
    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "new soundResId is not a number, use default"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1148
    :goto_173
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1216
    :pswitch_182
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmLivePhotoChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    .line 1172
    :pswitch_188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->superNightLiteOn()Z

    move-result v0

    if-nez v0, :cond_192

    goto/16 :goto_253

    .line 1175
    :cond_192
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 1176
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 1177
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmLivePhotoChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result v3

    if-nez v3, :cond_1aa

    goto/16 :goto_253

    .line 1180
    :cond_1aa
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c7

    if-nez v0, :cond_1e2

    .line 1182
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v3, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmClosedByLivePhoto(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1183
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v3, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmNeedNotifyLivePhoto(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1184
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object v4, v3, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {v3, v4}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mupdateSwitchUIStateChanged(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Landroid/view/View;)V

    goto :goto_1e2

    .line 1187
    :cond_1c7
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmClosedByLivePhoto(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result v3

    if-eqz v3, :cond_1e2

    if-eqz v0, :cond_1e2

    .line 1188
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v3, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmClosedByLivePhoto(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1189
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v3, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmNeedNotifyLivePhoto(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1190
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object v4, v3, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {v3, v4}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mupdateSwitchUIStateChanged(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Landroid/view/View;)V

    .line 1193
    :cond_1e2
    :goto_1e2
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v3, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmLivePhotoChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1195
    :cond_1e7
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_253

    .line 1196
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_209

    if-nez v0, :cond_22d

    .line 1198
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmClosedByFlare(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1199
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmNeedNotifyFlare(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1200
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object p2, p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mupdateSwitchUIStateChanged(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Landroid/view/View;)V

    goto :goto_22d

    .line 1203
    :cond_209
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmFlareChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-nez p1, :cond_212

    goto :goto_253

    .line 1206
    :cond_212
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmClosedByFlare(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_22d

    if-eqz v0, :cond_22d

    .line 1207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmClosedByFlare(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1208
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmNeedNotifyFlare(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 1209
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object p2, p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mupdateSwitchUIStateChanged(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Landroid/view/View;)V

    .line 1212
    :cond_22d
    :goto_22d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmFlareChangedByUserInteraction(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    .line 1125
    :pswitch_233
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmSuperNightValue(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_253

    .line 1126
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;

    move-result-object p1

    invoke-virtual {p1, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1127
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$4;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmSuperNightValue(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V

    :cond_253
    :goto_253
    return-void

    :sswitch_data_254
    .sparse-switch
        -0x5882c267 -> :sswitch_aa
        -0x52a0b901 -> :sswitch_a1
        -0x2e429f8c -> :sswitch_96
        -0x1ddf915 -> :sswitch_8b
        0x30a2e672 -> :sswitch_80
        0x31f2225f -> :sswitch_75
        0x3213323e -> :sswitch_6c
        0x3dcae109 -> :sswitch_61
        0x452e140a -> :sswitch_56
        0x6467fc5d -> :sswitch_49
    .end sparse-switch

    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_233
        :pswitch_188
        :pswitch_182
        :pswitch_12d
        :pswitch_115
        :pswitch_d7
        :pswitch_cb
        :pswitch_c5
        :pswitch_188
        :pswitch_bb
    .end packed-switch

    :sswitch_data_296
    .sparse-switch
        -0xaded465 -> :sswitch_fa
        -0x5096c46 -> :sswitch_ef
        0x31566b69 -> :sswitch_e6
    .end sparse-switch

    :pswitch_data_2a4
    .packed-switch 0x0
        :pswitch_10f
        :pswitch_10f
        :pswitch_109
    .end packed-switch
.end method
