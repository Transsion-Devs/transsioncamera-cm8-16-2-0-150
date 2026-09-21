.class Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/util/search/SearchAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnterSearchInternalListener"
.end annotation


# instance fields
.field private final mHostViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/SearchBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$p_jlsIO244dKSglQGfWI6zZVPNE(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 1

    .line 903
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->showSoftInput(Landroid/widget/EditText;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 3

    .line 885
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 886
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener;->mHostViewWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 892
    iget-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener;->mHostViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    .line 894
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 895
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener;->showSoft()V

    :cond_11
    return-void
.end method

.method public showSoft()V
    .registers 2

    .line 900
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener;->mHostViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p0, :cond_12

    .line 902
    new-instance v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$EnterSearchInternalListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method
