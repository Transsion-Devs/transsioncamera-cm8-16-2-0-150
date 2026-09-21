.class public final Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic report$default(Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 9

    if-nez p7, :cond_1b

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_8

    move-object p2, v0

    :cond_8
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_d

    move-object p3, v0

    :cond_d
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_12

    move-object p4, v0

    :cond_12
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_17

    move-object p5, v0

    .line 30
    :cond_17
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;->report(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: report"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
