.class public Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ITimerListener;
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;
.implements Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

.field private final mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

.field private final mRootView:Landroid/view/ViewGroup;

.field private final mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

.field private final mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;


# direct methods
.method public static synthetic $r8$lambda$kwAkVmF31ZWTcAmWJwalBKc6UAw(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;
    .registers 3

    .line 54
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;)V
    .registers 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 48
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mRootView:Landroid/view/ViewGroup;

    .line 50
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    .line 51
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    .line 52
    new-instance v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v1, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v2, "com.transsion.camera.feature.mode.longexposure.ui.ShutterUI5"

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    .line 55
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    return-void
.end method


# virtual methods
.method public init(Landroid/view/LayoutInflater;)V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->init()V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCaptureCancel()V
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->hideDialog()V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->onCaptureCancel()V

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onCaptureCancel()V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->hideDialog()V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->onCaptureEnd()V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onCaptureEnd()V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x112

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureFail()V
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->hideDialog()V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->onCaptureFail()V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onCaptureFail()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->onCaptureStart()V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onCaptureStart()V

    return-void
.end method

.method public onCaptureStop()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->hideDialog()V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->onCaptureStop()V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onCaptureStop()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->onOrientationChanged(I)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onOrientationChanged(I)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->onScreenFormChanged(IZ)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onScreenFormChanged(IZ)V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->onScreenFormChanged(I)V

    return-void
.end method

.method public onStarSearched(I)V
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->onStarSearched(I)V

    return-void
.end method

.method public onStatusUpdate(I)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->onStatusUpdate(I)V

    return-void
.end method

.method public onStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->show(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    return-void
.end method

.method public onTimerEnd()V
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->onTimerEnd()V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onTimerEnd()V

    return-void
.end method

.method public onTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->onTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onTimerStart(Lcom/transsion/camera/feature/mode/longexposure/capture/data/Duration;)V

    return-void
.end method

.method public onTimerUpdate(J)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->onTimerUpdate(J)V

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->onTimerUpdate(J)V

    return-void
.end method

.method public setScreenFormTypeAndOrientation(II)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->setScreenFormTypeAndOrientation(II)V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->setScreenFormTypeAndOrientation(II)V

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->setScreenFormTypeAndOrientation(II)V

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-void
.end method

.method public unInit()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->unInit()V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mTimerUI:Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/TimerUI;->unInit()V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mShutterUI:Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;->unInit()V

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mDialogUI:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->hideDialog()V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_2e

    const/4 v1, 0x0

    .line 74
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->updateHelpGuideIndex(I)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v3, 0x114

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v2, v1, v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    :cond_2e
    return-void
.end method

.method public updateScene(Ljava/lang/String;)V
    .registers 2

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->updateScene(Ljava/lang/String;)V

    return-void
.end method

.method public updateTripod(Ljava/lang/String;)V
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->mHintUI:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->updateTripod(Ljava/lang/String;)V

    return-void
.end method
