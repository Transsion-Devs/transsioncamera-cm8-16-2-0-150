.class public Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private final mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStableState:I

.field private final mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;


# direct methods
.method public static synthetic $r8$lambda$DQYeBLXd-AWMtgJNGIMuvmzOvjo(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 144
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;->onExecuted()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$sMQGcLrt_x7MGWjnAZgSOt-hQpc(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 132
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;->onExecuted()V

    :cond_5
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;)V
    .registers 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    .line 48
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    .line 49
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 50
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-object p5, p0

    .line 51
    new-instance p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;)V

    iput-object p0, p5, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    return-void
.end method


# virtual methods
.method public backPressed()Z
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->backPressed()Z

    move-result p0

    return p0
.end method

.method public captureComplete()V
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->captureComplete()V

    return-void
.end method

.method public captureFail()V
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->captureFail()V

    return-void
.end method

.method public getCurrentStableState()I
    .registers 1

    .line 93
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mStableState:I

    return p0
.end method

.method public getResultMonitor()Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mResultMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;

    return-object p0
.end method

.method public getSetting(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    return-object p0
.end method

.method public getTwilightMonitor()Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mTwilightMonitor:Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    return-object p0
.end method

.method public onCaptureStart()V
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->captureStart()V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->pause()V

    return-void
.end method

.method public pictureTaken()Z
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->pictureTaken()Z

    move-result p0

    return p0
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_6
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->resume()V

    return-void
.end method

.method public setCaptureListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V
    .registers 2

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->setCaptureListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;)V

    return-void
.end method

.method public setCurrentStableState(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mStableState:I

    return-void
.end method

.method public setStarSearchListener(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->setStarSearchListener(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;)V

    return-void
.end method

.method public setTimerListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->setTimerListener(Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;)V

    return-void
.end method

.method public shutterClick()Z
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->shutterClick()Z

    move-result p0

    return p0
.end method

.method public shutterDown()V
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->shutterDown()V

    return-void
.end method

.method public stopCapture()V
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->stopCapture()V

    return-void
.end method

.method public triggerCancelCapture()V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p0, :cond_d

    .line 111
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "triggerCapture mDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->cancelTakePicture()V

    return-void
.end method

.method public triggerCancelCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V
    .registers 3

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p0, :cond_d

    .line 139
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "triggerCancelCapture mDeviceControl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_d
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->cancelTakePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V

    return-void
.end method

.method public triggerCapture()V
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p0, :cond_d

    .line 103
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "triggerCapture mDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePicture()V

    return-void
.end method

.method public triggerCapture(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V
    .registers 3

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p0, :cond_d

    .line 127
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "triggerCapture mDeviceControl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_d
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture$ICommandCallback;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->takePicture(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V

    return-void
.end method

.method public triggerReConfigSession()V
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez p0, :cond_d

    .line 119
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "triggerCapture mDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->reConfigureSession()V

    return-void
.end method

.method public updateCaptureScene(Ljava/lang/String;)V
    .registers 5

    .line 97
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCaptureScene scene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->updateScene(Ljava/lang/String;)V

    return-void
.end method
