.class Lcom/transsion/camera/feature/setting/zoom/Zoom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 150
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 154
    const-string v0, "need_memory_zoom_value"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fputmNeedSaveZoomValue(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fputmNeedRodeBySaveValue(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)V

    .line 158
    :cond_13
    const-string v0, "key_smooth_zoom"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fputmSmoothZoomValue(Lcom/transsion/camera/feature/setting/zoom/Zoom;I)V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    goto :goto_6d

    .line 161
    :cond_2e
    const-string v0, "key_zoom_state"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 162
    const-string/jumbo v0, "value_zoom_begin"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmIsZooming(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fputmIsZooming(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    goto :goto_6d

    .line 168
    :cond_56
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmIsZooming(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fputmIsZooming(Lcom/transsion/camera/feature/setting/zoom/Zoom;Z)V

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$fgetmSettingChangeRequester(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    .line 174
    :cond_6d
    :goto_6d
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->-$$Nest$msetZoomByItemClick(Lcom/transsion/camera/feature/setting/zoom/Zoom;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
