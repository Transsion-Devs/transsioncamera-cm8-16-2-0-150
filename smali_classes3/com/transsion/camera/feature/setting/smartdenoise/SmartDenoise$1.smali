.class Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$1;->this$0:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 268
    sget-object v0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$1;->this$0:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->-$$Nest$fgetmIsModeSupport(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$1;->this$0:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->-$$Nest$fgetmTranssionAINRSupport(Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise$1;->this$0:Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->sendSettingChangeRequest()V

    :cond_1c
    return-void
.end method

.method public onPreviewStopped()V
    .registers 2

    .line 262
    sget-object p0, Lcom/transsion/camera/feature/setting/smartdenoise/SmartDenoise;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onPreviewStopped"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
