.class public Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCCapture"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;)V
    .registers 14

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;Lcom/transsion/camera/feature/mode/aigc/preview/IPreviewShot;Lcom/transsion/camera/featurelibs/aicommon/capture/CaptureShot;Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;Lcom/transsion/camera/feature/mode/aigc/monitor/FaceMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    return-void
.end method


# virtual methods
.method public capturing()Z
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->capturing()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->init(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-void
.end method

.method public setCaptureListener(Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->setCaptureListener(Lcom/transsion/camera/feature/mode/aigc/capture/ICaptureListener;)V

    return-void
.end method

.method public shutterClick()Z
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->shutterClick()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->unInit()V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->updateOrientation(I)V

    return-void
.end method

.method public updateTemplate(Ljava/lang/String;)V
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->updateTemplate(Ljava/lang/String;)V

    return-void
.end method

.method public updateWatermark(Ljava/lang/String;)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/AIGCCapture;->mCaptureManager:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->updateWatermark(Ljava/lang/String;)V

    return-void
.end method
