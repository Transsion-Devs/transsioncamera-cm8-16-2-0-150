.class Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->initCaptureScene()V
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

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_9

    .line 222
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateHelpGuideIndex(I)V

    :cond_9
    return-void
.end method

.method public onItemClick(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;)V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->-$$Nest$fgetmLongExposureSceneSetting(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->-$$Nest$fgetmLongExposureSceneSetting(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCurrentScene:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->updateIcon(Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->-$$Nest$mupdateScrollerViewState(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;Ljava/lang/String;)V

    :cond_3d
    return-void
.end method
