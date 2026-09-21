.class Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;
.super Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StarHint"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)V
    .registers 3

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    .line 239
    const-string v0, "StarHint"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;Ljava/lang/String;)V
    .registers 3

    .line 242
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCaptureCancel()V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmCancelInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onCaptureFail()V
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onCaptureStop()V
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method
