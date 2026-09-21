.class public Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchBarTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .registers 2

    .line 849
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 858
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # invokes: Lcom/transsion/widgetslib/widget/SearchBar;->dealDeleteIconVisibility()V
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1800(Lcom/transsion/widgetslib/widget/SearchBar;)V

    .line 859
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$SearchBarTextWatcher;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # invokes: Lcom/transsion/widgetslib/widget/SearchBar;->dealSearchViewTextPadding()V
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$1900(Lcom/transsion/widgetslib/widget/SearchBar;)V

    return-void
.end method
