.class public final Lcom/ss/android/ugc/cut_ui/CutReporterWrapper;
.super Lcom/ss/android/ugc/cut_ui/CutReporter;
.source "SourceFile"


# instance fields
.field private final baseReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;)V
    .registers 3

    const-string v0, "baseReporter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/CutReporter;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/CutReporterWrapper;->baseReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    return-void
.end method


# virtual methods
.method public report(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 36
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutReporterWrapper;->baseReporter:Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/ugc/cut_reportor_interface/ICutReporter;->report(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
