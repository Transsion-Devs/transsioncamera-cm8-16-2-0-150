.class Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->showResetDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$4;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p1, 0x88

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_13
    return-void
.end method
