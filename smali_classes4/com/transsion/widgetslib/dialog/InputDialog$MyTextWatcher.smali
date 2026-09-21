.class Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTextWatcher"
.end annotation


# instance fields
.field private mActiveColor:I

.field private mInputDialogWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/dialog/InputDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalColor:I

.field private mTextNum:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V
    .registers 4

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1a

    .line 448
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mInputDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 449
    iput p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    .line 450
    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mNormalColor:I
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$400(Lcom/transsion/widgetslib/dialog/InputDialog;)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mNormalColor:I

    .line 451
    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mActiveColor:I
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$500(Lcom/transsion/widgetslib/dialog/InputDialog;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mActiveColor:I

    :cond_1a
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mInputDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    if-nez v0, :cond_c

    goto/16 :goto_bd

    :cond_c
    const/4 v1, -0x1

    .line 472
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getNeedEmptyUnable()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 473
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 476
    :cond_2d
    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_ae

    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ae

    .line 477
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 478
    iget v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    const-string v2, "/"

    const-string v3, "%d"

    if-ge p1, v1, :cond_79

    .line 479
    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ae

    :cond_79
    if-ne p1, v1, :cond_ae

    if-eqz p1, :cond_ae

    .line 483
    # getter for: Lcom/transsion/widgetslib/dialog/InputDialog;->mNumText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->access$600(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    .line 484
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$MyTextWatcher;->mTextNum:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    :cond_ae
    :goto_ae
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmOSMaterialEditText()Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object p0

    if-eqz p0, :cond_bd

    .line 490
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmOSMaterialEditText()Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    :cond_bd
    :goto_bd
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
