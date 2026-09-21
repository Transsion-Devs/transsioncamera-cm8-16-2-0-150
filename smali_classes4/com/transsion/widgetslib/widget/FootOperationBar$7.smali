.class Lcom/transsion/widgetslib/widget/FootOperationBar$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->getMenuItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$icon:Landroid/widget/ImageView;

.field final synthetic val$itemRoot:Landroid/view/View;

.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 5

    .line 751
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->val$itemRoot:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->val$linearLayout:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 754
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->val$itemRoot:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->os_foot_opt_space:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    if-nez v0, :cond_d

    return-void

    .line 759
    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 761
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mIsLandscape:Z
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$1000(Lcom/transsion/widgetslib/widget/FootOperationBar;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 762
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_26

    .line 764
    :cond_20
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_26
    if-lez v2, :cond_2a

    .line 767
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 769
    :cond_2a
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$7;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    if-lez p0, :cond_34

    .line 771
    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 773
    :cond_34
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
