.class Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

.field final synthetic val$holder:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

.field final synthetic val$position:I


# direct methods
.method public static synthetic $r8$lambda$OEtbNOU-Zr7a5s1wG3aFT3K61rU(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->lambda$onAnimationEnd$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wkTN_HirgOKO0I2pb6xJGhxqAgI(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->lambda$onAnimationEnd$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V
    .registers 4

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->this$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->val$holder:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(I)V
    .registers 2

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->this$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->notifyDataChanged([I)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$1()V
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->this$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->notifyDataChanged([I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 214
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->this$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->isChildAdapter()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->val$holder:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->val$position:I

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 218
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;->val$holder:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
