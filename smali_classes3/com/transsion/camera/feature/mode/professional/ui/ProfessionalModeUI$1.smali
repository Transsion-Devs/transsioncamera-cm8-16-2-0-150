.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchMoveStart()V
    .registers 2

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xba

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0xbb

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
