.class public Lcom/transsion/camera/feature/burstpmk/BurstPMKModeHelper;
.super Lcom/transsion/camera/feature/common/CommonModeHelper;
.source "SourceFile"


# static fields
.field private static final IMAGE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss_S_\'Panorama\'"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/CommonModeHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateTitle(J)Ljava/lang/String;
    .registers 5

    .line 25
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "\'IMG\'_yyyyMMdd_HHmmss_S_\'Panorama\'"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    .line 26
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
