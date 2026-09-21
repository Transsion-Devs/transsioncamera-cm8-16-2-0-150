.class public Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;
.super Landroid/text/SpannableStringBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    return-void
.end method

.method public static setForegroundColor(Landroid/text/SpannableStringBuilder;III)V
    .registers 5

    .line 21
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p1, 0x21

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;
    .registers 2

    .line 16
    invoke-super {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;
    .registers 2

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lcom/transsion/camera/ui/setting/liveresult/MySpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method
