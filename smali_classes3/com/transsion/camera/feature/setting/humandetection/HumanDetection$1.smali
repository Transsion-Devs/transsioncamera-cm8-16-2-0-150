.class Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;


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

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBMBoxCallback([I)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$fgetmLastBodyBox(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$fputmBodyBox(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;[I)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$000(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$fputmLastBodyBox(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;[I)V

    :cond_29
    return-void
.end method

.method public onHumanDetectionCallback([I)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->-$$Nest$misSettingSupport(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x0

    .line 62
    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    return-void

    :cond_23
    const/4 p0, 0x0

    const/4 p1, -0x1

    .line 64
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_28
    return-void
.end method
