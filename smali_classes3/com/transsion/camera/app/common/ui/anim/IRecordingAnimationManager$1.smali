.class Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;ZZF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;

.field final synthetic val$isRecordBegin:Z

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;ZLandroid/view/View;)V
    .registers 4

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->this$0:Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$isRecordBegin:Z

    iput-object p3, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 52
    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onAnimationEnd] isRecordBegin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$isRecordBegin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$rootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->this$0:Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$rootView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$isRecordBegin:Z

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    .line 59
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->DTAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onAnimationStart] isRecordBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$isRecordBegin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->this$0:Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$rootView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$isRecordBegin:Z

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->updateRecordingAnimationState(Landroid/view/View;ZZ)V

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager$1;->val$rootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
