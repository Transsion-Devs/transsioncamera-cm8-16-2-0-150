.class public Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/ui/IToastUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ToastUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 27
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 35
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->init()V

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_capture_tip_connet_network:I

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    .line 54
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->onCaptureStart()V

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->hideToast()V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 48
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->pause()V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->hideToast()V

    return-void
.end method

.method public showNetworkToast()V
    .registers 4

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkUnavailable : mOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/ui/ToastUI;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mOrientation:I

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 42
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->hideToast()V

    return-void
.end method
