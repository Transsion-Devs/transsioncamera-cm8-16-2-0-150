.class Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;
.super Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModeVerticalScroll;->startShrinkingAnimation(Lcom/transsion/camera/app/ui/scroll/IScrollOperation$AnimationListener;)V
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

    .line 357
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll$SupperAnimatorListener;-><init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll-IA;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 360
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->-$$Nest$fgetmModeMaskView(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 361
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->-$$Nest$fgetmModeMaskView(Lcom/transsion/camera/app/ui/ModeVerticalScroll;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeVerticalScroll$3;->this$0:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->-$$Nest$fputmHasSyncModePickerHeight(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Z)V

    :cond_19
    return-void
.end method
