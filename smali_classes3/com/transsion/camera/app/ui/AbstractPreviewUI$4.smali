.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;->runUpdatePreviewAnimator(IIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

.field final synthetic val$screenFormType:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V
    .registers 3

    .line 1332
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->val$screenFormType:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 1342
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1335
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1336
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "runUpdatePreviewAnimator onAnimationEnd"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1337
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$4;->val$screenFormType:I

    invoke-static {p1, p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mhandleUpdatePreviewEnd(Lcom/transsion/camera/app/ui/AbstractPreviewUI;I)V

    return-void
.end method
