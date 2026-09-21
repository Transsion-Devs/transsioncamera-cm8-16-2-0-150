.class Lcom/transsion/widgetslib/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 160
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$3;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 163
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$3;->this$0:Lcom/transsion/widgetslib/widget/SearchBar;

    # invokes: Lcom/transsion/widgetslib/widget/SearchBar;->hideKeyboard()V
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->access$300(Lcom/transsion/widgetslib/widget/SearchBar;)V

    const/4 p0, 0x1

    return p0
.end method
