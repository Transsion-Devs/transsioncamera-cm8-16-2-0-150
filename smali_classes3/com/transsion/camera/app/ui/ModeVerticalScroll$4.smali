.class Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;
.super Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModeVerticalScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll-IA;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->-$$Nest$fgetmModePanelLayout(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->-$$Nest$fgetmPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$4;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->-$$Nest$fgetmPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelShrinkEnd()V

    :cond_1c
    return-void
.end method
