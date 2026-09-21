.class Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->animEntryVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;Z)V
    .registers 3

    .line 576
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 588
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 589
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animEntryVisibility onAnimationCancel show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->val$show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_2e

    .line 591
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->val$show:Z

    if-eqz p0, :cond_29

    const/4 p0, 0x0

    goto :goto_2b

    :cond_29
    const/16 p0, 0x8

    :goto_2b
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2e
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 597
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 598
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animEntryVisibility onAnimationEnd show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->val$show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 599
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_2e

    .line 600
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->val$show:Z

    if-eqz p0, :cond_29

    const/4 p0, 0x0

    goto :goto_2b

    :cond_29
    const/16 p0, 0x8

    :goto_2b
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 579
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 580
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animEntryVisibility onAnimationStart show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->val$show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p0, :cond_27

    const/4 p1, 0x0

    .line 582
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    return-void
.end method
