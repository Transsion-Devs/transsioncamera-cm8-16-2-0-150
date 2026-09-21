.class Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 190
    invoke-static {}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$fputmDetectionEnable(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;Z)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$200(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 4

    .line 177
    invoke-static {}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$fputmDetectionEnable(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;Z)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$100(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    const/4 v2, 0x0

    .line 183
    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$2;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$fputmBodyBox(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;[I)V

    :cond_2f
    return-void
.end method
