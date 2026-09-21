.class Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OSLengthFilter"
.end annotation


# instance fields
.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mTextNum:I

.field private mTipInputMax:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 881
    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    if-eqz p1, :cond_10

    .line 883
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 884
    iput p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTextNum:I

    .line 885
    iput-object p3, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTipInputMax:Ljava/lang/String;

    :cond_10
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 892
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p4, :cond_7

    goto :goto_38

    .line 896
    :cond_7
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 898
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    if-eqz p3, :cond_38

    .line 899
    iget p4, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTextNum:I

    if-lt p2, p4, :cond_38

    if-eqz p2, :cond_38

    if-eqz p1, :cond_38

    .line 901
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTipInputMax:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_26

    return-object p1

    .line 904
    :cond_26
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mToast:Landroid/widget/Toast;

    if-nez p2, :cond_33

    .line 905
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mTipInputMax:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-static {p3, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mToast:Landroid/widget/Toast;

    .line 907
    :cond_33
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$OSLengthFilter;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_38
    :goto_38
    return-object p1
.end method
