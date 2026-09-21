.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->onVideoFileSaved(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 2

    .line 571
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$1000(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchUnderwaterCamera after onVideoFileSaved mStopByLongPressedPower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$fgetmStopByLongPressedPower(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSwitchModeOnResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$fgetmSwitchModeOnResume(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$fgetmSwitchModeOnResume(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$fputmSwitchModeOnResume(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;Z)V

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->-$$Nest$fgetmStopByLongPressedPower(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$1200(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$5;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->access$1100(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->switchUnderwaterCamera(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    return-void
.end method
