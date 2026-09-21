.class Lcom/transsion/widgetslib/view/damping/HeaderHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/HeaderHelper;->refreshFinishAnim(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$5;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 226
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 227
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$5;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    const/4 v0, 0x0

    # setter for: Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsRefreshing:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->access$602(Lcom/transsion/widgetslib/view/damping/HeaderHelper;Z)Z

    .line 228
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$5;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    # setter for: Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mIsAbortRefreshing:Z
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->access$702(Lcom/transsion/widgetslib/view/damping/HeaderHelper;Z)Z

    .line 229
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$5;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    # getter for: Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mTextRefreshing:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->access$000(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$string;->os_dampingl_refresh_finish:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$5;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    # getter for: Lcom/transsion/widgetslib/view/damping/HeaderHelper;->mLoadingView:Lcom/transsion/widgetslib/view/OSLoadingView;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->access$100(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    return-void
.end method
