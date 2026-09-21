.class Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->update(Ljava/util/Map;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;Landroid/view/View;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 71
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_e

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e
    return-void
.end method
