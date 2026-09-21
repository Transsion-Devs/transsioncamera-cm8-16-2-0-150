.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClosedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .registers 3

    .line 1185
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1186
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method closeCamera()V
    .registers 2

    .line 1208
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "ClosedState ---> closeCamera wrong status"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method openCamera(Ljava/lang/String;)V
    .registers 4

    .line 1191
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fputmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    .line 1194
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraAgent(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 1195
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraAgent(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraUser(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/adapter/CameraAgent;->openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 1196
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmOpeningState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    return-void

    .line 1198
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$ClosedState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "openCamera mCameraAgent is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method releaseCamera()V
    .registers 1

    return-void
.end method
