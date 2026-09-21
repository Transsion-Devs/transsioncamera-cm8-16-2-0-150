.class public final Lcom/ss/android/ugc/cut_ui/image/IImageLoader$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/image/IImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic load$default(Lcom/ss/android/ugc/cut_ui/image/IImageLoader;Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;IIILjava/lang/Object;)Z
    .registers 9

    if-nez p7, :cond_12

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_8

    move p4, v0

    :cond_8
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_d

    move p5, v0

    .line 41
    :cond_d
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/ugc/cut_ui/image/IImageLoader;->load(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;II)Z

    move-result p0

    return p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: load"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
