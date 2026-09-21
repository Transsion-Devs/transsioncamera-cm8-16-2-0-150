.class Lcom/transsion/camera/app/ui/manager/option/OptionUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/option/OptionUI;->updateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/option/OptionUI;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$1;->this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 206
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI$1;->this$0:Lcom/transsion/camera/app/ui/manager/option/OptionUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/OptionUI;->mOptionRootView:Landroid/widget/LinearLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
