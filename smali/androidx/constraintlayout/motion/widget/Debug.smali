.class public abstract Landroidx/constraintlayout/motion/widget/Debug;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    .line 90
    :catch_11
    const-string p0, "UNKNOWN"

    return-object p0
.end method
