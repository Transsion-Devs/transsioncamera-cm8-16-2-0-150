.class Lcom/transsion/camera/app/ui/PopSettingUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI;->animateTranslation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;)V
    .registers 2

    .line 827
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$4;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 830
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 831
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$4;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmPopOptionSelectedBackground(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
