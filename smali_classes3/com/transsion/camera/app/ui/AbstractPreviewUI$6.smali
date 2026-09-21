.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 2

    .line 1483
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1492
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAuxPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$drawable;->aux_preview_surface_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1493
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1486
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAuxPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1487
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$6;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAuxPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
