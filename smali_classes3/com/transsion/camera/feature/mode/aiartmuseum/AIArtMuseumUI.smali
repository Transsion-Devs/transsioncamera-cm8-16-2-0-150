.class public Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;
.implements Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;
.implements Lcom/transsion/camera/app/common/IModuleTransfer;
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mGuideUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;

.field private final mHandMarkerUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

.field private final mHintUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;

.field private final mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPreviewTouchUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

.field private final mToastUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/ToastUI;

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
.method public static synthetic $r8$lambda$5Fpa3w7FQ0ElLupyi3F6jQ9pheo(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->lambda$updateEffect$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HPxTPzOvr8WcaNkuP3Y801W5UC4(IILcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 3

    .line 125
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->setScreenFormType(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$HR1-3Xq4SHNWLxepxBsj3HjFY2E(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->lambda$updateAIArtMuseumOption$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J46TkQMXrSrwjknaUkyB9R_7_mM([BLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 239
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onCaptureShot([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$NNXg0MG5s-lgH9RIgbU7Pn2LCaU(IZLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 3

    .line 216
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TAjQR6rPdnpv3_pTCm9bcrNR0Kg(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->lambda$updateSelfTimerStatus$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VoGFzomokt_i6-68wzYrRFUotrA(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;
    .registers 3

    .line 85
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$bTSR47xF9xpRQJ98DnqyaFVycaA(ILcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 212
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onOrientationChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j2DZOAwMly0KP54AR_2Kecv8tdc([BLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 234
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onPreviewShot([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBm8KQFDHjSYalbJbgzwZHKNm6g(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->lambda$previewSizeChanged$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$nIaFX4a3CflpV0Np8csVpTdpiPk(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;
    .registers 3

    .line 82
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$sa7WX56xMmMg5cOa19eauq__udg(ZLcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V
    .registers 2

    .line 208
    invoke-virtual {p1, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->updateRingScreenLight(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIArtMuseumUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;)V
    .registers 13

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mMainHandler:Landroid/os/Handler;

    .line 72
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 74
    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mGuideUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;

    .line 75
    new-instance v2, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-direct {v2, p1, p2, p3}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    .line 76
    new-instance p3, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;

    invoke-direct {p3, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mHintUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;

    .line 77
    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/ToastUI;

    invoke-direct {v3, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/ToastUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mToastUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/ToastUI;

    .line 78
    new-instance v4, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    const-string v5, "key_ai_art_museum"

    invoke-direct {v4, p1, p2, v5}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    .line 80
    new-instance v5, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v5}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v6, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v7, "com.transsion.camera.feature.mode.aiartmuseum.ui.HandMarkerUI5"

    .line 81
    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v5

    new-instance v7, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda16;

    invoke-direct {v7, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda16;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v8

    .line 82
    invoke-virtual {v5, v7, v8}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mHandMarkerUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    .line 83
    new-instance v7, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {v7}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    const-string v8, "com.transsion.camera.feature.mode.aiartmuseum.ui.PreviewTouchUI5"

    .line 84
    invoke-virtual {v7, v6, v8}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object v6

    new-instance v7, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda17;

    invoke-direct {v7, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 85
    invoke-virtual {v6, v7, p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mPreviewTouchUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$previewSizeChanged$3(II)V
    .registers 3

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mPreviewTouchUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->previewSizeChanged(II)V

    return-void
.end method

.method private synthetic lambda$updateAIArtMuseumOption$5(Ljava/lang/String;)V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mGuideUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->updateAIArtMuseumOption(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateEffect$4(Ljava/lang/String;)V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mHintUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->updateEffect(Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mPreviewTouchUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->updateEffect(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSelfTimerStatus$6(Ljava/lang/String;)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->updateSelfTimerStatus(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public firstSteadyFrame()V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mPreviewTouchUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public init()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 99
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->onTransfer(Z)V

    .line 100
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->notifyCameraOperateAction(I)V

    return-void
.end method

.method public onCaptureFail()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x97

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x18c

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureShot([B)V
    .registers 4

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda3;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x97

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p1, 0x18c

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x18b

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onPreviewShot([B)V
    .registers 3

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda19;-><init>([B)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda12;-><init>(IZ)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTransfer(Z)V
    .registers 5

    .line 207
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda11;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public previewSizeChanged(II)V
    .registers 5

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resume()V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setAgreementUIListener(Lcom/transsion/camera/featurelibs/aicommon/ui/IAgreementUI$IAgreementUIListener;)V
    .registers 2

    return-void
.end method

.method public setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V
    .registers 2

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mIndicatorUI:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->setGotoActivityListener(Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mGuideUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public setPreviewWindowListener(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;)V
    .registers 2

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mPreviewTouchUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->setPreviewWindowListener(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;)V

    return-void
.end method

.method public setScreenFormType(II)V
    .registers 4

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda8;-><init>(II)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public settingReady()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showAgreementUI()V
    .registers 3

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAgreementUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAgreementUI:Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/AgreementUI;->showAgreementUI()V

    return-void
.end method

.method public showMaximumDailyUsageHint()V
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mHintUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->showMaximumDailyUsageHint()V

    return-void
.end method

.method public showNetworkToast()V
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mToastUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/ToastUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/ToastUI;->showNetworkToast()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 106
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateAIArtMuseumOption(Ljava/lang/String;)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateEffect(Ljava/lang/String;)V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda18;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateHandLandmarker(Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;)V
    .registers 4

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mHandMarkerUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    .line 250
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->getResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;

    .line 251
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->getInputImageWidth()I

    move-result v1

    .line 252
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/mediapipe/HandLandmarkerResultBundle;->getInputImageHeight()I

    move-result p1

    .line 249
    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->updateHandMarker(Lcom/google/mediapipe/tasks/vision/handlandmarker/HandLandmarkerResult;II)V

    return-void
.end method

.method public updateHandLandmarkerStatus(Z)V
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mHandMarkerUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->updateHandLandmarkerStatus(Z)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 3

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updatePartial(Ljava/lang/String;)V
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mHintUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HintUI;->updatePartial(Ljava/lang/String;)V

    return-void
.end method

.method public updateSelfTimerStatus(Ljava/lang/String;)V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public userInteractive()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mGuideUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/GuideUI;->userInteractive()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->mPreviewTouchUI:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->userInteractive()Z

    move-result p0

    return p0
.end method
