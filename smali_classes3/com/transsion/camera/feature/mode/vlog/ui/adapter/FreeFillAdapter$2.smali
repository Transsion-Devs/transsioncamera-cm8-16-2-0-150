.class Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

.field final synthetic val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->-$$Nest$fgetmbEnabled(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3f6b851f    # 0.92f

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/AnimationUtils;->startPressedAnimator(Landroid/view/View;F)V

    :cond_1f
    return-void
.end method

.method public onActionUpOrCancel()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$2;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method
