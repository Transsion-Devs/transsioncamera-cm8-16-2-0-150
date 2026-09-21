.class Lcom/transsion/widgetslib/widget/SearchBar$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
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

    .line 343
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getIsBackMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mCurrentRootWidth:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$700(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mFrameLayoutRoot:Landroid/view/View;
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$800(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 347
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$7;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->syncDimens()V

    :cond_1f
    return-void
.end method
