.class Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V
    .registers 4

    .line 246
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    .line 247
    const-string v0, "PreviewingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)V

    return-void
.end method


# virtual methods
.method public shutterClick()Z
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmAgreementHelper(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;->agreed()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;->showAgreementUI()V

    .line 254
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->shutterClick()Z

    move-result p0

    return p0

    .line 257
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IToastUI;->showNetworkToast()V

    .line 259
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->shutterClick()Z

    move-result p0

    return p0

    .line 262
    :cond_34
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->captureLimited()Z

    move-result v0

    if-nez v0, :cond_54

    .line 263
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->captureWait()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_54

    .line 268
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->entry()V

    const/4 p0, 0x1

    return p0

    .line 264
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;->-$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aiartmuseum/IAIArtMuseumUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IHintUI;->showMaximumDailyUsageHint()V

    .line 265
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/capture/CaptureManager$BaseState;->shutterClick()Z

    move-result p0

    return p0
.end method
