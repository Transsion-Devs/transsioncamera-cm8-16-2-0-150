.class Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    # invokes: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->access$000(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)V

    return-void
.end method
