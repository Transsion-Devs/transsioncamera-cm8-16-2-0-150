.class Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;
.super Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModeVerticalScroll;->startSpreadingBackAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
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

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll-IA;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 304
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$1;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->-$$Nest$fgetmPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;->onPanelSpreadBack()V

    return-void
.end method
