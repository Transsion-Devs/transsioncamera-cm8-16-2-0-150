.class Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 150
    sget-object v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->-$$Nest$fputmIsPreviewStart(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;Z)V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->access$100(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/4 v0, 0x0

    const/16 v1, 0x65

    .line 155
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2a
    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 138
    sget-object v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->-$$Nest$fputmIsPreviewStart(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;Z)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->access$000(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/4 v0, 0x0

    const/16 v1, 0x66

    .line 144
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_2a
    return-void
.end method
