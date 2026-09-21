.class Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateFlipEntryText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V
    .registers 2

    .line 1364
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 1367
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmFlipTextView(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1368
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmFlipTextView(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_2d

    .line 1370
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmFlipTextView(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1371
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->-$$Nest$fgetmFlipTextView(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_2d
    return v2
.end method
