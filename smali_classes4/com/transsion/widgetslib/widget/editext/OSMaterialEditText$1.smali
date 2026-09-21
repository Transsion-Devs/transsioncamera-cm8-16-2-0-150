.class Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setShowDelete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .registers 2

    .line 613
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;->this$0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 616
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText$1;->this$0:Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    # getter for: Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->mEditText:Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->access$000(Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
