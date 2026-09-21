.class public final Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic setTrackFilterIndex$default(Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)V
    .registers 7

    if-nez p6, :cond_b

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_7

    const/4 p4, 0x0

    .line 13
    :cond_7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;->setTrackFilterIndex(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setTrackFilterIndex"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
