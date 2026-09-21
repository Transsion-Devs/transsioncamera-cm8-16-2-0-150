.class Lcom/transsion/camera/app/ui/setting/PopupOption$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .registers 2

    .line 621
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmItemText(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 625
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmItemText(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmItemText(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 628
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$5;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->-$$Nest$fgetmItemText(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return v1
.end method
