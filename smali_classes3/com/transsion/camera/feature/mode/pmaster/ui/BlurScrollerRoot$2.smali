.class Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)V
    .registers 2

    .line 1190
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/String;)V
    .registers 6

    .line 1193
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "durationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_10d

    .line 1195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurIcon(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1196
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmScrollerRulerView(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 1197
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 1198
    const-string v2, "f0.0"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1199
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->openBlurBySeekBar(Ljava/lang/String;)V

    .line 1201
    :cond_4a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fputmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 1204
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v2, "key_pmaster_blur_change"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1206
    :cond_6f
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValueChange mChangeZoomCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetsChangeZoomCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1207
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmCustomizedFocalLengthSupport(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Z

    move-result p1

    if-eqz p1, :cond_10d

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetsChangeZoomCount()I

    move-result p1

    if-nez p1, :cond_10d

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    .line 1208
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$misCameraFacingBack(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 1209
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    const-string v2, "key_camera_zoom"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mgetFocalLength(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;I)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmBlurSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$misCameraFacingBack(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;Ljava/lang/String;)Z

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$mqueryDefaultValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;IZ)Ljava/lang/String;

    move-result-object p1

    .line 1210
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentBlurValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", zoomBlurDefaultValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1211
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$fgetmCurrentBlurValue(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_109

    .line 1212
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfputsBlurHasChanged(Z)V

    return-void

    :cond_109
    const/4 p0, 0x1

    .line 1214
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->-$$Nest$sfputsBlurHasChanged(Z)V

    :cond_10d
    return-void
.end method
