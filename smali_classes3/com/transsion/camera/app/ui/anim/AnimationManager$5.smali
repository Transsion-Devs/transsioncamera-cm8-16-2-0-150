.class Lcom/transsion/camera/app/ui/anim/AnimationManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;->inflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$id;->preview_cover_layer_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_13

    .line 314
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 316
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$id;->preview_cover:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iput-object v1, v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$id;->animation_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->-$$Nest$fputmViewSwitcherRoot(Lcom/transsion/camera/app/ui/anim/AnimationManager;Lcom/transsion/camera/app/ui/view/ViewSwitcher;)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateTargetRect(Landroid/graphics/Rect;ZZ)V

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$5;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->preInit()V

    return-void
.end method
