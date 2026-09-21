.class Lcom/transsion/camera/app/ui/AbstractShutterUI$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/FadeAnim$IFadeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateFlipLayout(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 627
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(F)V
    .registers 3

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 631
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_11
    return-void
.end method

.method public onFadeOutEnd()V
    .registers 3

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmShutterButtonView(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/ui/view/ShutterButtonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 640
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmIsVideoRecording(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    if-eqz v1, :cond_21

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmRecordingOrientation(Lcom/transsion/camera/app/ui/AbstractShutterUI;)I

    move-result p0

    goto :goto_25

    :cond_21
    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/AbstractShutterUI;)I

    move-result p0

    :goto_25
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mupdateLayout(Lcom/transsion/camera/app/ui/AbstractShutterUI;IZ)V

    return-void
.end method
