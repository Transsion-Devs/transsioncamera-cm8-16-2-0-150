.class Lcom/transsion/camera/app/ui/PreviewUI5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PreviewUI5;->getMoveAnimatorInstance(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/PreviewUI5;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PreviewUI5;II)V
    .registers 4

    .line 184
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->this$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    iput p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->val$start:I

    iput p3, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->val$end:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 193
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd: end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->val$end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->this$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->val$end:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$monPreviewViewTranslation(Lcom/transsion/camera/app/ui/PreviewUI5;IZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 187
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd: start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->val$start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->this$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$1;->val$start:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$monPreviewViewTranslation(Lcom/transsion/camera/app/ui/PreviewUI5;IZZ)V

    return-void
.end method
