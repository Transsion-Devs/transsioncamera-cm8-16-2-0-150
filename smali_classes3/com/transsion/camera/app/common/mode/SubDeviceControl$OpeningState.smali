.class final Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;
.super Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpeningState"
.end annotation


# instance fields
.field private mRetryCount:I

.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V
    .registers 3

    .line 1184
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    .line 1185
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;-><init>(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1180
    iput p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    return-void
.end method

.method private needRetryOpenCamera()Z
    .registers 4

    .line 1240
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmInfoCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;->IsCanRetryOpenCamera()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 1243
    :cond_16
    iget v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_20

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1244
    iput v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    return v1

    .line 1247
    :cond_20
    iput v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    return v1
.end method

.method private retryOpenCamera()V
    .registers 4

    .line 1252
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "retryOpenCamera+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    .line 1254
    :try_start_d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_1c

    .line 1256
    :catch_11
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Do not sleep 200 ms."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1258
    :goto_1c
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraAgent(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1259
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraAgent(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraUser(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/adapter/CameraAgent$Customer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraAgent;->openCamera(Ljava/lang/String;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    .line 1261
    :cond_39
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "retryOpenCamera-"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onCameraError(I)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5a

    const/16 v0, 0x9

    if-eq p1, v0, :cond_37

    const/4 v0, 0x0

    .line 1229
    iput v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    .line 1230
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fputmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 1231
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmClosedState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    .line 1232
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceError(Ljava/lang/String;I)V

    return-void

    .line 1220
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCameraError, camera id is unknow."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceError(Ljava/lang/String;I)V

    return-void

    .line 1211
    :cond_5a
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->needRetryOpenCamera()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1212
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->retryOpenCamera()V

    return-void

    .line 1215
    :cond_64
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmNotifyCallback(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;->notifyDeviceError(Ljava/lang/String;I)V

    :cond_7b
    return-void
.end method

.method onCameraOpened(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 5

    const/4 v0, 0x0

    .line 1190
    iput v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->mRetryCount:I

    .line 1191
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1195
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "handle camera opened msg, but camera proxy has released"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1198
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOpened, cur id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentCameraId(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fputmCamera(Lcom/transsion/camera/app/common/mode/SubDeviceControl;Lcom/transsion/camera/adapter/CameraProxy;)V

    .line 1200
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCameraOutputSurface(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/CameraOutputSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraOutputSurface;->dirty()V

    .line 1201
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmOpenedState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->enter()V

    .line 1202
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/SubDeviceControl$OpeningState;->this$0:Lcom/transsion/camera/app/common/mode/SubDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl;->-$$Nest$fgetmCurrentState(Lcom/transsion/camera/app/common/mode/SubDeviceControl;)Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/SubDeviceControl$State;->cameraOpened()V

    return-void
.end method
