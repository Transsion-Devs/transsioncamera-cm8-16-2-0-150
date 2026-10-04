.class Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/SellingPointGuideUI;->initFloatingWindowTalkBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V
    .registers 2

    .line 403
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 4

    const v0, 0x8000

    if-ne p2, v0, :cond_f

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$3;->this$0:Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$mgetCurrentFloatingWindowTitle(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_f
    const/high16 v0, 0x10000

    if-ne p2, v0, :cond_17

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 411
    :cond_17
    :goto_17
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
