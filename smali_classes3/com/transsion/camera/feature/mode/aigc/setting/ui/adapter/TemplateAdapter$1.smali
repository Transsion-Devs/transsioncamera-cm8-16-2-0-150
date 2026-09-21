.class Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

.field final synthetic val$holder:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method public static synthetic $r8$lambda$ALBOgIQuPcimFIVo2AfCTl5vUms(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->lambda$onAnimationEnd$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;ILcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;)V
    .registers 4

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->val$holder:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(I)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->notifyItemSelectChanged(I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 210
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 211
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_15

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->val$position:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->notifyItemSelectChanged(I)V

    return-void

    .line 214
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->val$holder:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;->val$position:I

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$1;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
