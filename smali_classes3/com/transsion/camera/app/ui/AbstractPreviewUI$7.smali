.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;
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

    .line 1502
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1510
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAuxPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAuxPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAuxPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmExpandViewShow(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 1512
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$7;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mupdateAuxPreview(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_2c
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
