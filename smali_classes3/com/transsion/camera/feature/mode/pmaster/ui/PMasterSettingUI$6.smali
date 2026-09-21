.class Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->showPopSettingTitleIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)V
    .registers 2

    .line 400
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;->-$$Nest$fgetmPopSettingTitleContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
