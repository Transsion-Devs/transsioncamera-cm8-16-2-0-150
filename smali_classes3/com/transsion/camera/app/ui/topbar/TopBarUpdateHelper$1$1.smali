.class Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->accept(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1$1;->this$1:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 128
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1$1;->this$1:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->val$temp:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmView(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1$1;->this$1:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mViewStore:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->val$temp:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmKey(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$ViewStore;->shouldSkipRemoveByState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 131
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip stale remove callback by state, key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1$1;->this$1:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->val$temp:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;->-$$Nest$fgetmKey(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$AnimatorParamHolder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1$1;->this$1:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_51

    if-eqz p1, :cond_51

    .line 135
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_51
    return-void
.end method
