.class Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;


# direct methods
.method public static synthetic $r8$lambda$mh_mLekOQxjK_Mi-ODG9nD_qNX4(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$mshowEntryViewIfNeed(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V
    .registers 2

    .line 765
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .line 768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_14c

    goto :goto_2e

    :sswitch_e
    const-string v0, "key_face_rect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v3, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2e

    :cond_22
    move v3, v1

    goto :goto_2e

    :sswitch_24
    const-string v0, "key_camera_click_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    packed-switch v3, :pswitch_data_15a

    goto/16 :goto_138

    .line 770
    :pswitch_33
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fgetmSupported(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_138

    .line 771
    instance-of p1, p2, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz p1, :cond_48

    .line 772
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    check-cast p2, [Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    array-length p1, p2

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$monFaceCountChanged(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;I)V

    return-void

    .line 774
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0, v2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$monFaceCountChanged(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;I)V

    return-void

    .line 782
    :pswitch_4e
    check-cast p2, Ljava/lang/String;

    .line 783
    invoke-static {}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CONFLICT_UI_STATE, value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 784
    const-string p1, "value_aigc_effect_ui_on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 785
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fputmAIGCUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    return-void

    .line 787
    :cond_7b
    const-string p1, "value_aigc_effect_ui_off"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v3, 0x64

    if-eqz p1, :cond_a3

    .line 788
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fputmAIGCUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    .line 789
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fgetmSupported(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_138

    .line 790
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    new-instance p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 793
    :cond_a3
    const-string p1, "value_ai_art_museum_ui_on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b6

    .line 794
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fputmAIArtMuseumUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    .line 795
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    return-void

    .line 796
    :cond_b6
    const-string p1, "value_ai_art_museum_ui_off"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 797
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fputmAIArtMuseumUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    .line 798
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fgetmSupported(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_138

    .line 799
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    new-instance p2, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 802
    :cond_dc
    const-string p1, "value_facebeauty_ui_on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_139

    const-string p1, "value_dv_video_mode_bottom_ui_on"

    .line 803
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_139

    const-string p1, "value_filter_ui_on"

    .line 804
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_139

    const-string p1, "value_video_filter_ui_on"

    .line 805
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_139

    const-string p1, "value_timelapse_setting_ui_on"

    .line 806
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_105

    goto :goto_139

    .line 809
    :cond_105
    const-string p1, "value_zoomwheel_view_hide"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_138

    .line 810
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fputmIsConflictUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    .line 811
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fgetmSupported(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_120

    .line 812
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$mshowEntryViewIfNeed(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V

    return-void

    .line 814
    :cond_120
    invoke-static {}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KEY_CONFLICT_UI_STATE return, value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_138
    :goto_138
    return-void

    .line 807
    :cond_139
    :goto_139
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$fputmIsConflictUIOn(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->hideEntryView()V

    return-void

    .line 779
    :pswitch_144
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$StatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2, v1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$mupdateUIStateBySettingValue(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Ljava/lang/String;Z)V

    return-void

    :sswitch_data_14c
    .sparse-switch
        0xa9133a4 -> :sswitch_24
        0x50497713 -> :sswitch_19
        0x579c1ca6 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_144
        :pswitch_4e
        :pswitch_33
    .end packed-switch
.end method
