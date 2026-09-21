.class Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 216
    invoke-static {}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->-$$Nest$fgetmIsModeFeatureSupport(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->enableCallback(Z)V

    .line 221
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->-$$Nest$minitSensorMag(Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 207
    invoke-static {}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;->enableCallback(Z)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/moondetection/MoonDetection$1;->this$0:Lcom/transsion/camera/feature/setting/moondetection/MoonDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_25
    return-void
.end method
