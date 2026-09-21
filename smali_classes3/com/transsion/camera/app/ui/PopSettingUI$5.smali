.class Lcom/transsion/camera/app/ui/PopSettingUI$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI;->showPopSettingView(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$entryText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;Landroid/widget/TextView;)V
    .registers 3

    .line 887
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$5;->val$entryText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 890
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$5;->val$entryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 891
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$5;->val$entryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_1d

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$5;->val$entryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 894
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$5;->val$entryText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_1d
    return v2
.end method
