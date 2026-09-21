.class Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->hideViewWithAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
