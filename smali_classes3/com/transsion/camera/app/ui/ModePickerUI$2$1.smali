.class Lcom/transsion/camera/app/ui/ModePickerUI$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/ModePickerUI$2;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI$2;)V
    .registers 2

    .line 685
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2$1;->this$1:Lcom/transsion/camera/app/ui/ModePickerUI$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 688
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 689
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2$1;->this$1:Lcom/transsion/camera/app/ui/ModePickerUI$2;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 690
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2$1;->this$1:Lcom/transsion/camera/app/ui/ModePickerUI$2;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$2;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmModePickerRoot(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/view/ViewGroup;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1a
    return-void
.end method
