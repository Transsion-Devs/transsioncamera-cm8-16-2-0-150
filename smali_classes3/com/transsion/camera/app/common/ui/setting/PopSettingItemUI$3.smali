.class Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->addOnPreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)V
    .registers 2

    .line 992
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$3;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 995
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$3;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 996
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$3;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_25

    .line 998
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$3;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 999
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$3;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_25
    return v2
.end method
