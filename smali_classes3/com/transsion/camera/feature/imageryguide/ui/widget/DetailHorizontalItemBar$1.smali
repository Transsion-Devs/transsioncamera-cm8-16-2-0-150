.class Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 170
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 171
    const-string p1, "Guide_ItemView"

    const-string v0, "mSwitchAnimator, onAnimationCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    const/16 v0, 0x33

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fputmRectAlpha(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;I)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar$1;->this$0:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->-$$Nest$fputmRectScaleFactor(Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 164
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 165
    const-string p0, "Guide_ItemView"

    const-string p1, "mSwitchAnimator, onAnimationEnd"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
