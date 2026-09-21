.class Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onCheckedChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;->onCheckedChanged(Z)V

    return-void
.end method

.method public onConfirm()V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->access$300(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onConfirm"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->-$$Nest$mupdateDataStoreResetValue(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)V

    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot$2;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x88

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
