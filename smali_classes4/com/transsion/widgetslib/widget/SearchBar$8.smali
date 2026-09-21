.class Lcom/transsion/widgetslib/widget/SearchBar$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->preDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    .line 390
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 391
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 392
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    # setter for: Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I
    invoke-static {v0, v2}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1002(Lcom/transsion/widgetslib/widget/SearchBar;I)I

    .line 394
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mLeftMargin:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1200(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    .line 395
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v3

    sub-int/2addr v3, v0

    # setter for: Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I
    invoke-static {v2, v3}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1302(Lcom/transsion/widgetslib/widget/SearchBar;I)I

    .line 396
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mWidth0:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1000(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1300(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v3

    sub-int/2addr v2, v3

    # setter for: Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I
    invoke-static {v0, v2}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1402(Lcom/transsion/widgetslib/widget/SearchBar;I)I

    .line 399
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getIsBackMode()Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mIsSearStatusOnInitial:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1500(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 400
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mClickView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1100(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mBackView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$900(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # invokes: Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewWidthDiff()V
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1600(Lcom/transsion/widgetslib/widget/SearchBar;)V

    .line 404
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 405
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mWidth1:I
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1400(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 406
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1300(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    neg-int v0, v0

    goto :goto_b3

    :cond_ad
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mMoveWidth:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1300(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    .line 408
    :goto_b3
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 409
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1700(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 411
    :cond_c6
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$8;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # invokes: Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1800(Lcom/transsion/widgetslib/widget/SearchBar;)V

    const/4 p0, 0x1

    return p0
.end method
