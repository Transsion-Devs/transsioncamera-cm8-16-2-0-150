.class public final Lcom/ss/android/ugc/cut_ui/player/CutSameVideoConfigKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUT_SAME_VIDEO_CONFIG:Ljava/lang/String; = "cut_same_video_config"


# direct methods
.method public static final calculateCutSameVideoResolution(III)Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;
    .registers 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p1

    mul-double/2addr v2, v0

    int-to-double v0, p0

    div-double/2addr v2, v0

    if-lt p1, p0, :cond_11

    .line 36
    new-instance p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;

    int-to-double v0, p2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-direct {p0, p2, p1}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;-><init>(II)V

    return-object p0

    .line 38
    :cond_11
    new-instance p0, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;

    int-to-double v0, p2

    div-double/2addr v0, v2

    double-to-int p1, v0

    invoke-direct {p0, p1, p2}, Lcom/ss/android/ugc/cut_ui/player/CutSameVideoResolution;-><init>(II)V

    return-object p0
.end method
