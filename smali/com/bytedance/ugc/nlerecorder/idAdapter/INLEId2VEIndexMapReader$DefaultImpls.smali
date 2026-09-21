.class public final Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic getTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Integer;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    .line 6
    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;->getTrackFilterIndex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getTrackFilterIndex"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
