.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchMoveStart()V
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fgetmPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;->onTouchMoveStart()V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;->-$$Nest$fgetmPMasterTopUICallBack(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterTopUI$IPMasterTopUICallBack;->onTouchMoveStop()V

    return-void
.end method
