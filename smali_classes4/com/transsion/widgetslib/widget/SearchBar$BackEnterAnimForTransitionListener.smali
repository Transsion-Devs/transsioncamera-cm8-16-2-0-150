.class Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackEnterAnimForTransitionListener"
.end annotation


# instance fields
.field private mBackViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mClickViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 918
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 919
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mBackViewWR:Ljava/lang/ref/WeakReference;

    .line 920
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mClickViewWR:Ljava/lang/ref/WeakReference;

    .line 921
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mSearchViewWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 935
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 936
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mBackViewWR:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 937
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mBackViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 939
    :cond_19
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mClickViewWR:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 940
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mClickViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 942
    :cond_30
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mSearchViewWR:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 943
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mSearchViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 945
    :cond_46
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mBackViewWR:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 946
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mBackViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5d
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 926
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 927
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mBackViewWR:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 928
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mBackViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 929
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$BackEnterAnimForTransitionListener;->mBackViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    return-void
.end method
