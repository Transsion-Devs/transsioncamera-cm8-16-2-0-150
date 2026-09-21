.class Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/manager/AccessManager$OnEventChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->performMultiTouchEvent(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$3;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$3;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$3;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    const v0, 0x3f6b851f    # 0.92f

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;F)V

    return-void
.end method

.method public onActionUpOrCancel()V
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$3;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$3;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method
