.class public final Lcom/ss/android/ugc/cut_ui/core/ITemplateService$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/core/ITemplateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic obtainTemplateSource$default(Lcom/ss/android/ugc/cut_ui/core/ITemplateService;Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;ILjava/lang/Object;)Lcom/ss/android/ugc/cut_ui/core/ITemplateSource;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 31
    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/core/ITemplateService;->obtainTemplateSource(Lcom/ss/android/ugc/cut_ui/CutSource;Ljava/lang/String;)Lcom/ss/android/ugc/cut_ui/core/ITemplateSource;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: obtainTemplateSource"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
