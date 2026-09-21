.class Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V
    .registers 2

    .line 829
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 832
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 833
    const-string v0, "key_restore_settings_notify_ui"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const-string p1, "end"

    check-cast p2, Ljava/lang/CharSequence;

    .line 834
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$5;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureSceneAdapter:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    if-eqz p0, :cond_3d

    .line 836
    const-string p1, "star"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->setSelect(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method
