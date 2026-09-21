.class Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->show(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

.field final synthetic val$cancelCallBack:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;->val$cancelCallBack:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onCheckedChanged(Z)V
    .registers 5

    .line 72
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged ignore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->-$$Nest$fgetmRequestCancelHelper(Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;)Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;->updateCancelConfirmStatus(Z)V

    return-void
.end method

.method public onConfirm()V
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;->val$cancelCallBack:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;

    if-eqz p0, :cond_7

    .line 53
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;->onConfirm()V

    :cond_7
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;->val$cancelCallBack:Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;

    if-eqz v0, :cond_7

    .line 65
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;->onCancel()V

    .line 67
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->-$$Nest$fgetmDialog(Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismiss()V

    return-void
.end method
