.class Lcom/transsion/widgetslib/widget/SearchBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->initEvent()V
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

    .line 167
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$4;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 170
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$4;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 171
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$4;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-lez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    return-void

    .line 172
    :cond_1e
    :goto_1e
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$4;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # getter for: Lcom/transsion/widgetslib/widget/SearchBar;->mSearchView:Landroid/widget/AutoCompleteTextView;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$400(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
