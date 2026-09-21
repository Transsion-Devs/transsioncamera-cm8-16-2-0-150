.class Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils;->overrideDialogDecorViewTouchEvent(Landroid/content/Context;Landroid/app/DialogFragment;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelOutSide:Z

.field final synthetic val$cancelable:Z

.field final synthetic val$dialog:Landroid/app/DialogFragment;


# direct methods
.method constructor <init>(ZZLandroid/app/DialogFragment;)V
    .registers 4

    .line 192
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;->val$cancelable:Z

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;->val$cancelOutSide:Z

    iput-object p3, p0, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;->val$dialog:Landroid/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 194
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;->val$cancelable:Z

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;->val$cancelOutSide:Z

    if-eqz p1, :cond_21

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;->val$dialog:Landroid/app/DialogFragment;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/DialogUtils$1;->val$dialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method
