.class Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmVideoSnapShotCover(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->-$$Nest$fgetmVideoSnapShotCover(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
