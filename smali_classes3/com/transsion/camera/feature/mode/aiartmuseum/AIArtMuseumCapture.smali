.class public Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;)V
    .registers 12

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;Lcom/transsion/camera/feature/mode/aiartmuseum/preview/IPreviewShot;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->capturing()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-void
.end method

.method public setCaptureListener(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->setCaptureListener(Lcom/transsion/camera/featurelibs/aicommon/capture/ICaptureListener;)V

    return-void
.end method

.method public shutterClick()Z
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->shutterClick()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->unInit()V

    return-void
.end method

.method public updateEffect(Ljava/lang/String;)V
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->updateEffect(Ljava/lang/String;)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->updateOrientation(I)V

    return-void
.end method

.method public updatePartial(Ljava/lang/String;)V
    .registers 2

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->updatePartial(Ljava/lang/String;)V

    return-void
.end method

.method public updateStyle(Ljava/lang/String;)V
    .registers 2

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->updateStyle(Ljava/lang/String;)V

    return-void
.end method

.method public updateTravel(Ljava/lang/String;)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->updateTravel(Ljava/lang/String;)V

    return-void
.end method

.method public updateWatermark(Ljava/lang/String;)V
    .registers 2

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->updateWatermark(Ljava/lang/String;)V

    return-void
.end method
