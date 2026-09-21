.class Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/framework/TECameraModeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V
    .registers 2

    .line 931
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 3

    .line 934
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v1, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableMonitorGyroscope:Z

    if-eqz v1, :cond_3f

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    if-eqz v0, :cond_3f

    .line 935
    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->getSessionState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    .line 936
    const-string v0, "TECameraModeBase"

    const-string v1, "gyro onChange set focus mode to continuous focus."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->rollbackMeteringSessionRequest()I

    .line 938
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->rollbackNormalSessionRequest()I

    .line 939
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->getGyro()Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 940
    iget-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mCameraHolder:Lcom/ss/android/ttvecamera/TECamera2;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECamera2;->getGyro()Lcom/ss/android/ttvecamera/focusmanager/Gyro;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$4;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    # getter for: Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mGyroListener:Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->access$000(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/focusmanager/Gyro;->unregister(Lcom/ss/android/ttvecamera/focusmanager/Gyro$GyroListener;)V

    :cond_3f
    return-void
.end method
