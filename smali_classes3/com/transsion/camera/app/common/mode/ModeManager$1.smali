.class Lcom/transsion/camera/app/common/mode/ModeManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 253
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 256
    const-string v0, "key_google_lens_click"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_29

    const-string v1, "action_barcode_activity_start"

    .line 257
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "action_gallery_activity_start"

    .line 258
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "action_movie_review_activity_start"

    .line 259
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "action_sleep_activity_start"

    .line 260
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 261
    :cond_29
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmSettingController(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v1

    const-string v3, "need_memory_zoom_value"

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v3, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStatusChanged: set NeedSaveCameraId, key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmNeedSaveCameraId(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 266
    :cond_59
    const-string v1, "key_restore_settings_notify_ui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "end"

    if-eqz v1, :cond_ab

    .line 267
    const-string v1, "begin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 268
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v4, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmCurrentRestoreState(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    if-eqz v1, :cond_ab

    .line 270
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v4

    if-eqz v4, :cond_8b

    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    goto :goto_8c

    :cond_8b
    const/4 v4, 0x0

    :goto_8c
    invoke-static {v1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmPreviewSize(Lcom/transsion/camera/app/common/mode/ModeManager;Landroid/util/Size;)V

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    const/16 v4, 0x13

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_ab

    .line 273
    :cond_9b
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 274
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$mhandleRestoreSettings(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmCurrentRestoreState(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V

    .line 278
    :cond_ab
    :goto_ab
    const-string v1, "key_wide_camera_item_seleccted"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_c2

    .line 279
    const-string/jumbo v1, "value_wide_camera_item_multiple_cam_seleccted_by_user"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmNeedCheckOrientation(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 283
    :cond_c2
    const-string v1, "key_ai_group_photo_camera_id"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 284
    const-string/jumbo v1, "value_ai_group_photo_id_multiple"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 285
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmNeedCheckAIGroup(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    goto :goto_e7

    .line 286
    :cond_d9
    const-string/jumbo v1, "value_ai_group_photo_id_single"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmNeedCheckAIGroup(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 290
    :cond_e7
    :goto_e7
    const-string v1, "key_video_camera_change"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$mswitchVideoCamera(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/String;)V

    .line 293
    :cond_f4
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 294
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStatusChanged KEY_GOOGLE_LENS_CLICK, key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmGoogleLenClick(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 297
    :cond_117
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentRestoreState(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_130

    const-string v0, "key_switch_camera_on_zoom"

    .line 298
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->onSwitchOpticalZoomCamera(Ljava/lang/String;)V

    .line 301
    :cond_130
    const-string v0, "key_video_hdr_10_plus"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 302
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onStatusChanged HDR 10 Plus, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string v1, "on"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 304
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    goto :goto_15f

    .line 305
    :cond_15d
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 303
    :goto_15f
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$mupdatePreviewViewType(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    .line 307
    :cond_162
    const-string v0, "key_hdr_format"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17d

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$1;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string/jumbo p1, "value_hdr_hlg"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_178

    .line 309
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    goto :goto_17a

    .line 310
    :cond_178
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 308
    :goto_17a
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$mupdatePreviewViewType(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    :cond_17d
    return-void
.end method
