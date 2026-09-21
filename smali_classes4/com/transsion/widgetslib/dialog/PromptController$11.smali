.class Lcom/transsion/widgetslib/dialog/PromptController$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setBtnTextExceedSize(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/widget/Button;)V
    .registers 3

    .line 1256
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$11;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$11;->val$button:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 1259
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$11;->val$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1260
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$11;->val$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_2c

    .line 1262
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$11;->val$button:Landroid/widget/Button;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$11;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    # getter for: Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1800(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_fontsize_h3:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2c
    return-void
.end method
