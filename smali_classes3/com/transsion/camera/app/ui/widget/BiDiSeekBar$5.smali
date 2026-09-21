.class Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->createThumbIntervalAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V
    .registers 2

    .line 1133
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1149
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputisCenterXAnimation(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V

    .line 1150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputmNeedDragEnd(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1142
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputisCenterXAnimation(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V

    .line 1143
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputmNeedDragEnd(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 1155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputisCenterXAnimation(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 1136
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$5;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->-$$Nest$fputisCenterXAnimation(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)V

    return-void
.end method
