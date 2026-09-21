.class Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V
    .registers 2

    .line 1173
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1173
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1176
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fgetmActive(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_ad

    .line 1182
    :cond_2a
    const-string v0, "key_anti_video"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "key_wide_camera_tips"

    const-string v3, "key_zoom_limit_monitor"

    const-string v4, "key_wide_camera_item_seleccted"

    const-string v5, "key_super_anti_video"

    if-nez v1, :cond_53

    .line 1183
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1184
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1185
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1186
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    goto :goto_ad

    .line 1190
    :cond_53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_f2

    goto :goto_8c

    :sswitch_60
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_8c

    :cond_67
    const/4 v7, 0x4

    goto :goto_8c

    :sswitch_69
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_8c

    :cond_70
    const/4 v7, 0x3

    goto :goto_8c

    :sswitch_72
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto :goto_8c

    :cond_79
    const/4 v7, 0x2

    goto :goto_8c

    :sswitch_7b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_8c

    :cond_82
    move v7, v6

    goto :goto_8c

    :sswitch_84
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 v7, 0x0

    :goto_8c
    packed-switch v7, :pswitch_data_108

    goto :goto_ad

    .line 1208
    :pswitch_90
    const-string/jumbo v0, "value_wide_camera_item_wide_cam_seleccted"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mupdateAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1210
    :cond_9f
    const-string/jumbo p1, "value_send_current_view_status"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ad

    .line 1211
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mclearAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    :cond_ad
    :goto_ad
    return-void

    .line 1192
    :pswitch_ae
    const-string/jumbo v0, "value_wide_camera_show"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1193
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mupdateAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1195
    :cond_bd
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mclearAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    return-void

    .line 1200
    :pswitch_c3
    const-string v0, "off"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mclearAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    return-void

    .line 1205
    :cond_d1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mupdateAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1215
    :pswitch_d7
    const-string/jumbo v0, "value_zoom_enable_wide"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {v0, v6}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$fputmIsZoomSlideWide(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Z)V

    .line 1217
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mupdateAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1219
    :cond_eb
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;->-$$Nest$mclearAutoHintInfo(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/CutSame;)V

    return-void

    nop

    :sswitch_data_f2
    .sparse-switch
        -0x12fd7cb6 -> :sswitch_84
        0x17b8ff3e -> :sswitch_7b
        0x2ca44e86 -> :sswitch_72
        0x47dd8aea -> :sswitch_69
        0x7ddb1282 -> :sswitch_60
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_c3
        :pswitch_ae
        :pswitch_90
        :pswitch_c3
    .end packed-switch
.end method
