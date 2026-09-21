.class Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ProEditWatermark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSLengthFilter"
.end annotation


# instance fields
.field private mInputDialogWeakReference:Ljava/lang/ref/WeakReference;

.field private mTextNum:I

.field private mToast:Landroid/widget/Toast;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/ProEditWatermark;Lcom/transsion/widgetslib/dialog/InputDialog;I)V
    .registers 4

    .line 704
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    .line 705
    invoke-direct {p0, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    if-eqz p2, :cond_10

    .line 707
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->mInputDialogWeakReference:Ljava/lang/ref/WeakReference;

    .line 708
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->mTextNum:I

    :cond_10
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 713
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 714
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 715
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 716
    iget-object p4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->mInputDialogWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz p4, :cond_37

    add-int/2addr p1, p3

    .line 717
    iget p4, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->mTextNum:I

    if-le p1, p4, :cond_37

    if-eqz p3, :cond_37

    if-eqz p2, :cond_37

    .line 718
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez p1, :cond_32

    .line 719
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->this$0:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/transsion/camera/R$string;->water_mark_text_limit_tips:I

    const/4 p4, 0x1

    invoke-static {p1, p3, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->mToast:Landroid/widget/Toast;

    .line 721
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProEditWatermark$OSLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_37
    return-object p2
.end method
