.class Lcom/transsion/widgetslib/util/search/SearchAnimManager$ExitSearchInternalListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/util/search/SearchAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExitSearchInternalListener"
.end annotation


# instance fields
.field private final mHostViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchBarWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/SearchBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/SearchBar;",
            ">;)V"
        }
    .end annotation

    .line 863
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 864
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ExitSearchInternalListener;->mHostViewWR:Ljava/lang/ref/WeakReference;

    .line 865
    iput-object p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ExitSearchInternalListener;->mSearchBarWR:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 871
    iget-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ExitSearchInternalListener;->mHostViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 872
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager$ExitSearchInternalListener;->mSearchBarWR:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_18

    .line 873
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz p0, :cond_18

    const/4 p1, 0x0

    .line 875
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/SearchBar;->requireSearchAnimManagerTrans(Z)V

    :cond_18
    return-void
.end method
