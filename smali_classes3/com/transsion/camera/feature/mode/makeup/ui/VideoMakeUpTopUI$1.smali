.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->updateSeekBarVisibility(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V
    .registers 3

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onAnimationFinish()V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->-$$Nest$fgetmSeekBar(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->val$visible:Z

    if-eqz v1, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->-$$Nest$fgetmSeekBar(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->val$visible:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x8

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSeekBarVisibility onAnimationFinish visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->val$visible:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 216
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 217
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->onAnimationFinish()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 222
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 223
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->onAnimationFinish()V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->val$visible:Z

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->-$$Nest$mnotifySeekBarVisibleChanged(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 206
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 207
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->val$visible:Z

    if-eqz p1, :cond_25

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->-$$Nest$fgetmSeekBar(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI$1;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->-$$Nest$fgetmSeekBar(Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;)Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpTopUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string/jumbo p1, "updateSeekBarVisibility onAnimationStart"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_25
    return-void
.end method
