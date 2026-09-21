.class Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 187
    sget-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted, eye value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_4e

    .line 191
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->-$$Nest$fputmIsPreviewStart(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;Z)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$100(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_4e

    const/4 v0, 0x0

    const/16 v1, 0x65

    .line 195
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 175
    sget-object v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->-$$Nest$fputmIsPreviewStart(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;Z)V

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$000(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/4 v0, 0x0

    const/16 v1, 0x66

    .line 181
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2a
    return-void
.end method
