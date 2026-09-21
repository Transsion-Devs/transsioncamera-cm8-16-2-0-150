.class Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;
.super Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V
    .registers 4

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    .line 217
    const-string v0, "PreviewingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;-><init>(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)V

    return-void
.end method


# virtual methods
.method public shutterClick()Z
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmAgreementHelper(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/aicommon/helper/AgreementHelper;->agreed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;->showAgreementUI()V

    return v1

    .line 227
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/IToastUI;->showNetworkToast()V

    return v1

    .line 232
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIGCManager;->captureLimited()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 233
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIGCManager;->captureWait()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_4c

    .line 238
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$BaseState;->entry()V

    return v1

    .line 234
    :cond_4c
    :goto_4c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;->-$$Nest$fgetmAIGCUI(Lcom/transsion/camera/feature/mode/aigc/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/aigc/IAIGCUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aigc/ui/IHintUI;->showMaximumDailyUsageHint()V

    return v1
.end method
