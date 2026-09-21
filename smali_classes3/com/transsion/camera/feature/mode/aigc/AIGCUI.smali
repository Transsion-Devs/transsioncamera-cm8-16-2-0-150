.class public Lcom/transsion/camera/feature/mode/aigc/AIGCUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;
.implements Lcom/transsion/camera/app/common/IModuleTransfer;
.implements Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mGuideUI:Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;

.field private final mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

.field private final mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mToastUI:Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;

.field private final mUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7jyS2y5XfMnajZ1WQd-tPGU7maA([BLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 209
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onCaptureShot([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$McBIMYX-7NMaHNnXgML_Fs-UfTw([BLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 215
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onCaptureEnd([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tt2UuNgiTzP-ULPgxOSO-BmC1d4([BLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 204
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onPreviewShot([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUlJFOxMRs93MksG6dgBGC6zzlQ(ILcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 137
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onOrientationChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNeoRj4VHGS93CZrvfMzygXPFx0(IILcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 3

    .line 133
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->setScreenFormType(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$rn-gi4J8fVnwHJvZSQQ8eDKZWTE(ZLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 147
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vO7xrtz_fQftZhjW8ecK8lfSTnc(Lcom/transsion/camera/feature/mode/aigc/AIGCUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->lambda$updateSelfTimerStatus$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yymUi0Xes4q9YTybtvIdeI3Yr90(IZLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 3

    .line 141
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;)V
    .registers 10

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mMainHandler:Landroid/os/Handler;

    .line 67
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 69
    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-direct {v1, p1, p2, p4}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    .line 70
    new-instance p4, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p3

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mGuideUI:Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;

    .line 71
    invoke-virtual {p0, p4}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->setAgreementUIListener(Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;)V

    .line 73
    new-instance p3, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    .line 74
    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;

    invoke-direct {v2, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mToastUI:Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;

    .line 75
    new-instance v3, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    const-string v4, "key_aigc_effect_2"

    invoke-direct {v3, p1, p2, v4}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$updateSelfTimerStatus$0(Ljava/lang/String;)V
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateSelfTimerStatus(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->setCameraId(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 88
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->onTransfer(Z)V

    .line 89
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->notifyCameraOperateAction(I)V

    .line 110
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsMasterGuideUISupport:Z

    if-eqz v0, :cond_12

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mGuideUI:Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->notifyCameraOperateAction(I)V

    :cond_12
    return-void
.end method

.method public onCaptureEnd([B)V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda4;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x97

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x102

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureFail()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x97

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x102

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureShot([B)V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda3;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x97

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x102

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x101

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 3

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda7;-><init>([B)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda6;-><init>(IZ)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTransfer(Z)V
    .registers 5

    .line 146
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public previewCoverGuideUIUpdated(Z)V
    .registers 3

    if-eqz p1, :cond_9

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->setPreviewCoverVisibility(Z)V

    return-void

    .line 174
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->setPreviewCoverVisibility(Z)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->showCaptureSuggestion()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setAgreementUIListener(Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;)V
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->setAgreementUIListener(Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;)V

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mGuideUI:Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/GuideUI;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public setScreenFormType(II)V
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public settingReady()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showAgreementUI()V
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->showAgreementUI()V

    return-void
.end method

.method public showMaximumDailyUsageHint()V
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->showMaximumDailyUsageHint()V

    return-void
.end method

.method public showNetworkToast()V
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mToastUI:Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;->showNetworkToast()V

    return-void
.end method

.method public showNoFaceCaptureTip()V
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->showNoFaceCaptureTip()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 94
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mHintUI:Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/ui/HintUI;->updateCaptureSuggestion(Lcom/transsion/camera/feature/mode/aigc/info/FrameFaceInfo;)V

    return-void
.end method

.method public updateSelfTimerStatus(Ljava/lang/String;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aigc/AIGCUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/aigc/AIGCUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
