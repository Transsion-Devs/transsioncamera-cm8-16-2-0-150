.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 235
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 236
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mItemSwitchAnimator, onAnimationCancel"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmSelectedAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fputmItemCircleAlpha(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;I)V

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fputmItemCircleScaleFactor(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 226
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 227
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mItemSwitchAnimator, onAnimationEnd"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 228
    :goto_d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmZoomItems(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$1;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;->-$$Nest$fgetmAccessHelper(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$AccessHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_25
    return-void
.end method
