.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$IInteractiveListener;


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

    .line 244
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteractive(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->onSeekBarActionDown()V

    return-void

    .line 250
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$2;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->onSeekBarActionUp(ZZZ)V

    return-void
.end method
